using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace TaskTimer.Behaviors
{
    public class SearchBarTextChanged : Behavior<SearchBar>
    {
        protected override void OnAttachedTo(SearchBar searchBar)
        {
            if (searchBar == null) return;

            searchBar.TextChanged += OnSearchTextChanged;
            base.OnAttachedTo(searchBar);
        }

        private void OnSearchTextChanged(object sender, TextChangedEventArgs e)
        {
            if (Command == null) return;
            Command.Execute(e.NewTextValue);
        }

        protected override void OnDetachingFrom(SearchBar searchBar)
        {
            if (searchBar == null) return;

            searchBar.TextChanged -= OnSearchTextChanged;
            base.OnDetachingFrom(searchBar);
        }

        public static readonly BindableProperty CommandProperty = BindableProperty.Create<SearchBarTextChanged, Command>(p => p.Command, null);

        public Command Command
        {
            get { return (Command)GetValue(CommandProperty); }
            set { SetValue(CommandProperty, value); }
        }
    }
}
