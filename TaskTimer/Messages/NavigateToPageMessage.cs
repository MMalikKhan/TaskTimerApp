using Xamarin.Forms;

namespace TaskTimer.Messages
{
    public class NavigateToPageMessage
    {
        public NavigateToPageMessage(Page page, bool isModal=false)
        {
            Page = page;
            IsModal = isModal;

        }

        public Page Page { get; set; }

        public bool IsModal{ get; set;}
    }
}
