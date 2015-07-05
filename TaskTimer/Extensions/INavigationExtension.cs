using System;
using Xamarin.Forms;
using System.Linq;
using TaskTimer.ViewModels;
using TaskTimer.Factories;
using System.Threading.Tasks;

namespace TaskTimer
{
    public static class INavigationExtension
    {
        public async static Task NavigateToPage<TPage, TViewModel>(this INavigation navigation) where TPage: Page
        {
            foreach (var item in navigation.NavigationStack.ToList())
            {
                if (item is TPage)
                {   
                    navigation.RemovePage(item);
                    await navigation.PushAsync(item);
                    return;
                }
            }
            var homePage = ViewFactory<TPage, TViewModel>.CreatePage();
            await navigation.PushAsync(homePage);
        }
    }
}

