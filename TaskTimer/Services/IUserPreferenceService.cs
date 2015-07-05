using System;
using System.Threading.Tasks;
using TaskTimer.Models;

namespace TaskTimer
{
    public interface IUserPreferenceService 
    {
        Task<User> GetUserByEmailId(string emailid);
        Task<User> UpdateUser(User user);
        Task<User> CreateUser(User user);
        Task<bool> DeleteUser(User user);
        Task<User> SaveUser(User user);
    }
}

