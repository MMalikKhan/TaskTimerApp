using System;
using Xamarin.Forms;
using TaskTimer.Messages;
using PubSub;
using System.Linq;
using System.Collections.Generic;
using System.Threading.Tasks;
using TaskTimer.Constants;
using TaskTimer.ViewModels;
using System.Windows.Input;


namespace TaskTimer
{
    public class CompletedTaskViewModel : BaseViewModel
    {

        private readonly Command _navigateToSettingsCommand;
        private readonly Command _closeListCommand;
        private Command<UserTask> _cloneUserTaskCommand;
        readonly IUserTaskService _userTaskService;

        public CompletedTaskViewModel(IUserTaskService userTaskService)
        {
            _navigateToSettingsCommand = new Command(NavigateToSettingsPage);
            _closeListCommand = new Command(CloseList);
            _userTaskService = userTaskService;
            LoadCompletedTaskList();
        }
        public string TodayDate
        {
            get { return string.Format("{0:D}", DateTime.Today); }
        }

        public Command NavigateToSettingsCommand { get { return _navigateToSettingsCommand; } }

        public Command CloseListCommand { get { return _closeListCommand; } }

        private void NavigateToSettingsPage(object obj)
        {
            App.RootPage.Navigation.PopModalAsync(false);
            this.Publish(new NavigateToSettingsPage());
        }

        private void CloseList(object obj)
        {
            this.Publish<CloseModal>();
        }

        public List<UserTask> CompletedTasksList { get; set; }

        public Command<UserTask> CloneUserTaskCommand { get { return _cloneUserTaskCommand ?? (_cloneUserTaskCommand = new Command<UserTask>(CloneUserTask)); } }

        private void CloneUserTask(UserTask selectedUserTask)
        {
            var newUserTask = new UserTask
            {
                UserEmailID = App.CurrentUserProfile.EmailId,
                ClientID = selectedUserTask.ClientID,
                ClientName = selectedUserTask.ClientName,
                UsageItemId = selectedUserTask.UsageItemId,
                Status = UserTaskStatus.Pending,
                UsageItemName = selectedUserTask.UsageItemName,
                LocationCode = selectedUserTask.LocationCode
            };

            this.Publish(new CreateUserTask(newUserTask));
            this.Publish<CloseModal>();
        }

        protected async Task LoadCompletedTaskList()
        {
            if (IsBusy)
                return;
            IsBusy = true;
            try
            {
                if (CompletedTasksList == null)
                    CompletedTasksList = new List<UserTask>();

                CompletedTasksList.Clear();

                const int numberOfCompletedTasks = 10;

                var userTasks = await _userTaskService.GetAllUserTaskByUserID(App.CurrentLogInUser.Email, UserTaskStatus.Completed, numberOfCompletedTasks);

                CompletedTasksList = userTasks.ToList();
            }
            finally
            {
                IsBusy = false;
            }
        }
    }
}


