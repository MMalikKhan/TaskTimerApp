using System;
using Xamarin.Forms.Platform.Android;
using Xamarin.Forms;
using Xamarin.Auth;
using TaskTimer.Droid;
using TaskTimer;
using Android.App;
using Auth0.SDK;
using System.Threading.Tasks;

[assembly: ExportRenderer (typeof (LoginPage), typeof (LoginPageRenderer))]
namespace TaskTimer.Droid
{
	public class LoginPageRenderer : PageRenderer
	{

		private View _nativeView;
		//private LoginPage _page;
		private bool _cancelledByUser = false;
		private bool _justLoggedIn = false;

	
//		public override void ViewDidLoad ()
//		{
//			
//		}
	
   protected override async void OnElementChanged (ElementChangedEventArgs<Page> e)
	{
			base.OnElementChanged(e);

			if (_cancelledByUser || _justLoggedIn) return;


			Auth0Client auth0Client = null;
			//IdentityService identityService = null;
			//if (_nativeView == null) return;
			var message = String.Empty;
			try
			{
				auth0Client = new Auth0Client(App.Instance.OAuthSettings.Domain, App.Instance.OAuthSettings.ClientId);//SimpleIoc.Default.GetInstance<Auth0Client>();
				//identityService = SimpleIoc.Default.GetInstance<IIdentityService>() as IdentityService;
				//if (identityService == null) return;
				var user = await auth0Client.LoginAsync(this.Context, "servcorp.adfs.prod", true);

				_justLoggedIn = true;
				App.Instance.SuccessfulLoginAction.Invoke();

				//					if (eventArgs.IsAuthenticated) {
				//						// Use eventArgs.Account to do wonderful things
				App.Instance.SaveToken(user.Auth0AccessToken);
				//					} else {
				//						// The user cancelled
				//					}
			}
			catch (System.Threading.Tasks.TaskCanceledException cancelException)
			{
				if (cancelException.Task != null &&
					cancelException.Task.Status == TaskStatus.Canceled)
					_cancelledByUser = true;
				message = cancelException.Message;
			}
			catch (Exception exception)
			{
				message = exception.Message;
				//throw;
			}
	}
}


}

