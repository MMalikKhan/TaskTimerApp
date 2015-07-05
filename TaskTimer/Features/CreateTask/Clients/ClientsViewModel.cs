using System.Collections.ObjectModel;
using System.Linq;
using System.Threading.Tasks;
using PropertyChanged;
using PubSub;
using TaskTimer.DI;
using TaskTimer.Factories;
using TaskTimer.Features.CreateTask.UsageItems;
using TaskTimer.Messages;
using TaskTimer.Models;
using TaskTimer.ViewModels;
using Xamarin.Forms;
using System.Collections.Generic;

namespace TaskTimer.Features.CreateTask.Clients
{
    [ImplementPropertyChanged]
    public class ClientsViewModel : BaseViewModel
    {
        private readonly IReferenceDataService _referenceDataService;
        private readonly IUserPreferenceService _userPreferenceService;

        public ClientsViewModel(IReferenceDataService referenceDataService, IUserPreferenceService userPreferenceService)
        {
            _referenceDataService = referenceDataService;
            _userPreferenceService = userPreferenceService;

            BackCommand = new Command(OnBackCommandFired);
            NavigateToSettingsCommand = new Command(OnNavigateToSettingsPage);
            FilterClients = new Command<string>(async seachText => { await OnFilterClients(seachText); });
            ClientSelectedCommand = new Command<Client>(OnClientSelected);

            Init();
        }

        private void OnClientSelected(Client selectedClient)
        {
            var userTokenService = DependencyResolver.Resolve<IUserTaskService>();
            var viewModel = new UsageItemsViewModel(_referenceDataService, _userPreferenceService, userTokenService, selectedClient);
            var usageItemsPage = ViewFactory<UsageItemsPage, UsageItemsViewModel>.CreatePage(viewModel);
            this.Publish(new NavigateToPageMessage(usageItemsPage));
        }

        private async Task OnFilterClients(string searchText)
        {
            if (string.IsNullOrEmpty(searchText))
            {
                ClientsList = new ObservableCollection<Client>(localClientsList);
                return;
            }

            var filteredClients = await Task.Run(() => localClientsList.Where(client => client.ClientName.ToLower().Contains(searchText.ToLower())));
            ClientsList = new ObservableCollection<Client>(filteredClients);
        }

        private async void Init()
        {
            var user = await _userPreferenceService.GetUserByEmailId(App.CurrentLogInUser.Email);
            LocationName = user.LocationName;
            localClientsList = _referenceDataService.Clients(App.CurrentUserProfile.LocationCode);
            ClientsList = new ObservableCollection<Client>(localClientsList);
        }

        private void OnNavigateToSettingsPage(object obj)
        {
            this.Publish(new NavigateToSettingsPage());
        }

        private void OnBackCommandFired(object obj)
        {
            this.Publish(new NavigateBackMessage());
        }

        private IEnumerable<Client> localClientsList;
        public ObservableCollection<Client> ClientsList { get; set; }
        public string LocationName { get; set; }
        public Command BackCommand { get; set; }
        public Command NavigateToSettingsCommand { get; set; }
        public Command<string> FilterClients { get; set; }
        public Command<Client> ClientSelectedCommand { get; set; }
    }
}
