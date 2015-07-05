using System.Linq;
using System.Threading.Tasks;
using Auth0.SDK;
using TaskTimer.Database;
using TaskTimer.Logging;
using TaskTimer.Models;
using TaskTimer.Security;
using System;

namespace TaskTimer.iOS.Security
{
    public class TokenProvider : TaskTimer.Security.TokenProvider
    {
        private readonly IAuthenticator _authenticator;

        public TokenProvider(IDbContext dbContext, IAuthenticator authenticator)
            : base(dbContext)
        {
            _authenticator = authenticator;
        }

        public override async Task<AuthToken> GetCurrentToken()
        {
            var authToken = _dbContext.Token.SingleOrDefault();

            if (authToken == null)
                return null;

            if (TokenValidator.HasExpired(authToken.IdToken))
            {
                var idToken = await _authenticator.RefreshToken(authToken.RefreshToken).ConfigureAwait(false);

                _dbContext.Token.DeleteAll();

                authToken.IdToken = idToken;
                _dbContext.Token.Add(authToken);
            }
            Insights.Identify(authToken);

            return authToken;
        }
    }
}