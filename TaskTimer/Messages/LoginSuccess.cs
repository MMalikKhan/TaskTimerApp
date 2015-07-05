using TaskTimer.Models;

namespace TaskTimer.Messages
{
    class LoginSuccess
    {
        public  bool FirstTimeLogin { get; set; }
        public AuthToken LoggedAuthToken { get; private set; }
        public LoginSuccess(AuthToken authToken, bool firstTimeLogin)
        {
            FirstTimeLogin = firstTimeLogin;
            LoggedAuthToken = authToken;
        }
    }
}
