using System;

namespace TaskTimer.Security
{
    public static class DateTimeExtensions
    {
        public static DateTime FromUnixTime(long value)
        {
            var epoch = new DateTime(1970, 1, 1, 0, 0, 0, DateTimeKind.Utc);
            return epoch.AddMilliseconds(value);
        }
    }
}
