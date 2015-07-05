using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using TaskTimer.Constants;
using TaskTimer.Database;
using TaskTimer.Models;

namespace TaskTimer.Services
{
    public class ClientContactService : IClientContactService
    {
        private readonly RestService _restService;

        public ClientContactService(RestService restService)
        {
            _restService = restService;
        }

        public async Task<Contact> GetContactBy(string clientId)
        {
            try
            {
                var clientResult = await _restService.Get<Contact>(string.Format(RestEndpoint.ClientContact, clientId));
                return clientResult;
            }
            catch
            {
                return null;
            }
        }
    }
}

