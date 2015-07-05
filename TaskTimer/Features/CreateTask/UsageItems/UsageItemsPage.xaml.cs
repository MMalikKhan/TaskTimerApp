using TaskTimer.Features.CreateTask.Clients;
using Xamarin.Forms;

namespace TaskTimer.Features.CreateTask.UsageItems
{
    public partial class UsageItemsPage : ContentPage
    {
        public UsageItemsPage()
        {
            InitializeComponent();

            NavigationPage.SetHasNavigationBar(this, false);
        }

        private void SearchBar_OnTextChanged(object sender, TextChangedEventArgs e)
        {
            var model = BindingContext as UsageItemsViewModel;
            if(model == null) return;
            
            model.FilterItems.Execute(e.NewTextValue);
        }

        private void ItemsListView_OnItemTapped(object sender, ItemTappedEventArgs e)
        {
            var model = BindingContext as UsageItemsViewModel;
            if (model == null || e.Item == null) return;
            
            model.CreateTaskCommand.Execute(e.Item);
        }
    }
}

