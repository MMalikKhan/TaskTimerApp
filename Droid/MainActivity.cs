using Android.App;
using Android.Content.PM;
using Android.OS;
using TaskTimer.DI;
using TaskTimer.Droid.DI;
using Xamarin.Forms;
using Xamarin.Forms.Platform.Android;
using System;
using Java.Lang;
using Android.Runtime;
using PubSub;
using TaskTimer.Logging;

namespace TaskTimer.Droid
{

	[Application]
	public class AndroidApp : Android.App.Application
	{
		public AndroidApp(IntPtr javaReference, JniHandleOwnership transfer)
			: base(javaReference, transfer)
		{
		}
	}

	[Activity (Label = "Task Timer", Icon = "@drawable/icon", ConfigurationChanges = ConfigChanges.ScreenSize | ConfigChanges.Orientation)]
	public class MainActivity : FormsApplicationActivity
	{
		protected override void OnCreate (Bundle bundle)
		{
            base.OnCreate(bundle);

			Xamarin.Insights.Initialize(Insights.ApiKey,this);
            DependencyResolver.Initialize(new AndroidModule(), new SharedModule());

			//AppDomain.CurrentDomain.UnhandledException += (sender, e) => Insights.Report((Exception)e.ExceptionObject);
            Thread.DefaultUncaughtExceptionHandler = new UnCaughtExceptionHandler();

			Forms.Init (this, bundle);
            App.Init();

            //SetPage(App.RootPage);
            LoadApplication (new App());

		}

	    protected override void OnResume()
	    {
	        base.OnResume();
	        this.Publish<Messages.AppEnteredForegroundState>();
	    }
	}
}

