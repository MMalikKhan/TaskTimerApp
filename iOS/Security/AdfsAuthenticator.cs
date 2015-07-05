using System;
using System.Diagnostics;
using System.Threading.Tasks;
using Auth0.SDK;
using Newtonsoft.Json;
using TaskTimer.Logging;
using TaskTimer.Models;
using TaskTimer.Security;
using Xamarin.Forms;

namespace TaskTimer.iOS.Security
{
    public class AdfsAuthenticator : IAuthenticator
    {
        private readonly Auth0Client _client;

        public AdfsAuthenticator(Auth0Client client)
        {
            _client = client;
        }

        public async Task<AuthenticationResult> Login()
        {
            try
            {
                var authUser = await _client.LoginAsync(AppDelegate.RootViewController, Auth0Settings.AdfsConnection, true, "openid email name nickname given_name family_name");

                var authToken = authUser.Profile.ToObject<AuthToken>();

                authToken.IdToken = authUser.IdToken;
                authToken.AccessToken = authUser.Auth0AccessToken;
                authToken.RefreshToken = authUser.RefreshToken;

                Insights.Identify(authToken);

                return new AuthenticationResult(authToken, AuthenticationStatus.Succeded);
            }
            catch (TaskCanceledException cancelException)
            {
                AuthenticationStatus authenticationStatus = AuthenticationStatus.Failed;

                if (cancelException.Task != null && cancelException.Task.Status == TaskStatus.Canceled)
                    authenticationStatus = AuthenticationStatus.Canceled;

                return new AuthenticationResult(null, authenticationStatus, cancelException);
            }
            catch (Exception exception)
            {
                Insights.Report(exception);
                return new AuthenticationResult(null, AuthenticationStatus.Failed, exception);
            }
        }

        public async Task Logout()
        {
            await Task.Run(() => _client.Logout());
        }

        public async Task<string> RefreshToken(string refreshToken)
        {
            var result = await _client.RefreshToken(refreshToken).ConfigureAwait(false);
            return result["id_token"] == null ? string.Empty : result["id_token"].ToString();
        }
    }
}