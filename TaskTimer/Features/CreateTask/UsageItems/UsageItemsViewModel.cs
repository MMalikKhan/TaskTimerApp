using System.Collections.ObjectModel;
using System.Linq;
using System.Threading.Tasks;
using PropertyChanged;
using PubSub;
using TaskTimer.Factories;
using TaskTimer.Features.Home;
using TaskTimer.Messages;
using TaskTimer.Models;
using TaskTimer.ViewModels;
using Xamarin.Forms;
using System.Collections.Generic;
using TaskTimer.Constants;

namespace TaskTimer.Features.CreateTask.UsageItems
{
    [ImplementPropertyChanged]
    public class UsageItemsViewModel : BaseViewModel
    {
        private readonly IReferenceDataService _referenceDataService;
        private readonly IUserPreferenceService _userPreferenceService;
        private readonly IUserTaskService _userTaskService;
        private readonly Client _selectedClient;

        public UsageItemsViewModel(IReferenceDataService referenceDataService,IUserPreferenceService userPreferenceService,  IUserTaskService userTaskService, 
            Client selectedClient)
        {
            _referenceDataService = referenceDataService;
            _userPreferenceService = userPreferenceService;
            _userTaskService = userTaskService;
            _selectedClient = selectedClient;

            Init();
        }

        private async void OnCreateTask(UsageItem selectedUsageItem)
        {
            var newTask = await GetNewTask();
            
            newTask.ClientID = _selectedClient.ClientId;
            newTask.ClientName = _selectedClient.ClientName;
            newTask.UsageItemId = selectedUsageItem.Id;
            newTask.UsageItemName = selectedUsageItem.ItemName;
            newTask.LocationCode = selectedUsageItem.LocationCode;
            newTask.Status = UserTaskStatus.Pending;
            
            this.Publish(new CreateUserTask(newTask));
            this.Publish<NavigateToHomePage>();
        }

        private async Task<UserTask> GetNewTask()
        {
            var newTask = new UserTask();

            newTask.UserEmailID = App.CurrentUserProfile.EmailId;
            newTask.LocationCode = App.CurrentUserProfile.LocationCode;
           
            return newTask;
        }    

        private async Task OnFilterClients(string searchText)
        {
            if (string.IsNullOrEmpty(searchText))
            {
                UsageItemsList = new ObservableCollection<UsageItem>(locationUsageItemslist);
                return;
            }

            var filteredClients = await Task.Run(() => locationUsageItemslist.Where(usageItem => usageItem.ItemName.ToLower().Contains(searchText.ToLower())));
            UsageItemsList = new ObservableCollection<UsageItem>(filteredClients);
        }



        private void Init()
        {
            BackCommand = new Command(OnBackCommandFired);
            NavigateToSettingsCommand = new Command(OnNavigateToSettingsPage);
            FilterItems = new Command<string>(async seachText => { await OnFilterClients(seachText); });
            CreateTaskCommand = new Command<UsageItem>(OnCreateTask);
            locationUsageItemslist = _referenceDataService.UsageItems(App.CurrentUserProfile.LocationCode);
            UsageItemsList = new ObservableCollection<UsageItem>(locationUsageItemslist);
        }

        private void OnNavigateToSettingsPage(object obj)
        {
            this.Publish(new NavigateToSettingsPage());
        }

        private void OnBackCommandFired(object obj)
        {
            this.Publish(new NavigateBackMessage());
        }

        private IEnumerable<UsageItem> locationUsageItemslist; 
        public ObservableCollection<UsageItem> UsageItemsList { get; set; }
        public Command BackCommand { get; set; }
        public Command NavigateToSettingsCommand { get; set; }
        public Command<string> FilterItems { get; set; }
        public Command<UsageItem> CreateTaskCommand { get; set; }
    }
}