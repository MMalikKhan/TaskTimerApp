using Xamarin.Forms;

namespace TaskTimer.Features.CreateTask.Clients
{
    public partial class ClientsPage : ContentPage
    {
        public ClientsPage()
        {
            InitializeComponent();

            NavigationPage.SetHasNavigationBar(this, false);
        }

        private void SearchBar_OnTextChanged(object sender, TextChangedEventArgs e)
        {
            var model = BindingContext as ClientsViewModel;
            if(model == null) return;
            model.FilterClients.Execute(e.NewTextValue);
        }

        private void ClientsListView_OnItemTapped(object sender, ItemTappedEventArgs e)
        {
            var model = BindingContext as ClientsViewModel;
            if (model == null || e.Item == null) return;
            
            model.ClientSelectedCommand.Execute(e.Item);
        }
    }
}

