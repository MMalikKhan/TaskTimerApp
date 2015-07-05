using System;
using System.Collections.Generic;

using Xamarin.Forms;

namespace TaskTimer
{
    public partial class CompletedTaskPage : ContentPage
    {
        public CompletedTaskPage()
        {
            InitializeComponent();
        }

        private void CompletedTaskListView_OnItemTapped(object sender, ItemTappedEventArgs e)
        {
            var model = BindingContext as CompletedTaskViewModel;
            if (model == null || e.Item == null) return;

            model.CloneUserTaskCommand.Execute(e.Item);
        }
    }
}

