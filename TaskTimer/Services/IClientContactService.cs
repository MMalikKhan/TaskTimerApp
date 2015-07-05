using System.Threading.Tasks;

namespace TaskTimer.Services
{
    public interface IClientContactService
    {
        Task<Contact> GetContactBy(string clientId);
    }
}