using System;
using System.Linq;
using System.Threading.Tasks;
using TaskTimer.Database;
using TaskTimer.Models;

namespace TaskTimer.Security
{
    public abstract class  TokenProvider : ITokenProvider
    {
        protected  IDbContext _dbContext;

        protected TokenProvider(IDbContext dbContext)
        {
            _dbContext = dbContext;
        }

        public abstract Task<AuthToken> GetCurrentToken();

        //{
        //    //var authToken = _dbContext.Token.SingleOrDefault();
        //    //if (authToken == null)
        //    //    return null;
            
        //    //if (authToken.ExpiresOn > DateTime.Now)
        //    //    return authToken.AccessToken;
        //    //var token = await _authentication.RefreshToken(authToken.RefreshToken);
        //    //OnAuthTokenReceived(token);
        //    //return token != null ? token.AccessToken : null;
            
        //    return _dbContext.Token.SingleOrDefault();
        //}

        public void DeleteCurrentToken()
        {
            _dbContext.Token.DeleteAll();
        }

        public void Save(AuthToken authToken)
        {
           _dbContext.Token.DeleteAll();
           _dbContext.Token.Add(authToken);
        }
    }
}