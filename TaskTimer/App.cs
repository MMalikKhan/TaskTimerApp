using PubSub;
using TaskTimer.Factories;
using TaskTimer.Features.Home;
using TaskTimer.Features.Preferences;
using TaskTimer.Features.Welcome;
using TaskTimer.Messages;
using Xamarin.Forms;
using TaskTimer.DI;
using System.Threading.Tasks;
using System;
using TaskTimer.Models;
using TaskTimer.Security;

namespace TaskTimer
{
    public class App : Application
    {

        public App()
        {
            // The root page of your application
            MainPage = RootPage;
        }

        protected override void OnStart()
        {
            // Handle when your app starts
        }

        protected override void OnSleep()
        {
            // Handle when your app sleeps
        }

        protected override void OnResume()
        {
            // Handle when your app resumes
        }

        public static void Init()
        {
            InitNavigation();
        }

      
        private static void InitNavigation()
        {
            var navigation = RootPage.Navigation;
           
            RootPage.Subscribe<NavigateBackMessage>(async delegate { await navigation.PopAsync(); });

            RootPage.Subscribe<NavigateToPageMessage>(
                message =>
                {
                    navigation.PushAsync(message.Page, true);
                });

            RootPage.Subscribe<LoginSuccess>(async message =>
            {
				var pageToNaviagte = message.FirstTimeLogin ?
	                    ViewFactory<PreferencesPage, PreferencesViewModel>.CreatePage() as Page
	                    : ViewFactory<HomePage, HomeViewModel>.CreatePage();
	                
                await navigation.PopToRootAsync();
                await navigation.PushAsync(pageToNaviagte, true);

            });

            RootPage.Subscribe<LoginCanceled>(async message =>
            {
                await navigation.PushAsync(new WelcomePage());
            });

            RootPage.Subscribe<LoginFailed>(
                async (x) =>
                {
                    await RootPage.DisplayAlert("Login failed", "Login failed !", "Ok");
                });
            RootPage.Subscribe<LogoutSuccess>(message =>
            {
                navigation.PopToRootAsync(true);
            });
        }

		public static async Task<bool> LoadReferenceData()
		{
			bool IsSuccessful = false;
			try
			{
				var referenceDataservice = DependencyResolver.Resolve<IReferenceDataService>();
                IsSuccessful = await referenceDataservice.LoadLocations();
				if (!IsSuccessful)
				{
                    await RootPage.DisplayAlert(ErrorMessages.ErrorType.Error.ToString(), ErrorMessages.ErrorLoadingReferenceData, ErrorMessages.MesssageButton.Ok.ToString());
				}
			}
			catch (Exception ex)
			{
				Insights.Report(new Exception("Error Loading reference data",ex));
			}
			return IsSuccessful;
		}


        private static NavigationPage _rootNavigationPage;
        public static NavigationPage RootPage
        {
            get
            {
                return _rootNavigationPage ?? (_rootNavigationPage = new NavigationPage(ViewFactory<WelcomePage, WelcomeViewModel>.CreatePage()));
            }
        }

        private static AuthToken _authToken;
        public static AuthToken CurrentLogInUser
        {
            get{ 
                if (_authToken == null)
                {
                    var tokenService = DependencyResolver.Resolve<ITokenProvider>();
                    _authToken = tokenService.GetCurrentToken().Result;
                    return _authToken;
                }
                return _authToken;
            }
        }
    }
}

