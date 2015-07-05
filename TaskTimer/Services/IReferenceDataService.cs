using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using TaskTimer.Models;

namespace TaskTimer
{
	public interface IReferenceDataService
	{
		Task<IEnumerable<Location>> GetLocations();
		Task<IEnumerable<Client>> GetClientByLocation(string location);
		Task<IEnumerable<UsageItem>> GetUsageItemByLocation(string location);

		IEnumerable<Location> Locations { get; }
        IEnumerable<Client> Clients(string locationCode);
        IEnumerable<UsageItem> UsageItems(string locationCode);

		Task<bool> LoadAll (bool forceLoad = false);
        Task<bool> LoadLocations (bool forceLoad = false);
        Task<bool> LoadDataByLocation (string locationCode);
        Task<bool> RefreshReferenceData(bool loadLocationData, string locationCode);
	}
}

