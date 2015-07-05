using System;
using System.Threading.Tasks;
using Android.App;
using Auth0.SDK;
using TaskTimer.Logging;
using TaskTimer.Models;
using TaskTimer.Security;

namespace TaskTimer.Droid.Security
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

				var authUser = await _client.LoginAsync(new AndroidLoginPage().Context, Auth0Settings.AdfsConnection, true);

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
                return new AuthenticationResult(null, AuthenticationStatus.Failed, exception);
            }
        }

        public async Task<string> RefreshToken(string refreshToken)
        {
            var result = await _client.RefreshToken(refreshToken);
            return result["id_token"] == null ? string.Empty : result["id_token"].ToString();
        }

        public async Task Logout()
        {
            await Task.Run(() => _client.Logout());
        }
    }
}