using System;
using System.Collections.Generic;

namespace TaskTimer.Constants
{
    public static class UserTaskStatus
    {
        private static Dictionary<int, string> StatusNames;

        static UserTaskStatus()
        {
            StatusNames = new Dictionary<int, string>()
            {
                {Active, "Active"},
                {Completed, "Completed"},
                {Pending, "Pending"},
                {Paused, "Paused"},
                {Aborted, "Aborted"}
            };
        }

        public const int Pending = 0;
        public const int Active = 1;
        public const int Paused = 2;
        public const int Completed = 3;
        public const int Aborted = 4;

        public static string GetNameFor(int status)
        {
            if(!StatusNames.ContainsKey(status)) throw new Exception("Not implemented status");
            return StatusNames[status];
        }
    }
}