using System;
using TaskTimer.ViewModels;
using XLabs;
using TaskTimer.DI;
using System.Threading.Tasks;
using Newtonsoft.Json.Serialization;
using TaskTimer.Logging;
using TaskTimer.Security;
using PubSub;

namespace TaskTimer
{
    public class AppViewModel :BaseViewModel
    {

        private readonly ITokenProvider _tokenProvider;
        private readonly IAuthenticator _authenticator;
 
        public AppViewModel(ITokenProvider tokenProvider, IAuthenticator authenticator)
        {
            _tokenProvider = tokenProvider;
            _authenticator = authenticator;
        }


        private RelayCommand _logOutCommand;

        public  RelayCommand LogOutCommand 
        {
            get
            { 
               if(_logOutCommand==null)
                {
                    _logOutCommand = new RelayCommand(
                        () =>
                        {
                            LogOutUser();
                        }, 
                        () => true);
                }
                return _logOutCommand; 
            }
        }

        private async Task<bool> LogOutUser()
        {
            bool isSuccessful = false;
            try
            {
                
                await _authenticator.Logout();
                _tokenProvider.DeleteCurrentToken();
                this.Publish<Messages.LogoutSuccess>();

                isSuccessful = true;
            }
            catch (Exception ex)
            {

                Insights.Report(new Exception("Failed to logout", ex));
            }

            return isSuccessful;
        }


    }
}

