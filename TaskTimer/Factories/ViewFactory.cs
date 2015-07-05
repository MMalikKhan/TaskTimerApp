using TaskTimer.DI;

namespace TaskTimer.Factories
{
    public class ViewFactory<TPage, TViewModel> where TPage: Xamarin.Forms.Page
    {
        public static TPage CreatePage()
        {
            return CreatePage(DependencyResolver.Resolve<TViewModel>());
        }
        public static TPage CreatePage(TViewModel viewModel, bool registerBindingContext = true)
        {
            var page = DependencyResolver.Resolve<TPage>();

            if (registerBindingContext)
                page.BindingContext = viewModel;

            return page;
        }
    }
}
