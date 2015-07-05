using System;
using System.Collections.Generic;

using Xamarin.Forms;

namespace TaskTimer
{
	public partial class StartPage : ContentPage
	{
		public StartPage ()
		{
			
			InitializeComponent ();
			//this.BackgroundImage = Resources


			imglogin.GestureRecognizers.Add((new TapGestureRecognizer
				{
				
				    Command = new Command(async (o) =>
					{
							await Navigation.PushAsync(new LoginPage());
						//Console.WriteLine("test");
					}),
				
					CommandParameter = imglogin,
				}));
		  }
	}
}

