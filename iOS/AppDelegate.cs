using System;
using System.Collections.Generic;
using System.Linq;

using Foundation;
using TaskTimer.DI;
using TaskTimer.iOS.DI;
using UIKit;
using Xamarin.Forms;
using Xamarin.Forms.Platform.iOS;
using PubSub;
using TaskTimer.Messages;

namespace TaskTimer.iOS
{
    [Register("AppDelegate")]
    public partial class AppDelegate :UIApplicationDelegate
    {
        public override UIWindow Window
        {
            get;
            set;
        }

        public static UIViewController RootViewController { get; private set; }

        public override void FinishedLaunching(UIApplication application)
        {
            DependencyResolver.Initialize(new IOSModule(), new SharedModule());

            Forms.Init();

            new App();

            RootViewController = App.RootPage.CreateViewController();

            Window = new UIWindow(UIScreen.MainScreen.Bounds) { RootViewController = RootViewController };

            Window.MakeKeyAndVisible();

            App.Init();
            

        }

        public override void OnActivated(UIApplication application)
        {
            this.Publish<AppEnteredForegroundState>();
        }
    }
}
