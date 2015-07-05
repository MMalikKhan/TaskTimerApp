using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace TaskTimer.ViewModels
{
    public class BaseViewModel : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;

        protected void OnPropertyChanged([CallerMemberName]string propertyName=null)
        {
            if (PropertyChanged == null)
                return;

            PropertyChanged(this,new PropertyChangedEventArgs(propertyName));
        }

		private bool _isBusy;
		public bool IsBusy
		{
			get { return _isBusy; }
			set
			{
				_isBusy = value;
				OnPropertyChanged();
			}
		}
    }
}
