using PubSub;
using TaskTimer.DI;
using TaskTimer.Features.Home;
using TaskTimer.Messages;
using TaskTimer.Models;
using TaskTimer.Security;
using Xamarin.Forms;

namespace TaskTimer.Features.Welcome
{
    public partial class WelcomePage : ContentPage
    {
        public WelcomePage()
        {
            InitializeComponent();
            NavigationPage.SetHasNavigationBar(this, false);

        }

        protected override bool OnBackButtonPressed()
        {
            return true;
        }

        protected override void OnAppearing()
        {
            // NavigateToHomePageIfLoggedIn();
        }

        private async void  NavigateToHomePageIfLoggedIn()
        {
            var viewModel = BindingContext as WelcomeViewModel;
            if (viewModel == null)
            {
                return;
            }

            if (viewModel.BypassOnAppear)
            {
                return;
            }

            base.OnAppearing();

            AuthToken currentAuthToken = await DependencyResolver.Resolve<ITokenProvider>().GetCurrentToken();
            
            if (currentAuthToken == null)
            {
                viewModel.FirstTimeLogin = true;
                return;
            }

            this.Publish(new LoginSuccess(currentAuthToken, false));
        }
    }
}
