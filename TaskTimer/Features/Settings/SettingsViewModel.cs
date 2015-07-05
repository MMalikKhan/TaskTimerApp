using System;
using System.Collections.ObjectModel;
using System.Linq;
using System.Threading.Tasks;
using PropertyChanged;
using PubSub;
using TaskTimer.Constants;
using TaskTimer.DI;
using TaskTimer.Factories;
using TaskTimer.Features.Home;
using TaskTimer.Logging;
using TaskTimer.Messages;
using TaskTimer.ViewModels;
using XLabs;

namespace TaskTimer.Features.Settings
{
    [ImplementPropertyChanged]
    public class SettingsViewModel : BaseViewModel
    {

        private readonly IUserPreferenceService _userPreferenceService;
        private readonly IReferenceDataService _referenceDataService;
        public RelayCommand _saveUserCommand;

        public RelayCommand _refreshDataCommand;

        private string _locationCode;

        private Location _location;

        private ObservableCollection<Location> locationList;

        private User _userProfile;


        public SettingsViewModel()
        {
            _userPreferenceService = DependencyResolver.Resolve<IUserPreferenceService>();
            _referenceDataService = DependencyResolver.Resolve<IReferenceDataService>();
            LoadScreenData();
           // this.Subscribe<NavigateToSettingsPage>(async message =>  { await LoadScreenData(); });
        }

       
        #region properties
       

        public ObservableCollection<Location> LocationList
        {
            get
            {
                if (locationList == null)
                {
                    var enumerableLocations = _referenceDataService.Locations;
                    return locationList = new ObservableCollection<Location>(enumerableLocations);
                }
                return locationList;
            }
            set
            { 
                locationList = value; 
            }
        }

        public AppViewModel AppViewModel
        {
            get
            {
                return  DependencyResolver.Resolve<AppViewModel>();
            }
        }


        public bool CanSaveExecute
        {
            get
            {
                return !string.IsNullOrEmpty(_locationCode);
            }

        }

        public User UserProfile
        {
            get { return _userProfile; }
            set
            {
                _userProfile = value;

            }
        }


        public string LocationCode
        {
            get { return _locationCode; }
            set
            {
                if (_locationCode != value)
                {
                    _locationCode = value;
                    this.UserProfile.LocationCode = value;
                }
            }
        }


        public Location SelectedLocationItem
        {
            get { return _location; }
            set
            {
                _location = value;
                LocationCode = _location.LocationCode;
               UserProfile.LocationName = _location.Description;
            }
        }


        public string WelcomeMessage { get; set; }

        public bool IsSubmitEnabled
        {
            get{ 
                return CanSaveExecute && !IsBusy;
            }
        }

        public  bool ShoudlHideBackButton()
        {
            return (_userPreferenceService.GetUserByEmailId(App.CurrentLogInUser.Email)) == null;
        }

        #endregion

        #region Commands 

        public RelayCommand SaveUserCommand
        {
            get
            {
                return _saveUserCommand ?? new RelayCommand(
                    () => { this.SaveUser(); },
                    () => this.CanSaveExecute);
            }
        }

        public RelayCommand RefreshDataCommand
        {
            get
            {
                if (_refreshDataCommand == null)
                {
                    _refreshDataCommand = new RelayCommand(
                        () =>
                        {
                            RefreshReferenceData(true, this.UserProfile.LocationCode);
                        },
                        () => true);
                }
                return _refreshDataCommand;
            }
        }

        #endregion
      

        #region Methods


        private void NotifyAll()
        {
            OnPropertyChanged("SelectedLocationItem");
            OnPropertyChanged("UserProfile");
            OnPropertyChanged("LocationCode");
            OnPropertyChanged("LocationList");
            SaveUserCommand.RaiseCanExecuteChanged();

        }

        private async void SaveUser()
        {
            try
            {
                IsBusy = true;

                this.UserProfile = await _userPreferenceService.SaveUser(this.UserProfile);
                await RefreshReferenceData(false, this.UserProfile.LocationCode);

                IsBusy = false;

                App.CurrentUserProfile = UserProfile;

                var page = ViewFactory<HomePage, HomeViewModel>.CreatePage();

                this.Publish(new NavigateToPageMessage(page));
            }
            catch (Exception ex)
            {
                IsBusy = false;
                Insights.Report(new Exception("Error while saving user preferences", ex));
                //TODO need to have friendly messages later on exceptions
                App.RootPage.DisplayAlert(ErrorMessages.ErrorType.Error.ToString(), ex.Message, ErrorMessages.MesssageButton.Ok.ToString());
            }
        }
        private async Task<User> LoadScreenData()
        {
            if (_userProfile == null)
            {
                _userProfile = await _userPreferenceService.GetUserByEmailId(App.CurrentLogInUser.Email);

                if (_userProfile == null)
                {
                    _userProfile = new User()
                    {
                        EmailId = App.CurrentLogInUser.Email,
                        FirstName = App.CurrentLogInUser.GivenName,
                        LastName = App.CurrentLogInUser.FamilyName,
                        LocationCode = string.Empty,
                        LocationName =string.Empty,
                        LastLogin = DateTime.Now
                    };
                }
                
                SelectedLocationItem = LocationList.FirstOrDefault(c => c.LocationCode == _userProfile.LocationCode);
            }
            NotifyAll();
            return _userProfile;
           
        }

       

        public async Task<bool> RefreshReferenceData(bool loadLocationsDataAswell, string location)
        {
            bool IsSuccessful = false;
            try
            {
                IsBusy = true;
                OnPropertyChanged("IsSubmitEnabled");
                if (loadLocationsDataAswell)
                {
                    IsSuccessful = await _referenceDataService.LoadLocations();
                }
                if (!string.IsNullOrEmpty(location))
                {
                    IsSuccessful = await _referenceDataService.LoadDataByLocation(location);

                }
                if (!IsSuccessful)
                {
                    IsBusy = false;
                    await App.RootPage.DisplayAlert(ErrorMessages.ErrorType.Error.ToString(), ErrorMessages.ErrorLoadingReferenceData, ErrorMessages.MesssageButton.Ok.ToString());
                }

                IsBusy = false;
            }
            catch (Exception ex)
            {
                IsBusy = false;
                Insights.Report(new Exception("Error Loading reference data", ex));
            }
            OnPropertyChanged("IsSubmitEnabled");
            return IsSuccessful;
           
        }

        #endregion
    }
}