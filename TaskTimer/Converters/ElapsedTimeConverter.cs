using System;
using Xamarin.Forms;

namespace TaskTimer.Converters
{
    public class ElapsedTimeConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            if (value == null) return string.Empty;

            var t = new TimeSpan(0, 0, System.Convert.ToInt32(value));
            return string.Format("Total: {0}h {1}min {2}sec", t.Hours, t.Minutes, t.Seconds);
        }

        public object ConvertBack(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}

