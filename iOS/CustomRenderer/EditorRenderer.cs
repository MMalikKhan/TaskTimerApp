
using UIKit;
using Xamarin.Forms;
using Xamarin.Forms.Platform.iOS;
using TaskTimer.iOS.CustomRenderer;

[assembly: ExportRenderer (typeof (Editor), typeof (ExtendedEditorRenderer))]
namespace TaskTimer.iOS.CustomRenderer
{ 
    public class ExtendedEditorRenderer : EditorRenderer
    {
        protected override void OnElementChanged (ElementChangedEventArgs<Editor> e)
        {
            base.OnElementChanged (e);

            if (Control != null)
            {
                var editor = e.NewElement as ExtendedEditor;
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


