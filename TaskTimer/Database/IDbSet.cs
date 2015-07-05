using System;
using System.Collections.Generic;
using System.Linq.Expressions;

namespace TaskTimer.Database
{
    public interface IDbSet<T> : IEnumerable<T> where T : IEntity, new()
    {
        void Add(T entity);
        void Update(T entity);
        void Delete(T entiy);
        T GetById(object primaryKey);
        void DeleteAll();

        IEnumerable<T> GetAll();	
       
    } 
}
