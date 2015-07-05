using System;
using Newtonsoft.Json;
using SQLite;
using TaskTimer.Database;

namespace TaskTimer.Models
{
    public class AuthToken : IEntity
    { 
        public string IdToken { get; set; }

        [JsonProperty("created_at")]
        public DateTime CreatedAt { get; set; }

        [JsonProperty("nickname")]
        public string NickName { get; set; }

        [JsonProperty("picture")]
        public string Picture { get; set; }
        public DateTime ExpiresOn { get; set; }
        public string AccessToken { get; set; }
        public string RefreshToken { get; set; }
        
        [JsonProperty("clienID")]
        public string ClientId { get; set; }

        [JsonProperty("user_id")]
        [PrimaryKey]
        public string UserId { get; set; }

        [JsonProperty("email_verified")]
        public bool EmailVerified { get; set; }

        [JsonProperty("name")]
        public string Name { get; set; }
        
        [JsonProperty("email")]
        public string Email { get; set; }

        [JsonProperty("family_name")]
        public string FamilyName { get; set; }
        
        [JsonProperty("given_name")]
        public string GivenName { get; set; }

        public object GetIdentifier()
        {
            return UserId;
        }
    }
}