using System;
using System.Threading.Tasks;
using TaskTimer.Models;
using System.Collections.Generic;

namespace TaskTimer
{
    public interface IUserTaskService 
    {
        Task<UserTask> GetUserTask(int taskid);
        Task<UserTask> UpdateUserTask(UserTask user);
        Task<UserTask> CreateUserTask(UserTask user);
        Task<bool> DeleteUserTask(UserTask user);
        Task<UserTask> CompleterUserTask(UserTask user);

        Task<UserTaskTime> GetUserTaskTime(int tasktimeid);
        Task<UserTaskTime> UpdateUserTaskTime(UserTaskTime user);
        Task<UserTaskTime> CreateUserTaskTime(UserTaskTime user);
        Task<bool> DeleteUserTaskTime(UserTaskTime user);
        Task<bool> DeleteAllTaskDataByTaskId(int taskid);
        Task<List<UserTask>> GetAllUserTaskByUserID(string emailId);
        Task<List<UserTask>> GetAllUserTaskByUserID(string emailId, int status);
        Task<List<UserTask>> GetAllUserTaskByUserID(string emailID, int status, int numberOfTasks);
        Task<List<UserTask>> GetAllUserTaskByUserID(string emailID, int[] statusArray);
        Task<List<UserTaskTime>> GetUserTaskTimeByUserTaskId(int userTaskId);
    }
}

