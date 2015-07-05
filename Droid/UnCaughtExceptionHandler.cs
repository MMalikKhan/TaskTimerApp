using Java.Lang;
using TaskTimer.Logging;

namespace TaskTimer.Droid
{
    public class UnCaughtExceptionHandler : Object, Thread.IUncaughtExceptionHandler
    {
        public void UncaughtException(Thread thread, Throwable ex)
        {
            Insights.Report(ex);
        }

    }
}