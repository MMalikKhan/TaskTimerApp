using TaskTimer.Features.Home;

namespace TaskTimer
{
    public class TaskCompleted
    {
        UserTaskViewModel _userTaskViewModel;

        public TaskCompleted(UserTaskViewModel userTask){
            _userTaskViewModel = userTask;
        }

        public UserTaskViewModel Task{
            get { return _userTaskViewModel;}
        }
    }
}

