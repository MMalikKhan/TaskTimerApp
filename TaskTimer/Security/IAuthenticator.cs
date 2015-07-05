using System.Threading.Tasks;
using TaskTimer.Models;
using Xamarin.Forms;

namespace TaskTimer.Security
{
    public interface IAuthenticator
    {
        Task<AuthenticationResult> Login();
        Task Logout();
        Task<string> RefreshToken(string refreshToken);
    }
}
