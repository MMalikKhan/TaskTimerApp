using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using TaskTimer.Constants;
using TaskTimer.Database;
using TaskTimer.Models;
using TaskTimer.DI;
using TaskTimer.Security;

namespace TaskTimer.Services
{
    public class UserTaskService :IUserTaskService
    {
        private readonly RestService _restService;
        private readonly IDbContext _dbContext;
        private readonly User _currentLoggedInUser;

        public UserTaskService(RestService restService, IDbContext dbContext,ITokenProvider tokenProvider, IUserPreferenceService userPreferenceService)
        {
            _restService = restService;
            _dbContext = dbContext;

            var _authToken = tokenProvider.GetCurrentToken().Result;
            _currentLoggedInUser = userPreferenceService.GetUserByEmailId(_authToken.Email).Result;
        }

        #region IUserTaskService implementation

        public async Task<UserTask> GetUserTask(int taskid)
        {
            var userTask = _dbContext.UserTask.GetById(taskid);
            return await Task.FromResult(userTask);
        }

        public async Task<UserTask> UpdateUserTask(UserTask usertask)
        {
             _dbContext.UserTask.Update(usertask);
            return await GetUserTask(usertask.UserTaskID);
        }

        public async  Task<UserTask> CreateUserTask(UserTask usertask)
        {
            _dbContext.UserTask.Add(usertask);
            return await GetUserTask(usertask.UserTaskID);
        }

        public async Task<bool> DeleteUserTask(UserTask usertask)
        {
            _dbContext.UserTask.Delete(usertask);
            return await Task.FromResult(true);
        }

        public  async  Task<UserTask> CompleterUserTask(UserTask usertask)
        {
            UsageItem selectedItem =  _dbContext.QueryByExpression<UsageItem>(usageItem => usageItem.Id ==  usertask.UsageItemId).FirstOrDefault();
            TimeSpan elapsedTime = TimeSpan.FromSeconds(usertask.ElapsedTimeInSeconds);

            var userNameParts = _currentLoggedInUser.EmailId.Split(new[] {"@"}, StringSplitOptions.RemoveEmptyEntries);
            var userName = userNameParts[0];

            var newDuration = new Transaction
            {
                ClientId = usertask.ClientID,
                RequestedBy = usertask.RequestedBy,
                RequestedByWindowsAccount = userName.ToLower(),
                LocationCode = usertask.LocationCode,
                TransactionNotes = usertask.Notes,
                TeamMemberComments = usertask.TeamMemberComments,
                ConsumedAtDate = usertask.StartDateTime.ToUniversalTime().ToString("u"),
                UOM = selectedItem.UnitOfMeasure,
                DurationHours = elapsedTime.Hours,
                DurationMinutes = elapsedTime.Minutes,
                DurationSeconds = elapsedTime.Seconds,
                UnitPrice = selectedItem.UnitPrice,
                UsageItemId = selectedItem.Id,
            };

            await _restService.Post(RestEndpoint.CreateDuration, newDuration, "Stop or Complete Task",
                "Error happend while stopping a task");

            usertask.Status = UserTaskStatus.Completed;
            return usertask;
        }

        public  async Task<UserTaskTime> GetUserTaskTime(int tasktimeid)
        {
            var userTask = _dbContext.UserTaskTime.GetById(tasktimeid);
            return await Task.FromResult(userTask);
        }

        public async  Task<UserTaskTime> UpdateUserTaskTime(UserTaskTime usetasktime)
        {
            _dbContext.UserTaskTime.Update(usetasktime);
            return await GetUserTaskTime(usetasktime.UserTaskTimeID);
        }

        public  async Task<UserTaskTime> CreateUserTaskTime(UserTaskTime usertasktime)
        {
             _dbContext.UserTaskTime.Add(usertasktime);
            return await GetUserTaskTime(usertasktime.UserTaskTimeID);
        }

        public async  Task<bool> DeleteUserTaskTime(UserTaskTime usertasktime)
        {
            _dbContext.UserTaskTime.Delete(usertasktime);
            return await Task.FromResult(true);
        }

        public async  Task<bool> DeleteAllTaskDataByTaskId(int taskid)
        {
            _dbContext.DeleteByExpression<UserTask>(c => c.UserTaskID == taskid);
            _dbContext.DeleteByExpression<UserTaskTime>(c => c.UserTaskID == taskid);

            return await Task.FromResult(true);

        }

        public Task<List<UserTask>> GetAllUserTaskByUserID(string emailID)
        {
            var usertasks =  _dbContext.QueryByExpression<UserTask>(c => c.UserEmailID == emailID).ToList();

            return Task.FromResult(usertasks);
        }

        public Task<List<UserTask>> GetAllUserTaskByUserID(string emailID,int status)
        {
            var usertasks =  _dbContext.QueryByExpression<UserTask>(c => c.UserEmailID == emailID && c.Status == status).OrderByDescending(a=>a.EndDateTime).ToList();

            return Task.FromResult(usertasks);
        }

        public Task<List<UserTask>> GetAllUserTaskByUserID(string emailID, int status, int numberOfTasks)
        {
            var usertasks = _dbContext.QueryByExpression<UserTask>(c => c.UserEmailID == emailID && c.Status == status).OrderByDescending(a => a.EndDateTime).
                Take(numberOfTasks).ToList();

            return Task.FromResult(usertasks);
        }

        public Task<List<UserTask>> GetAllUserTaskByUserID(string emailID,int[] statusArray)
        {
            var usertasks =  _dbContext.QueryByExpression<UserTask>(c => c.UserEmailID == emailID && statusArray.Contains(c.Status)).OrderByDescending(a=>a.UserTaskID).ToList();

            return Task.FromResult(usertasks);
        }
           

        public Task<List<UserTaskTime>> GetUserTaskTimeByUserTaskId(int userTaskId)
        {
            var usertaskstime =  _dbContext.QueryByExpression<UserTaskTime>(c=>c.UserTaskID== userTaskId).ToList();

            return Task.FromResult(usertaskstime);
        }

        #endregion
    }
}

