using System;
using Foundation;
using UIKit;
using Xamarin.Forms;
using Xamarin.Forms.Platform.iOS;
using TaskTimer.iOS.CustomRenderer;

[assembly: ExportRenderer (typeof (TimePicker), typeof (TimePicker24HRenderer))]
namespace TaskTimer.iOS.CustomRenderer
{
    public class TimePicker24HRenderer : TimePickerRenderer {
        protected override void OnElementChanged(ElementChangedEventArgs<TimePicker> e) {
            base.OnElementChanged(e);
            var timePicker = (UIDatePicker)Control.InputView;
            timePicker.Locale = new NSLocale("no_nb");
        }
    }
}


