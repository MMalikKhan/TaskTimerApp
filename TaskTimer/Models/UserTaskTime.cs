using System;
using SQLite;
using TaskTimer.Database;

namespace TaskTimer
{
    public class UserTaskTime : IEntity
    {
        //        TimeTransaction
        //        TransactionID “ForeignKey"
        //        StartTime
        //        EndTime
        //        ElapsedTime

        [PrimaryKey,AutoIncrement]
        public int UserTaskTimeID
        {
            get;
            set;
        }

        public int UserTaskID
        {
            get;
            set;
        }

        public DateTime StartTime
        {
            get;
            set;
        }

        public DateTime EndTime
        {
            get;
            set;
        }

        public object GetIdentifier()
        {
            return UserTaskTimeID;
        }
    }
}

