using System.Collections.Generic;
using TaskTimer.Models;
using System.Linq.Expressions;
using System;

namespace TaskTimer.Database
{
    public interface IDbContext
    {
        IDbSet<AuthToken> Token { get; set; } 
		IDbSet<UsageItem> UsageItem { get; set; } 
		IDbSet<Client> Client { get; set; }
		IDbSet<Location> Location { get; set; } 
        IDbSet<User> User { get; set; } 
        IDbSet<UserTask> UserTask { get; set; } 
        IDbSet<UserTaskTime> UserTaskTime { get; set; } 

        List<T> QueryByExpression<T> (Expression<Func<T, bool>> exp) where T : class, new();


        void DeleteByExpression<T> (Expression<Func<T, bool>> exp) where T : class, new();

		List<T> Query<T> (string query, params object[] args) where T : class, new();
    }
}