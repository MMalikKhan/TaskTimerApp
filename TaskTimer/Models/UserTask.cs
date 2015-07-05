using System;
using System.Threading.Tasks;
using TaskTimer.Database;
using PropertyChanged;
using Newtonsoft.Json;
using SQLite;
using TaskTimer.Services;


namespace TaskTimer
{
    [ImplementPropertyChanged]
    public class UserTask : IEntity
    {
        [PrimaryKey, AutoIncrement]
        public int UserTaskID { get; set; }

        public string UserEmailID { get; set; }

        //Status  => Open, Pending, Active, Paused, Completed
        public int Status { get; set; }

        [JsonProperty("ItemId")]
        public string UsageItemId { get; set; }

        [JsonProperty("name")]
        public string UsageItemName { get; set; }
        public string Notes { get; set; }
        public string TeamMemberComments { get; set; }
        public string LocationCode { get; set; }
        public string ClientID { get; set; }

        [JsonProperty("CompanyName")]
        public string ClientName { get; set; }
        public string RequestedBy { get; set; }
        public DateTime StartDateTime { get; set; }
        public DateTime EndDateTime { get; set; }
        public double ElapsedTimeInSeconds { get; set; }
        public object GetIdentifier()
        {
            return UserTaskID;
        }
    }
}

