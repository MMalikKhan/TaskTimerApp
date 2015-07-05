using System;
using System.Windows.Input;
using PubSub;
using TaskTimer.Constants;
using TaskTimer.DI;
using TaskTimer.Logging;
using TaskTimer.Messages;
using TaskTimer.Security;
using TaskTimer.ViewModels;
using Xamarin.Forms;

namespace TaskTimer.Features.Welcome
{
    public class WelcomeViewModel : BaseViewModel
    {
        private readonly IAuthenticator _authenticator;
        private readonly ITokenProvider _tokenProvider;

        public WelcomeViewModel(IAuthenticator authenticator, ITokenProvider tokenProvider)
        {
            _authenticator = authenticator;
            _tokenProvider = tokenProvider;

            LoginCommand = new Command(ExecuteLoginCommand);

        }

        public ICommand LoginCommand { get; set; }
        public bool FirstTimeLogin { get; set; }
        public bool BypassOnAppear { get; set; }
        private async void ExecuteLoginCommand()
        {
            try
            {

                AuthenticationResult authenticationResult = await _authenticator.Login();
                
                if (authenticationResult.Status == AuthenticationStatus.Succeded)
                {
                    IsBusy = true;
                    _tokenProvider.Save(authenticationResult.AuthToken);
                    BypassOnAppear = true;

                    // load mandatory data
                    var referenceData = DependencyResolver.Resolve<IReferenceDataService>();
                    var allReferenceData = await referenceData.LoadLocations(true);
                    IsBusy = false;
                    if (allReferenceData)
                    {
                        this.Publish(new LoginSuccess(authenticationResult.AuthToken, FirstTimeLogin));
                    }
                    else
                    {
                        await App.Current.MainPage.DisplayAlert(ErrorMessages.ErrorType.Error.ToString(), ErrorMessages.ErrorLoadingReferenceData, ErrorMessages.MesssageButton.Ok.ToString());
                    }
                    return;
                }

                if (authenticationResult.Status == AuthenticationStatus.Canceled)
                {
                    IsBusy = false;
                    this.Publish<NavigateBackMessage>();
                    return;
                }

                IsBusy = false;
                this.Publish(new LoginFailed(authenticationResult));
            }
            catch (Exception ex)
            {
                IsBusy = false;
                Insights.Report(new Exception("Error while loading the application.", ex));
            }
        }
    }
}
