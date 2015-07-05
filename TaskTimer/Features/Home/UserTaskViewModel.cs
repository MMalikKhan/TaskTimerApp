using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using System.Windows.Input;
using PropertyChanged;
using TaskTimer.Constants;
using TaskTimer.DI;
using TaskTimer.ViewModels;
using Xamarin.Forms;
using PubSub;
using TaskTimer;
using TaskTimer.Factories;
using TaskTimer.Messages;
using System.Linq;
using TaskTimer.Formatters;
using TaskTimer.Models;
using TaskTimer.Services;

namespace TaskTimer.Features.Home
{
    [ImplementPropertyChanged]
    public class UserTaskViewModel : BaseViewModel
    {
        readonly TimeSpan _timer = new TimeSpan(TimeSpan.TicksPerSecond);
        readonly Dictionary<int, string> _imagePerStatus;
        readonly IUserTaskService _userTaskService;
        private readonly IClientContactService _clientContactService;
        private readonly User _currentUser;
        int hours24restrictions = 86399;
        public UserTaskViewModel()
        {
        }

        [AlsoNotifyFor("ElapsedTime")]
        public TimeSpan Duration { get; set; }

        public UserTaskViewModel(UserTask userTask, List<UserTaskTime> userTaskTimelist) :
            this(
            userTask, userTaskTimelist, DependencyResolver.Resolve<IUserTaskService>(),
            DependencyResolver.Resolve<IClientContactService>()
            )
        { }

        public UserTaskViewModel(UserTask userTask, List<UserTaskTime> userTaskTimelist, IUserTaskService userTaskService,IClientContactService clientContactService)
        {
            _userTaskService = userTaskService;
            _clientContactService = clientContactService;
            _currentUser = App.CurrentUserProfile;

            _imagePerStatus = new Dictionary<int, string>
            {
                {UserTaskStatus.Active, "iconpause.png"},
                {UserTaskStatus.Pending, "iconplay.png"},
                {UserTaskStatus.Paused, "iconplay.png"}
            };

            UserTask = userTask;

            UserTaskTimeList = userTaskTimelist;

            Duration = UserTask.Status == UserTaskStatus.Aborted ? new TimeSpan(0, 0, (int)UserTask.ElapsedTimeInSeconds): new TimeSpan(0, 0, (int)GetCurrentDuration().Result);

            if (UserTask.Status == UserTaskStatus.Active)
            {
                if (Duration.TotalSeconds > hours24restrictions)
                {
                    AbortUserTask();
                }
            }

            if (UserTask.Status == UserTaskStatus.Active) { InitializeTimer(); }

            BackCommand = new Command(OnBackCommandFired);
            CanStart = true;
        }

        void ChangeNotes()
        {
            UserTask.Notes = ClientFacingNotesFormatter.Format(UserTask.StartDateTime, StopDuration, _currentUser.FullName, _currentUser.LocationName);
        }


        public UserTask UserTask { get; set; }

        public List<UserTaskTime> UserTaskTimeList { get; set; }

        public bool ShowStopButton
        {
            get
            {
                var stopButtonEnabledStatus = new List<int>() { UserTaskStatus.Aborted, UserTaskStatus.Active, UserTaskStatus.Paused };
                return stopButtonEnabledStatus.Contains(UserTask.Status);
            }
        }
       
        public string ActionImage
        {
            get { return _imagePerStatus.ContainsKey(UserTask.Status) ? _imagePerStatus[UserTask.Status] : string.Empty; }
        }

        public string Since
        {
            get
            {
                return UserTask.StartDateTime == DateTime.MinValue
                    ? string.Empty
                        : string.Format("Since: {1:t}, {0:M}", UserTask.StartDateTime, UserTask.StartDateTime);
            }
        }

        bool _runTimer;
        public bool RunTimer
        {
            get { return _runTimer; }
            set
            {
                _runTimer = value;
                if (!value)
                {
                    CanStart = false;
                }
            }
        }

        public bool CanStart { get; set; }

        public string ElapsedTime
        {
            get { return string.Format("{0:00}:{1:00}:{2:00}’", Duration.Hours, Duration.Minutes, Duration.Seconds); }
        }


        ICommand _startPauseTaskCommand;
        public ICommand StartPauseTaskCommand
        {
            get
            {
                return _startPauseTaskCommand ?? (_startPauseTaskCommand = new Command(TaskClickAction));
            }
        }

        private async void TaskClickAction()
        {
            if (UserTask.Status == UserTaskStatus.Pending || UserTask.Status == UserTaskStatus.Paused)
            {
                if (CanStart)
                {
                    await StartTimer();
                }
                return;
            }

            if (UserTask.Status == UserTaskStatus.Active)
            {
                await PauseTask();
            }
        }


        public async Task<bool> StartTimer()
        {
            if (UserTask.StartDateTime == DateTime.MinValue)
                UserTask.StartDateTime = DateTime.Now;

            await RecordUserTaskTime(true);

            UserTask.Status = UserTaskStatus.Active;

            NotifyStatusProperties();

            InitializeTimer();
            await _userTaskService.UpdateUserTask(UserTask);
            return true;
        }

        private void InitializeTimer()
        {
            RunTimer = true;
            Device.StartTimer(_timer, Elapsedtime);
        }


        private async Task<UserTaskTime> RecordUserTaskTime(bool isStartTimer)
        {
            UserTaskTime usertaskTime = null;
            if (UserTaskTimeList != null)
            {
                usertaskTime = UserTaskTimeList.FirstOrDefault(userTasktime => userTasktime.EndTime == DateTime.MinValue);
            }
            if (usertaskTime == null)
            {
                usertaskTime = new UserTaskTime();
                usertaskTime.UserTaskID = UserTask.UserTaskID;
            }
            if (isStartTimer)
            {
                usertaskTime.StartTime = DateTime.Now;
                usertaskTime = await _userTaskService.CreateUserTaskTime(usertaskTime);
                UserTaskTimeList.Add(usertaskTime);
            }
            else
            {
                usertaskTime.EndTime = DateTime.Now;
                await _userTaskService.UpdateUserTaskTime(usertaskTime);
            }

            return usertaskTime;
        }

        private async Task<double> GetCurrentDuration()
        {
            double durationInSeconds = 0;

            if (UserTaskTimeList != null)
            {

                var userTaskTimeHistory = UserTaskTimeList.Where(c => c.EndTime != DateTime.MinValue);

                foreach (var item in userTaskTimeHistory)
                {
                    durationInSeconds = (item.EndTime - item.StartTime).TotalSeconds;
                }

                if (UserTask.Status == UserTaskStatus.Active)
                {
                    var currentTasktime = UserTaskTimeList.FirstOrDefault(c => c.EndTime == DateTime.MinValue);
                    if (currentTasktime != null)
                    {
                        durationInSeconds = durationInSeconds + (DateTime.Now - currentTasktime.StartTime).TotalSeconds;
                    }
                }
            }

            return durationInSeconds;
        }

        private async void AbortUserTask()
        {
            await RecordUserTaskTime(false);
            UserTask.Status = UserTaskStatus.Aborted;
            Duration = new TimeSpan(23, 59, 59);
            UserTask.ElapsedTimeInSeconds = Duration.TotalSeconds;
            await _userTaskService.UpdateUserTask(UserTask);
            NotifyStatusProperties();
        }

        private void NotifyStatusProperties()
        {
            OnPropertyChanged("Status");
            OnPropertyChanged("Since");
            OnPropertyChanged("ActionImage");
            OnPropertyChanged("ShowStopButton");

            this.Publish<UserTaskStatusChanged>();
        }

        public string Status
        {
            get
            {
                var status = UserTask.Status;
                return string.Format("Status: {0}", UserTaskStatus.GetNameFor(status));
            }
        }

        public bool IsAbortedTask
        {
            get{ return UserTask.Status == UserTaskStatus.Aborted;}

        }

        protected bool Elapsedtime()
        {
            Device.BeginInvokeOnMainThread(() =>
                {
                    if (RunTimer)
                    {
                      
                        if (Duration.TotalSeconds < hours24restrictions)
                        {
                            Duration = Duration + new TimeSpan(0, 0, 1);
                        }
                        else
                        {
                            AbortUserTask();
                            RunTimer = false;
                        }
                    }
                });

            CanStart = !RunTimer;

            return RunTimer;
        }


        ICommand _stopTaskCommand;
        public ICommand StopTaskCommand
        {
            get
            {
                return _stopTaskCommand ?? (_stopTaskCommand = new Command(() => StopTask()));
            }
        }


        ICommand _pauseTaskCommand;
        public ICommand PauseTaskCommand
        {
            get
            {
                return _pauseTaskCommand ?? (_pauseTaskCommand = new Command(() =>
                    this.PauseTask()));
            }
        }

        public string FormattedNotes
        {
            get { return ClientFacingNotesFormatter.Format(UserTask.StartDateTime, StopDuration, _currentUser.FullName, UserTask.LocationCode); }
        }


        ICommand deleteTaskCommand;
        public ICommand DeleteTaskCommand
        {
            get{

                return deleteTaskCommand ?? (deleteTaskCommand=new Command<string>((param)=>
                    this.DeleteTask(Convert.ToBoolean(param))));
            }
        }

        private async Task<bool>  DeleteTask(bool isNavigationRequired)
        {
            RunTimer = false;
            var delete = await App.RootPage.DisplayAlert(ErrorMessages.DeleteTaskConfirmationTitle, ErrorMessages.DeleteTaskConfirmation, ErrorMessages.MesssageButton.Yes.ToString(), ErrorMessages.MesssageButton.No.ToString());

            if (delete)
            {
                NotifyStatusProperties();
                await _userTaskService.DeleteUserTask(UserTask);
                PublishTaskCompleted(isNavigationRequired);
            }
            return true;
        }

        private async Task<bool> PauseTask()
        {
            RunTimer = false;
            UserTask.Status = UserTaskStatus.Paused;
            NotifyStatusProperties();
            await RecordUserTaskTime(false);
            await _userTaskService.UpdateUserTask(UserTask);
            return true;
        }

        private void PublishTaskCompleted(bool isNavigationRequired)
        {
            this.Publish(new TaskCompleted(this));
            if(isNavigationRequired)
                this.Publish<NavigateBackMessage>();
        }

        private TimeSpan _stopDuration;
        public TimeSpan StopDuration
        {
            get { return _stopDuration; }
            set
            {
                _stopDuration = value;
                ChangeNotes();
            }
        }

        private async Task<bool> StopTask()
        {

            RunTimer = false;

            if (UserTask.Status == UserTaskStatus.Active)
            {
                UserTask.Status = UserTaskStatus.Paused;
            }
            UserTask.ElapsedTimeInSeconds = Duration.TotalSeconds;
            StopDuration = Duration;
            NotifyStatusProperties();
            await _userTaskService.UpdateUserTask(UserTask);

            var stopPage = ViewFactory<StopTaskPage, UserTaskViewModel>.CreatePage(this);
            this.Publish(new NavigateToPageMessage(stopPage));
            return true;
        }


        ICommand _saveTaskCommand;
        public ICommand SaveTaskCommand
        {
            get
            {
                return _saveTaskCommand ?? (_saveTaskCommand = new Command(() =>
                    this.SaveTask()));
            }
        }

        private async Task<bool> SaveTask()
        {

            IsBusy = true;
            try
            {
                UserTask.ElapsedTimeInSeconds = StopDuration.TotalSeconds;
                NotifyStatusProperties();
                UserTask.EndDateTime = DateTime.Now;
                await _userTaskService.CompleterUserTask(UserTask);
                await _userTaskService.UpdateUserTask(UserTask);
                PublishTaskCompleted(true);
            }
            finally
            {
               
                IsBusy = false;
            }
            return true;
        }

        private void OnBackCommandFired(object obj)
        {
            this.Publish(new NavigateBackMessage());
        }
        public Command BackCommand { get; set; }
    }
}
