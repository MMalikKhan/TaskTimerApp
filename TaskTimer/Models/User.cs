using System;
using SQLite;
using TaskTimer.Database;
using PropertyChanged;

namespace TaskTimer
{
    [ImplementPropertyChanged]
    public class User : IEntity
    {

        [PrimaryKey]
        public string EmailId
        {
            get;
            set;
        }

        public string FirstName
        {
            get;
            set;
        }

        public string LastName
        {
            get;
            set;
        }

        public string LocationCode
        {
            get;
            set;
        }

        public string LocationName
        {
            get;
            set;
        }

        public DateTime LastLogin
        {
         
            get;
            set;
        }

        public object GetIdentifier()
        {
            return EmailId;
        }

        public string FullName
        {
            get { return string.Format("{0} {1}", FirstName, LastName); }
        }
    }
}

