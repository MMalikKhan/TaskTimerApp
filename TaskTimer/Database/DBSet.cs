using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SQLite;
using System.Linq.Expressions;

namespace TaskTimer.Database
{
    public class DbSet<T> : IDbSet<T> where T : IEntity, new()
    {
        private readonly SQLiteConnection _connection;

        public DbSet(SQLiteConnection connection)
        {
            _connection = connection;
            connection.CreateTable<T>();
        }

        public IEnumerator<T> GetEnumerator()
        {
            return _connection.Table<T>().GetEnumerator();
        }

        IEnumerator IEnumerable.GetEnumerator()
        {
            return _connection.Table<T>().GetEnumerator();
        }

        public void DeleteAll()
        {
            _connection.DeleteAll<T>();
        }

        public void Add(T entity)
        {
            _connection.Insert(entity);
        }

        public void Update(T item)
        {
            _connection.Update(item);
        }

        public void Delete(T item)
        {
            _connection.Delete<T>(item.GetIdentifier());
        }

        public T GetById(object primaryKey)
        {
            try
            {
                return  _connection.Get<T>(primaryKey);
            }
            catch(Exception ex)
            {
                if(ex.Message.Contains("Sequence contains"))
                {
                    return default(T);
                }
                throw ex;
            }
        }

        public IEnumerable<T> GetAll()
        {
            return _connection.Table<T>();
        }


    }
}
