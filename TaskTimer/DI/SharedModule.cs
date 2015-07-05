using Autofac;
using TaskTimer.Database;
using TaskTimer.Features.CreateTask.Clients;
using TaskTimer.Features.CreateTask.UsageItems;
using TaskTimer.Features.Home;
using TaskTimer.Features.Settings;
using TaskTimer.Features.Welcome;
using TaskTimer.Services;

namespace TaskTimer.DI
{
    public class SharedModule : Module
    {
        protected override void Load(ContainerBuilder builder)
        {
            builder.RegisterType<DbContext>().As<IDbContext>();
            builder.RegisterType<RestService>();
            builder.RegisterType<ReferenceDataService>().As<IReferenceDataService>();
            builder.RegisterType<UserPreferenceService>().As<IUserPreferenceService>();
            builder.RegisterType<UserTaskService>().As<IUserTaskService>();
            builder.RegisterType<ClientContactService>().As<IClientContactService>();
            //builder.Register((c,e) =>  App.CurrentUserProfile );

            RegisterPages(builder);
            RegisterViewModels(builder);
        }

        private static void RegisterViewModels(ContainerBuilder builder)
        {
            builder.RegisterType<WelcomeViewModel>();
            builder.RegisterType<SettingsViewModel>();
            builder.RegisterType<HomeViewModel>();
            builder.RegisterType<ClientsViewModel>();
            builder.RegisterType<UserTaskViewModel>();
            builder.RegisterType<CompletedTaskViewModel>();
            builder.RegisterType<AppViewModel>().SingleInstance();
        }

        private static void RegisterPages(ContainerBuilder builder)
        {
            builder.RegisterType<WelcomePage>();
            builder.RegisterType<HomePage>();
            builder.RegisterType<SettingsPage>();
            builder.RegisterType<ClientsPage>();
            builder.RegisterType<UsageItemsPage>();
            builder.RegisterType<StopTaskPage>();
            builder.RegisterType<CompletedTaskPage>();
        }
    }
}
