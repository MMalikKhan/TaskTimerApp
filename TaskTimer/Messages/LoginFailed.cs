using TaskTimer.Models;
using TaskTimer.Security;

namespace TaskTimer.Messages
{
    public class LoginFailed
    {
        public readonly AuthenticationResult _authenticationResult;

        public LoginFailed(AuthenticationResult authenticationResult)
        {
            _authenticationResult = authenticationResult;
        }

        public AuthenticationResult AuthenticationResult
        {
            get { return _authenticationResult; }
        }
    }
}
