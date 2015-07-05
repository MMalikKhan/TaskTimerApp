using Newtonsoft.Json;
using PropertyChanged;
using TaskTimer.Database;

namespace TaskTimer.Models
{
    [ImplementPropertyChanged]
	public class Client : IEntity
	{

		[JsonProperty("LocationCode")]
		public string LocationCode {
			get;
			set;
		}
		[JsonProperty("Id")]
		public string ClientId {
			get;
			set;
		}

		[JsonProperty("CompanyName")]
		public string ClientName {
			get;
			set;
		}

		public object GetIdentifier()
		{
			return ClientId;
		}
	}
}

