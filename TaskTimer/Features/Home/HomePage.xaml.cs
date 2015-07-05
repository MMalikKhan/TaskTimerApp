using Xamarin.Forms;
using System.Diagnostics;

namespace TaskTimer.Features.Home
{
    public partial class HomePage : ContentPage
    {
        public HomePage()
        {
            InitializeComponent();

            NavigationPage.SetHasBackButton(this, false);
            NavigationPage.SetHasNavigationBar(this, false);
            
            UserTaskViewList.ItemTapped += (s,e) => UserTaskViewList.SelectedItem = null;

            UserTaskViewList.ItemSelected += (sender, e) =>
            {
                if (e.SelectedItem == null) return;

                UserTaskViewList.SelectedItem = null;
            };
            
        }

    }
}
