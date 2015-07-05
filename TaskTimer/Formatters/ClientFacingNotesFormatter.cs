using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace TaskTimer.Formatters
{
    public class ClientFacingNotesFormatter
    {
        private static readonly  string  _notesFormat = "{0} from {1}{2}, {3} hr {4} min ({5}, {6})";

        public static string Format(DateTime startTime, TimeSpan stopDuration, string userFullName, string locationName)
        {
            return string.Format(_notesFormat, 
                                  startTime.ToString("dd MMMMM yyyy"), 
                                  startTime.ToString("h.mm"),
                                  startTime.ToString("tt").ToLower(),
                                  stopDuration.Hours,
                                  stopDuration.Minutes,
                                  userFullName,
                                  locationName);
        }
    }
}
