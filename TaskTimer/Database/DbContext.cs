using System.Collections.Generic;
using SQLite;
using TaskTimer.Models;
using System.Linq.Expressions;
using System;
using System.Linq;
using TaskTimer.Logging;

namespace TaskTimer.Database
{
    public class DbContext : IDbContext
    {
		private readonly SQLiteConnection _connection;
        public DbContext(ISQLite connection)
        {
            _connection = connection.GetConnection();

            Token = new DbSet<AuthToken>(_connection);
			Client = new DbSet<Client>(_connection);
			UsageItem = new DbSet<UsageItem>(_connection);
			Location = new DbSet<Location>(_connection);
            User = new DbSet<User>(_connection);
            UserTask = new DbSet<UserTask>(_connection);
            UserTaskTime = new DbSet<UserTaskTime>(_connection);
        }

        public IDbSet<AuthToken> Token { get; set; }
		public IDbSet<Location> Location { get; set; }
		public IDbSet<Client> Client { get; set; }
		public IDbSet<UsageItem> UsageItem { get; set; }
        public IDbSet<User> User { get; set; }
        public IDbSet<UserTask> UserTask { get; set; }
        public IDbSet<UserTaskTime> UserTaskTime { get; set; }

        public List<T> Query<T> (string query, params object[] args) where T : class, new()
		{
			var typeName = typeof(T).Name;
			using (Insights.TrackTime("Get" + typeName))
			return this._connection.Query<T>(query, args);
		}
            

        public List<T> QueryByExpression<T>(Expression<Func<T, bool>> exp) where T : class, new() 
        {
            return _connection.Table<T>().Where(exp).ToList();
        }

        public void DeleteByExpression<T>(Expression<Func<T, bool>> exp) where T : class, new() 
        {
            _connection.Table<T>().Delete(exp);

        }

     

    }
}

