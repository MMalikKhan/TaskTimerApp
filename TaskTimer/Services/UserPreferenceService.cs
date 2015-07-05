using System;
using TaskTimer.Database;
using System.Threading.Tasks;
using System.Linq;

namespace TaskTimer
{
    public class UserPreferenceService : IUserPreferenceService
    {
		private readonly IDbContext _dbContext;
        public UserPreferenceService(IDbContext dbcontext)
        {
            _dbContext = dbcontext;
        }


        #region IUserPreferenceService implementation
        public async Task<User> GetUserByEmailId(string emailid)
        {
            var  user = _dbContext.User.GetById(emailid);

            return await Task.FromResult(user);
        }
        public  async Task<User> UpdateUser(User user)
        {
             _dbContext.User.Update(user);
            return await Task.FromResult(user);
        }
        public async Task<User> CreateUser(User user)
        {
                _dbContext.User.Add(user);
            return await GetUserByEmailId(user.EmailId);
        }
        public async Task<bool> DeleteUser(User user)
        {
             _dbContext.User.Delete(user);

            return await Task.FromResult(true);
        }

        public async Task<User> SaveUser(User user)
        {
            if (GetUserByEmailId(user.EmailId).Result == null)
            {
                _dbContext.User.Add(user);
            }
            else
            {
                _dbContext.User.Update(user);
            }
            return await GetUserByEmailId(user.EmailId);
        }
        #endregion
    }
}

