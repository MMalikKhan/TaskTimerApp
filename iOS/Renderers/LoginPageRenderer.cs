using System;
using Xamarin.Forms.Platform.iOS;
using Xamarin.Forms;
using Auth0.SDK;
using System.Threading.Tasks;
using UIKit;
using TaskTimer.iOS;
using TaskTimer;


[assembly: ExportRenderer (typeof (LoginPage), typeof (LoginPageRenderer))]
namespace TaskTimer.iOS
{
		public class LoginPageRenderer : PageRenderer
		{
			public LoginPageRenderer ()
			{
			}

			private UIView _nativeView;
			private LoginPage _page;
			private bool _cancelledByUser = false;
			private bool _justLoggedIn = false;




			protected override void OnElementChanged(VisualElementChangedEventArgs e)
			{
				base.OnElementChanged(e);
				_page = e.NewElement as LoginPage;
				_nativeView = NativeView;

			  //App.Instance.NavigationPage.PopAsync ();

			}

			public override void ViewDidLoad()
			{
				base.ViewDidLoad();
			}

			public override async void ViewDidDisappear(bool animated)
			{
				base.ViewDidDisappear(animated);
				_cancelledByUser = false;
				_justLoggedIn = false;
			    //await App.Instance.NavigationPage.PopAsync();
			}


			public override async void ViewDidAppear(bool animated)
			{
				base.ViewDidAppear(animated);
				if (_cancelledByUser || _justLoggedIn) return;
				Auth0Client auth0Client = null;
				//IdentityService identityService = null;
				if (_nativeView == null) return;
				var message = String.Empty;
				try
				{
					auth0Client = new Auth0Client(App.Instance.OAuthSettings.Domain, App.Instance.OAuthSettings.ClientId);//SimpleIoc.Default.GetInstance<Auth0Client>();
					//identityService = SimpleIoc.Default.GetInstance<IIdentityService>() as IdentityService;
					//if (identityService == null) return;
				 var user = await auth0Client.LoginAsync(ViewController, "servcorp.adfs.prod", true);


					_justLoggedIn = true;
				    

					//					if (eventArgs.IsAuthenticated) {
					//						// Use eventArgs.Account to do wonderful things
					App.Instance.SaveToken(user.Auth0AccessToken);

				    App.Instance.SuccessfulLoginAction.Invoke();
					//					} else {
					//						// The user cancelled
					//					}
				}
				catch (System.Threading.Tasks.TaskCanceledException cancelException)
				{
				App.Instance.FailureLoginAction.Invoke();
				//await App.Instance.NavigationPage.Navigation.PushModalAsync (new StartPage());
				MessagingCenter.Send<App> (App.Instance, "AuthenticationFailed");

					if (cancelException.Task != null &&
						cancelException.Task.Status == TaskStatus.Canceled)
						_cancelledByUser = true;
					message = cancelException.Message;
				App.Instance.ErrorMessage = message;
				App.Instance.NavigationPage.PopToRootAsync ().Wait();
				}
				catch (Exception exception)
				{
					message = exception.Message;
					//throw;
				}

				//if (identityService != null) identityService.SetIdentity(auth0Client, _cancelledByUser, message);
			}
		}


}

