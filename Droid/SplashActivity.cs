

using Android.App;
using Android.OS;

namespace TaskTimer.Droid
{
	[Activity(Label = "Task Timer", Theme = "@style/Theme.Splash", Icon="@drawable/icon", MainLauncher = true, NoHistory = true)]
	public class SplashActivity : Activity
	{
		protected override void OnCreate(Bundle bundle)
		{
			base.OnCreate(bundle);
			StartActivity(typeof(MainActivity));
		}
	}
}

