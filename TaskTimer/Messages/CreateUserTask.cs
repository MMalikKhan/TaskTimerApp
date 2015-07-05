using System;

namespace TaskTimer
{
    public class CreateUserTask
    {
        
        public CreateUserTask(UserTask userTask)
        {
            UserTask = userTask;
        }

        public UserTask UserTask {get;set;}
    }
}

