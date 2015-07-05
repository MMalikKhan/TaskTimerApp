using System.Collections.ObjectModel;

namespace TaskTimer.ViewModels
{
    public class BaseListViewModel<T> : BaseViewModel
    {
        public BaseListViewModel()
        {
            Items=new ObservableCollection<T>();
        }

        public ObservableCollection<T> Items { get; set; }
    }
}
