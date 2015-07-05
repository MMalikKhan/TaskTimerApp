using System;
using TaskTimer.Models;

namespace TaskTimer.Security
{
    public class AuthenticationResult
    {
        private readonly AuthenticationStatus _authenticationStatus;
        private readonly Exception _error;

        public AuthenticationResult(AuthToken authToken, AuthenticationStatus authenticationStatus, Exception error = null)
        {
            _authenticationStatus = authenticationStatus;
            _error = error;
            AuthToken = authToken;
        }

        public AuthToken AuthToken { get; private set; }

        public AuthenticationStatus Status
        {
            get { return _authenticationStatus; }
        }

        public Exception Error
        {
            get { return _error; }
        }
    }
}
