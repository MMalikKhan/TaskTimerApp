using System;
using System.Linq;
using TaskTimer.DI;
using TaskTimer.Features.Settings;
using Xamarin.Forms;

namespace TaskTimer.Features.Settings
{
    public partial class SettingsPage : ContentPage
    {
        public SettingsPage()
        {
            InitializeComponent();

            LocationPicker.SelectedIndexChanged += LocationPicker_SelectedIndexChanged;
        }


        void LocationPicker_SelectedIndexChanged(object sender, EventArgs e)
        {
            var viewModel = BindingContext as SettingsViewModel;
            if (viewModel == null) return;
            var selectedIndex = LocationPicker.SelectedIndex;
            viewModel.SelectedLocationItem = viewModel.LocationList.ElementAtOrDefault(selectedIndex);
        }
    }
}
