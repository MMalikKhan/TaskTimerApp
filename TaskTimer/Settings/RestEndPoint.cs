using System;
using Autofac.Core.Activators.Reflection;

namespace TaskTimer
{
	public static class RestEndpoint
	{
		public const string BaseUrl = "https://myfloor-at.servcorp.net/api/";
		public const string DurationTransactionUrl = BaseUrl + "billing/v1/usagetransactions/Duration";
		public const string LocationsAllUrl = BaseUrl + "floors/v1/locations";
        public const string UsageChargesPerLocation = BaseUrl + "products/v1/referencedata/{0}/usagecharges";//{0}LocationCode
        public const string ClientsPerLocationUrl= BaseUrl+ "myfloor/v1/myfloorclients/active/{0}";//{0}LocationCode
        public const string CreateDuration = BaseUrl + "billing/v1/usagetransactions/Duration";
        public const string ClientContact = BaseUrl + "clients/v1/clients/{0}/contact";//{0}ClientId
	}
}
