using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;
using TaskTimer.Database;

namespace TaskTimer.Models
{
    public class UsageItem : IEntity
    {
		[JsonProperty("locationcode")]
		public string LocationCode {
			get;
			set;
		}

		[JsonProperty("ItemId")]
		public string Id { get; set;}

		[JsonProperty("name")]
		public string ItemName {
			get;
			set;
		}

		[JsonProperty("expired")]
		public bool Expired {
			get;
			set;
		}

		[JsonProperty("unitprice")]
		public double UnitPrice{ get; set;}

		[JsonProperty("uom")]
		public string UnitOfMeasure { get; set; }

		[JsonProperty("chargetype")]
		public string ChargeType{ get; set;}

		public object GetIdentifier()
		{
			return Id;
		}
    }
}

// classes used to retreive JSON data..

public class UsageCharge
{
	public string id { get; set; }
	public string locationCode { get; set; }
	public string productCatalogSku { get; set; }
	public string ratePlanId { get; set; }
	public string ratePlanName { get; set; }
	public string ratePlanDescription { get; set; }
	public string name { get; set; }
	public object description { get; set; }
	public string myFloorId { get; set; }
	public string chargeModel { get; set; }
	public double priceAmount { get; set; }
	public string priceCurrencyCode { get; set; }
	public string uom { get; set; }
	public string createdDateUtc { get; set; }
	public object expiredDateUtc { get; set; }
	public bool   expired { get; set; }
	public object updatedDateUtc { get; set; }
}

public class UsageChargeConfig
{
	public string chargeCategory { get; set; }
	public string uom { get; set; }
	public string myFloorChargeId { get; set; }
	public string item { get; set; }
	public string unit { get; set; }
	public string chargeType { get; set; }
}

public class Usages
{
	public UsageCharge usageCharge { get; set; }
	public UsageChargeConfig usageChargeConfig { get; set; }
}