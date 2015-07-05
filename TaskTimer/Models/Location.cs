using System;
using TaskTimer.Database;
using Newtonsoft.Json;

namespace TaskTimer
{
	public class Location : IEntity
	{
		[JsonProperty("Id")]
		public string LocationId { get; set;}
		[JsonProperty("Code")]
		public string LocationCode  { get; set;}
		[JsonProperty("Description")]
		public string Description  { get; set;}

		public object GetIdentifier()
		{
			return LocationId;
		}

        public override string ToString() 
        {
            return Description;
        }
	}
}