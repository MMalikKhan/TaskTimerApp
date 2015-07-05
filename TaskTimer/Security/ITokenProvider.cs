using System.Threading.Tasks;
using TaskTimer.Models;

namespace TaskTimer.Security
{
    public interface ITokenProvider
    {
        Task<AuthToken> GetCurrentToken();
        void DeleteCurrentToken();
        void Save(AuthToken authToken);
    }
}