using Auth0.SDK;
using Autofac;
using TaskTimer.Database;
using TaskTimer.iOS.Security;
using TaskTimer.Security;
namespace TaskTimer.iOS.DI
{
    public class IOSModule : Module
    {
        protected override void Load(ContainerBuilder builder)
        {
            builder.Register(x => new Auth0Client(Auth0Settings.Domain, Auth0Settings.ClientId)).SingleInstance();
            builder.RegisterType<AdfsAuthenticator>().As<IAuthenticator>().SingleInstance();
            builder.RegisterType<Security.TokenProvider>().As<ITokenProvider>().SingleInstance();
            builder.RegisterType<Database.SQLite>().As<ISQLite>().SingleInstance();
            base.Load(builder);
        }
    }
}