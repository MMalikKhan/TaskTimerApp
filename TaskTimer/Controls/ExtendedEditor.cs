using System;
using Xamarin.Forms;

namespace TaskTimer
{
    public partial class ExtendedEditor : Editor
    {
        public double FontSize
        {
            get 
            { 
                return (double)GetValue(FontSizeProperty); 
            }
            set 
            {
                SetValue(FontSizeProperty, value); 
            }
        }

        public string FontFamily
        {
            get 
            { 
                return (string)GetValue(FontFamilyProperty); 
            }
            set 
            {
                SetValue(FontFamilyProperty, value); 
            }
        }

        public ExtendedEditor (): base()
        {
            this.Keyboard = Keyboard.Create(KeyboardFlags.All);
        }

        public static readonly BindableProperty FontFamilyProperty=BindableProperty.Create<ExtendedEditor, string>(prop=> prop.FontFamily, "HelveticaNeue-Regular", BindingMode.TwoWay);


        public static readonly BindableProperty FontSizeProperty=BindableProperty.Create<ExtendedEditor, double>(prop=> prop.FontSize, 13.5, BindingMode.TwoWay);

        protected override void OnPropertyChanged(string propertyName)
        {
            base.OnPropertyChanged(propertyName);

            switch( propertyName )
            {
                case "FontSize":
                    break;
            }
        }
    }
}

