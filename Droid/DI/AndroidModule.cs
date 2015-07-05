using Auth0.SDK;
using Autofac;
using TaskTimer.Database;
using TaskTimer.Droid.Security;
using TaskTimer.Security;

namespace TaskTimer.Droid.DI
{
    public class AndroidModule : Module
    {
        protected override void Load(ContainerBuilder builder)
        {
			builder.Register(x => new Auth0Client(Auth0Settings.Domain, Auth0Settings.ClientId));
            builder.RegisterType<AdfsAuthenticator>().As<IAuthenticator>();
            builder.RegisterType<Droid.Security.TokenProvider>().As<ITokenProvider>();
            builder.RegisterType<Database.SQLite>().As<ISQLite>();

            base.Load(builder);
        }
    }
}