using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;
using TaskTimer.Logging;
using TaskTimer.Security;

namespace TaskTimer.Services
{
	public class RestService
	{

		protected static readonly JsonSerializerSettings JsonSettings = new JsonSerializerSettings
		{
			Culture = new CultureInfo("en-AU")
		};

	    private readonly ITokenProvider _tokenProvider;

	    public RestService(ITokenProvider tokenProvider)
		{
			_tokenProvider = tokenProvider;
		}

		protected HttpClient CreateClient(string token)
		{
			var client = new HttpClient();
			client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
			client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", token);
			return client;
		}

		public async Task<IEnumerable<T>> GetAll<T>(string url)
		{
			var typeName = typeof(T).Name;

			var token = await _tokenProvider.GetCurrentToken();
			if (token == null)
				return Enumerable.Empty<T>();

			using (Xamarin.Insights.TrackTime("Get" + typeName))
			using (var client = CreateClient(token.IdToken))
			{
				var responseMessage = await client.GetAsync(url);

				if (!responseMessage.IsSuccessStatusCode)
					throw new WebException(string.Format("Error getting {0} list.{1}{2}", typeName, Environment.NewLine, responseMessage.ReasonPhrase));

				var response = await responseMessage.Content.ReadAsStringAsync();

				return JsonConvert.DeserializeObject<IEnumerable<T>>(response, JsonSettings);
			}
		}

        public async Task<T> Get<T>(string url)
        {
            var typeName = typeof(T).Name;

            var token = await _tokenProvider.GetCurrentToken();
            if (token == null)
                return default(T);

            using (Xamarin.Insights.TrackTime("Get" + typeName))
            using (var client = CreateClient(token.IdToken))
            {
                var responseMessage = await client.GetAsync(url);

                if (!responseMessage.IsSuccessStatusCode)
                    throw new WebException(string.Format("Error getting {0} object.{1}{2}", typeName, Environment.NewLine, responseMessage.ReasonPhrase));

                var response = await responseMessage.Content.ReadAsStringAsync();

                return JsonConvert.DeserializeObject<T>(response, JsonSettings);
            }
        }

		public async Task Post(string url, object entity, string description, string errorTitle)
		{
            var token = await _tokenProvider.GetCurrentToken();
			if (token == null)
				return;

			using (Insights.TrackTime(description))
			using (var client = CreateClient(token.IdToken))
			{
				var content = ToJsonContent(entity);
				var response = await client.PostAsync(url, content);

				if (!response.IsSuccessStatusCode)
					throw new WebException(errorTitle + Environment.NewLine + response.ReasonPhrase);
			}
		}

		protected static StringContent ToJsonContent(object value)
		{
			var serialized = JsonConvert.SerializeObject(value, JsonSettings);
			return new StringContent(serialized, Encoding.UTF8, "application/json");
		}

//		protected async Task Put(string url, TimesheetEntry timesheet, string description, string errorTitle)
//		{
//			var token = await _tokenProvider.GetToken();
//			if (token == null)
//				return;
//
//			using (Insights.TrackTime(description))
//			using (var client = CreateClient(token))
//			{
//				var content = ToJsonContent(timesheet);
//				var response = await client.PutAsync(url, content);
//
//				if (!response.IsSuccessStatusCode)
//					throw new WebException(errorTitle + Environment.NewLine + response.ReasonPhrase);
//			}
//		}
}
}

