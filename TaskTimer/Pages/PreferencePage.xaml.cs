using System;
using System.Collections.Generic;

using Xamarin.Forms;

namespace TaskTimer
{
	public partial class PreferencePage : BaseContentPage
	{



		public PreferencePage ()
		{
			InitializeComponent ();

			MessagingCenter.Subscribe<App> (this, "Authenticated", (sender) => {
				var st = new StackLayout();

				{
					st.Children.Add(new Label () { 
						Text = "Profile Page",
						XAlign = TextAlignment.Center,
						YAlign = TextAlignment.Center});

					st.Children.Add(new Label(){
						Text= App.Instance.Token,
						XAlign = TextAlignment.Center,
						YAlign = TextAlignment.Center
					});

					Content = st;
				};
			});


		}
	}
}

