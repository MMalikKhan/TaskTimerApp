using System;
using System.Collections.Generic;
using TaskTimer.Models;
using Xamarin;

namespace TaskTimer.Logging
{
	public static class Insights
	{
		
		public const string ApiKey= "e3f76dd780dbbc2e79f04ceec0bbafd3564b9398";

		public static void Identify(AuthToken token)
		{
			if (string.IsNullOrEmpty(token.UserId))
				return;
			Xamarin.Insights.Identify(
				token.Email,
				new Dictionary<string, string>
				{
					{Xamarin.Insights.Traits.Email, token.Email},
					{Xamarin.Insights.Traits.FirstName, token.GivenName},
					{Xamarin.Insights.Traits.LastName, token.FamilyName},
				});
		}

		public static ITrackHandle TrackTime(string identifier, IDictionary<string, string> table = null)
		{
			return Xamarin.Insights.TrackTime(identifier, table);
		}

		public static void Report(Exception exception)
		{
			Xamarin.Insights.Report(exception);
		}
	}
}

