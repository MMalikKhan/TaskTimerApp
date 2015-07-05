using System;
﻿using PubSub;
﻿using TaskTimer.DI;
﻿using TaskTimer.Factories;
using TaskTimer.Messages;
﻿using TaskTimer.ViewModels;
﻿using Xamarin.Forms;
using System.Collections.ObjectModel;
using System.Windows.Input;
using System.Threading.Tasks;
using TaskTimer.Constants;
using TaskTimer.Features.CreateTask.Clients;
using System.Linq;
using PropertyChanged;
using System.Collections.Generic;
using TaskTimer.Services;

namespace TaskTimer.Features.Home
{
    [ImplementPropertyChanged]
    public class HomeViewModel : BaseViewModel
    {
        private readonly Command _navigateToSettingsCommand;
        private readonly Command _createTaskCommand;
        private ICommand LoadUsertasks;

        public readonly IUserTaskService _userTaskService;
        public readonly IClientContactService _clientContactService;
        public HomeViewModel(IUserTaskService userTaskService, IClientContactService clientContactService)
        {
            _navigateToSettingsCommand = new Command(NavigaetToSettingsPage);
            _createTaskCommand = new Command(CreateNewTask);
            _userTaskService = userTaskService;
            _clientContactService = clientContactService;

            ExecuteLoadItemsCommand();
            InitSubscriptions();
        }

        private void InitSubscriptions()
        {
            this.Subscribe<UserTaskStatusChanged>(
                message => { NotifyOthers(); });

            this.Subscribe<TaskCompleted>(
                message =>
                {
                    TaskComepleted(message.Task);
                    this.Publish<UserTaskStatusChanged>();
                });

            this.Subscribe<CreateUserTask>(
                async message => { await CreateUserTask(message.UserTask); });
            this.Subscribe<AppEnteredForegroundState>(
                async message => { await ExecuteLoadItemsCommand(); });
        }

        private void NotifyOthers()
        {
            OnPropertyChanged("PendingTaskCount");
            OnPropertyChanged("ActiveTaskCount");
            OnPropertyChanged("PausedTaskCount");
        }

        private void TaskComepleted(UserTaskViewModel userTaskVm)
        {
            if (UserTasksList != null)
                UserTasksList.Remove(userTaskVm);

        }

        private async Task<bool> CreateUserTask(UserTask newUserTask)
        {

            var newTask = await _userTaskService.CreateUserTask(newUserTask);

            UserTasksList.Insert(0, new UserTaskViewModel(newTask, new List<UserTaskTime>()));

            this.Publish<UserTaskStatusChanged>();

            await UpdateRequestedBy(newTask);

            return true;
        }

        private async Task UpdateRequestedBy(UserTask userTask)
        {
            var requestedBy = await _clientContactService.GetContactBy(userTask.ClientID);
            
            if (requestedBy == null) return;

            var userTaskModel = UserTasksList.FirstOrDefault(c => c.UserTask.UserTaskID == userTask.UserTaskID);

            if (userTaskModel != null)
            {
                userTaskModel.UserTask.RequestedBy = requestedBy.Name;

                await _userTaskService.UpdateUserTask(userTaskModel.UserTask);
            }
        }

        private void CreateNewTask(object obj)
        {
            var createTaskPage = ViewFactory<ClientsPage, ClientsViewModel>.CreatePage();
            this.Publish(new NavigateToPageMessage(createTaskPage));
        }

        private void NavigaetToSettingsPage(object obj)
        {
            this.Publish(new NavigateToSettingsPage());

        }

        public string TodayDate
        {
            get { return string.Format("{0:D}", DateTime.Today); }
        }


        public int PendingTaskCount
        {
            get
            {
                return UserTasksList != null ? UserTasksList.Count(c => c.UserTask.Status == (int)UserTaskStatus.Pending || c.UserTask.Status == (int)UserTaskStatus.Aborted) : 0;
            }
        }

        public int ActiveTaskCount
        {
            get
            {
                return UserTasksList != null ? UserTasksList.Count(c => c.UserTask.Status == (int)UserTaskStatus.Active) : 0;
            }
        }

        public int PausedTaskCount
        {
            get
            {
                return UserTasksList != null ? UserTasksList.Count(c => c.UserTask.Status == (int)UserTaskStatus.Paused) : 0;
            }
        }

        public Command NavigateToSettingsCommand { get { return _navigateToSettingsCommand; } }

        public Command CreateTaskCommand { get { return _createTaskCommand; } }


        public ObservableCollection<UserTaskViewModel> UserTasksList { get; set; }

        public ICommand LoadItemsCommand
        {
            get
            {
                return LoadUsertasks ?? (LoadUsertasks = new Command(async () => await ExecuteLoadItemsCommand()));
            }
        }



        protected async Task ExecuteLoadItemsCommand()
        {
            if (IsBusy)
                return;
            IsBusy = true;
            try
            {
                if (UserTasksList == null)
                    UserTasksList = new ObservableCollection<UserTaskViewModel>();
                else
                    UserTasksList.Clear();

                int[] status =
                {
                    UserTaskStatus.Active, UserTaskStatus.Pending, UserTaskStatus.Paused, UserTaskStatus.Aborted
                };

                var userTasks = await _userTaskService.GetAllUserTaskByUserID(App.CurrentLogInUser.Email, status);

                foreach (var usertask in userTasks)
                {
                    var userTaskTime = await _userTaskService.GetUserTaskTimeByUserTaskId(usertask.UserTaskID);

                    UserTasksList.Add(new UserTaskViewModel(usertask, userTaskTime));
                }
            }
            finally
            {
                IsBusy = false;
            }
        }

        ICommand completedTaskCommand;
        public ICommand CompletedTaskCommand
        {
            get
            {
                return completedTaskCommand ?? (completedTaskCommand = new Command(async () => await LoadCompletedTaskList()));
            }
        }

        private async Task<bool> LoadCompletedTaskList()
        {

            var createTaskPage = ViewFactory<CompletedTaskPage, CompletedTaskViewModel>.CreatePage();

            this.Publish(new NavigateToPageMessage(createTaskPage, true));

            return true;
        }
    }
}
