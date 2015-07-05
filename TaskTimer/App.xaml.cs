using System;
using System.Threading.Tasks;
using PubSub;
using TaskTimer.DI;
using TaskTimer.Factories;
using TaskTimer.Features.Home;
using TaskTimer.Features.Settings;
using TaskTimer.Features.Welcome;
using TaskTimer.Logging;
using TaskTimer.Messages;
using TaskTimer.Models;
using TaskTimer.Security;
using Xamarin.Forms;
using System.Linq;
using TaskTimer.Modals;

namespace TaskTimer
{
	public partial class App : Application
	{

		public App()
		{
			InitializeComponent ();
			// The root page of your application
			MainPage = RootPage;
			//Init ();
		}


		public static void Init()
		{
			InitNavigation();
		}

		private static void InitNavigation()
        {
            var navigation = RootPage.Navigation;
            RootPage.Subscribe<NavigateBackMessage>(async delegate
                {
                    await navigation.PopAsync();
                });

            RootPage.Subscribe<NavigateToPageMessage>(
                async message =>
                {
                    if (message.IsModal)
                    {
                        await navigation.PushModalAsync(message.Page, true);
                        return;
                    }
                    await navigation.PushAsync(message.Page, true);
                });

            RootPage.Subscribe<NavigateToSettingsPage>(async message => await navigation.PushAsync(message.Page, true));

            RootPage.Subscribe<LoginSuccess>(async message =>
                {
                    if (CurrentUserProfile == null)
                    {
                        await navigation.PopToRootAsync();

                        RootPage.Publish(new NavigateToSettingsPage());
                        return;
                    }

                    await navigation.NavigateToPage<HomePage,HomeViewModel>();
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
            RootPage.Subscribe<LogoutSuccess>(async message =>
                {
                    await navigation.NavigateToPage<WelcomePage,WelcomeViewModel>();
                });

            RootPage.Subscribe<CloseModal>(async message =>
                {
                    await navigation.PopModalAsync(true);
                });
            RootPage.Subscribe<NavigateToHomePage>(async message =>
                {
                    await navigation.NavigateToPage<HomePage,HomeViewModel>();
                });

            RootPage.Subscribe<ShowLoading>(async message =>
            {
                var loadingPage = new Loading();
                await navigation.PushModalAsync(loadingPage, true);
            });

            RootPage.Subscribe<HideLoading>(async message =>
            {
                await navigation.PopToRootAsync(true);
            });
        }

		static App _current;
		public static App CurrentApp {
			get{ 
				return _current ?? (_current = new App());
			}
		}


		static private  NavigationPage _rootNavigationPage;
		public static NavigationPage RootPage
		{
			get
			{
				if (_rootNavigationPage == null)
				{
                    var page = CurrentLogInUser == null ? ViewFactory<WelcomePage, WelcomeViewModel>.CreatePage() as Page :
                    ViewFactory<HomePage, HomeViewModel>.CreatePage();

                    if (CurrentLogInUser!=null && CurrentUserProfile == null)
                    {
                        page =  ViewFactory<SettingsPage, SettingsViewModel>.CreatePage() as Page;  
                    }
                    _rootNavigationPage = new NavigationPage(page);
                    _rootNavigationPage.BarBackgroundColor = Color.FromHex("202022");
                    _rootNavigationPage.BarTextColor = Color.White;
				}
				return _rootNavigationPage;
			}
		}

		private static AuthToken _authToken;
		public static AuthToken CurrentLogInUser
		{
			get{ 
				if (_authToken == null)
				{
					var tokenService = DependencyResolver.Resolve<ITokenProvider>();
					_authToken = tokenService.GetCurrentToken().ConfigureAwait(false).GetAwaiter().GetResult();
					return _authToken;
				}
				return _authToken;
			}
		}

        private static User _userProfile;
        public static User CurrentUserProfile
        {
         
            get
            {
                if (_userProfile == null)
                {
                    if (CurrentLogInUser != null)
                    {
                        var userService = DependencyResolver.Resolve<IUserPreferenceService>();
                        _userProfile = Task.Run(async () => await userService.GetUserByEmailId(CurrentLogInUser.Email)).Result;
                        return _userProfile;
                    }
                }
                return _userProfile;
            }

            set{ _userProfile = value; }

        }
	}
}