using System;
using Xamarin.Forms;
using System.Collections;
using System.Collections.Specialized;
using System.Linq;

namespace TaskTimer.Controls
{

    public class BindablePicker : Picker
    {
        #region Fields

        //Bindable property for the items source
        public static readonly BindableProperty ItemsSourceProperty =
            BindableProperty.Create<BindablePicker, IEnumerable>(p => p.ItemsSource, null, propertyChanged: OnItemsSourcePropertyChanged);

        //Bindable property for the selected item
        public static readonly BindableProperty SelectedItemProperty =
            BindableProperty.Create<BindablePicker, object>(p => p.SelectedItem, null, BindingMode.TwoWay, propertyChanged: OnSelectedItemPropertyChanged);

        #endregion

        public BindablePicker()
        {
            //this.SelectedIndexChanged += OnSelectedItemPropertyChanged;
        }
        #region Properties

        public string DisplayMember { get; set; }

        /// <summary>
        /// Gets or sets the items source.
        /// </summary>
        /// <value>
        /// The items source.
        /// </value>
        public IEnumerable ItemsSource
        {
            get { return (IEnumerable)GetValue(ItemsSourceProperty); }
            set { SetValue(ItemsSourceProperty, value); }
        }

        /// <summary>
        /// Gets or sets the selected item.
        /// </summary>
        /// <value>
        /// The selected item.
        /// </value>
        public object SelectedItem
        {
            get { return GetValue(SelectedItemProperty); }
            set { SetValue(SelectedItemProperty, value); UpdateSelected(); }
        }

        #endregion

        #region Methods

        private void UpdateSelected()
        {
            if (ItemsSource != null)
            {
                if (ItemsSource.IndexOf(SelectedItem)>0)
                {
                    SelectedIndex = ItemsSource.IndexOf(SelectedItem);
                }
                else
                {
                    SelectedIndex = -1;
                }
            }
        }
        /// <summary>
        /// Called when [items source property changed].
        /// </summary>
        /// <param name="bindable">The bindable.</param>
        /// <param name="value">The value.</param>
        /// <param name="newValue">The new value.</param>
        private static void OnItemsSourcePropertyChanged(BindableObject bindable, IEnumerable value, IEnumerable newValue)
        {
            var picker = (BindablePicker)bindable;
            var notifyCollection = newValue as INotifyCollectionChanged;
            if (notifyCollection != null)
            {
                notifyCollection.CollectionChanged += (sender, args) =>
                    {
                        if (args.Action == NotifyCollectionChangedAction.Reset)
                        {
                            picker.Items.Clear();

                            return;
                        }

                        if (args.NewItems != null)
                        {
                            foreach (var newItem in args.NewItems)
                            {
                                picker.Items.Add((newItem ?? "").ToString());
                            }
                        }
                        if (args.OldItems != null)
                        {
                            foreach (var oldItem in args.OldItems)
                            {
                                picker.Items.Remove((oldItem ?? "").ToString());
                            }
                        }
                    };
            }

            if (newValue == null) 
                return;

            picker.Items.Clear();

            foreach (var item in newValue)
                picker.Items.Add((item ?? "").ToString());
        }

        /// <summary>
        /// Called when [selected item property changed].
        /// </summary>
        /// <param name="bindable">The bindable.</param>
        /// <param name="value">The value.</param>
        /// <param name="newValue">The new value.</param>
        private static void OnSelectedItemPropertyChanged(BindableObject bindable, object value, object newValue)
        {
            var picker = (BindablePicker)bindable;
            if (picker.ItemsSource != null)
                picker.SelectedIndex = picker.ItemsSource.IndexOf(picker.SelectedItem);
        }

        #endregion
    }



    public static class EnumerableExtensions
    {
        /// <summary>
        /// Returns the index of the specified object in the collection.
        /// </summary>
        /// <param name="self">The self.</param>
        /// <param name="obj">The object.</param>
        /// <returns>If found returns index otherwise -1</returns>
        public static int IndexOf(this IEnumerable self, object obj)
        {
            int index = -1;

            var enumerator = self.GetEnumerator();
            enumerator.Reset();
            int i = 0;
            while (enumerator.MoveNext())
            {
                if (enumerator.Current.Equals(obj))
                {
                    index = i;
                    break;
                }

                i++;
            }

            return index;
        }
    }

//    public class BindablePicker : Picker
//    {
//        public BindablePicker()
//        {
//            this.SelectedIndexChanged += OnSelectedIndexChanged;
//        }
//
//        public static BindableProperty ItemsSourceProperty =
//            BindableProperty.Create<BindablePicker, IList>(o => o.ItemsSource, default(IList), propertyChanged: OnItemsSourceChanged);
//
//        public static BindableProperty SelectedItemProperty =
//            BindableProperty.Create<BindablePicker, object>(o => o.SelectedItem, default(object));
//
//
//        public string DisplayMember { get; set; }
//
//        public IList ItemsSource
//        {
//            get { return (IList)GetValue(ItemsSourceProperty); }
//            set { SetValue(ItemsSourceProperty, value); }
//        }
//
//        public object SelectedItem
//        {
//            get { return (object)GetValue(SelectedItemProperty); }
//            set { SetValue(SelectedItemProperty, value); }
//        }
//
//        private static void OnItemsSourceChanged(BindableObject bindable, IList oldvalue, IList newvalue)
//        {
//            var picker = bindable as BindablePicker;
//
//            if (picker != null)
//            {
//                picker.Items.Clear();
//                if (newvalue == null) return;
//                //now it works like "subscribe once" but you can improve
//                foreach (var item in newvalue)
//                {
//                    if (string.IsNullOrEmpty(picker.DisplayMember))
//                    {
//                        picker.Items.Add(item.ToString());
//                    }
//                    else
//                    {
//                        var type = item.GetType();
//
//                        var prop = type.get;//picker.DisplayMember);
//
//
//                        //var value = 
//                        picker.Items.Add(prop.GetValue(item).ToString());
//                    }
//                }
//            }
//        }
//
//        private void OnSelectedIndexChanged(object sender, EventArgs eventArgs)
//        {
//            if (SelectedIndex < 0 || SelectedIndex > Items.Count - 1)
//            {
//                SelectedItem = null;
//            }
//            else
//            {
//                SelectedItem = ItemsSource[SelectedIndex];
//            }
//        }
//    }
}

