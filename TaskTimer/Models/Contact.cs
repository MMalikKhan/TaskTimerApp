using Newtonsoft.Json;

namespace TaskTimer.Services
{
    public class Contact
    {
        [JsonProperty("Name")]
        public string Name { get; set; }
        
        [JsonProperty("EmailAddress")]
        public string EmailAddress { get; set; }

    }
}