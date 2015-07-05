
using UIKit;
using Xamarin.Forms;
using Xamarin.Forms.Platform.iOS;
using TaskTimer.iOS.CustomRenderer;

[assembly: ExportRenderer (typeof (Entry), typeof (ExtendedEntryRenderer))]
namespace TaskTimer.iOS.CustomRenderer
{ 
    public class ExtendedEntryRenderer : EntryRenderer
    {
        protected override void OnElementChanged (ElementChangedEventArgs<Entry> e)
        {
            base.OnElementChanged (e);

            if (Control != null)
            {
                var editor = e.NewElement as ExtendedEntry;
                if (editor != null)
                {
                    var Uifont = UIFontDescriptor.FromName(editor.FontFamily, (float)editor.FontSize);
                    Control.Font = UIFont.FromDescriptor(Uifont,(float)editor.FontSize);
                    Control.AutocapitalizationType = UITextAutocapitalizationType.Sentences;
                }
            }
        }

    }
}


