using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using TaskTimer.Constants;
using TaskTimer.Database;
using TaskTimer.Logging;
using TaskTimer.Models;
using TaskTimer.Settings;

namespace TaskTimer.Services
{
	public class ReferenceDataService : IReferenceDataService
	{
	    private readonly RestService _restService;
	    private readonly IDbContext _dbContext;

	
		private IEnumerable<Location> _locations;

		public ReferenceDataService(RestService restService, IDbContext dbContext)
		{
		    _restService = restService;
		    _dbContext = dbContext;
		}

	    public async Task<IEnumerable<Location>> GetLocations()
		{
            return (await _restService.GetAll<Location>(RestEndpoint.LocationsAllUrl))
				.OrderBy(t => t.Description);
		}

		private async Task<IEnumerable<Usages>> GetUsageByLocation(string location)
		{
			return (await _restService.GetAll<Usages>(string.Format(RestEndpoint.UsageChargesPerLocation,location)));
		}

		public async Task<IEnumerable<UsageItem>> GetUsageItemByLocation(string location)
		{
			var usages = await GetUsageByLocation (location);
			return FlattenItemUsageList (usages).OrderBy(c=>c.ItemName);
		}

		public async Task<IEnumerable<Client>> GetClientByLocation(string location)
		{
            return (await _restService.GetAll<Client>(string.Format(RestEndpoint.ClientsPerLocationUrl,location)))
				.OrderBy(t => t.ClientName);
		}

		private IEnumerable<UsageItem> FlattenItemUsageList(IEnumerable<Usages> usages)
		{
			var durationItems =  usages.Where(c=>c.usageChargeConfig.chargeType.ToLower() == Configurations.TransactionChargeType)
				.Select(c=> new UsageItem
					{
						LocationCode= c.usageCharge.locationCode, 
						ChargeType = c.usageChargeConfig.chargeType, 
						UnitOfMeasure = c.usageCharge.uom, 
						UnitPrice = c.usageCharge.priceAmount, 
						ItemName = c.usageCharge.name , 
						Expired= c.usageCharge.expired, 
						Id = c.usageCharge.id });
			
			return durationItems;
		}
			

		private async Task<IEnumerable<UsageItem>> LoadUsageItemDataAsyn(string location)
		{
			var UsageItems = await GetUsageItemByLocation (location);

            if (UsageItems != null && UsageItems.Any())
            {
                _dbContext.DeleteByExpression<UsageItem>(c => c.LocationCode == location);
            }

			foreach (var item in UsageItems) {
                if(!item.Expired)
				_dbContext.UsageItem.Add (item);
			}

			return UsageItems.OrderBy(c=>c.ItemName);

		}

		private async Task<IEnumerable<Client>> LoadClientDataAsyn(string location)
		{
			var clients = await GetClientByLocation (location);

            if (clients != null && clients.Any())
            {
                _dbContext.DeleteByExpression<Client>(c => c.LocationCode == location);
            }

			foreach (var item in clients) {
				item.LocationCode = location;
				_dbContext.Client.Add (item);
			}

			return clients;
		}

		public async Task<bool>LoadAll(bool forceLoad = false)
		{
			bool taskStatus = false;
			try{
                if(forceLoad || this.Locations.Any())
				{
					var locations = await GetLocations ();
			
                    if (locations.Any()) {
							_dbContext.Location.DeleteAll ();
							_dbContext.Client.DeleteAll();
							_dbContext.UsageItem.DeleteAll();

						foreach (var location in locations) {
								
							_dbContext.Location.Add (location);
							var loadclientTask = LoadClientDataAsyn (location.LocationCode);
							var loadusageTask = LoadUsageItemDataAsyn (location.LocationCode);
							await Task.WhenAll (new Task[]{ loadclientTask, loadusageTask });
							_locations=null;
						}
					}
				}
				taskStatus = true;
			}
			catch(Exception ex) {
				_dbContext.Location.DeleteAll ();
				_dbContext.Client.DeleteAll ();
				_dbContext.UsageItem.DeleteAll ();
				Xamarin.Insights.Report (new Exception ("Error while loading Reference Data", ex));
				taskStatus = false;
			}
			return taskStatus;
		}

        public async Task<bool>LoadLocations(bool forceLoad = false)
        {
            bool taskStatus = false;
            try{
                if(forceLoad || this.Locations.Count() == 0)
                {
                    var locations = await GetLocations ();

                    if (locations.Any()) {

                        _dbContext.Location.DeleteAll ();
                        foreach (var location in locations) {

                            _dbContext.Location.Add (location);
                            _locations=null;
                        }
                    }
                }
                taskStatus = true;
            }
            catch(Exception ex) {
                _dbContext.Location.DeleteAll ();
                _dbContext.Client.DeleteAll ();
                _dbContext.UsageItem.DeleteAll ();
                Xamarin.Insights.Report (new Exception ("Error while loading Reference Data", ex));
                taskStatus = false;
            }
            return taskStatus;
        }

        public async Task<bool>LoadDataByLocation(string locationCode)
        {
            bool taskStatus = false;
            try{
                var loadclientTask = LoadClientDataAsyn (locationCode);
                var loadusageTask = LoadUsageItemDataAsyn (locationCode);
                await Task.WhenAll (new Task[]{ loadclientTask, loadusageTask });
              
                taskStatus = true;
            }
            catch(Exception ex) {
                _dbContext.Client.DeleteAll ();
                _dbContext.UsageItem.DeleteAll ();
                Xamarin.Insights.Report (new Exception ("Error while loading Reference Data", ex));
                taskStatus = false;
            }
            return taskStatus;
        }

		public IEnumerable<Location> Locations { 
			get {
				if (_locations == null)
                    _locations = _dbContext.Location;
				return _locations;
			} 
		}



        public IEnumerable<UsageItem> UsageItems(string locationCode) 
        { 
            return _dbContext.UsageItem.Where(c=>c.LocationCode== locationCode);

		}


        public IEnumerable<Client> Clients(string locationCode) 
        { 
           return _dbContext.Client.Where(c=>c.LocationCode== locationCode);
		}

        public async Task<bool> RefreshReferenceData(bool loadLocationsDataAswell,string location){
            bool IsSuccessful = false;
            try
            {
              
                if(loadLocationsDataAswell)
                {
                    IsSuccessful = await LoadLocations();
                }
                if(!string.IsNullOrEmpty(location))
                {
                    await LoadDataByLocation(location);
                }
                if (!IsSuccessful)
                {
                    await App.RootPage.DisplayAlert(ErrorMessages.ErrorType.Error.ToString(), ErrorMessages.ErrorLoadingReferenceData, ErrorMessages.MesssageButton.Ok.ToString());
                }
            }
            catch (Exception ex)
            {
                Insights.Report(new Exception("Error Loading reference data",ex));
            }
            return IsSuccessful;

        }
	}
}

