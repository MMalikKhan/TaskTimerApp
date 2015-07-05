using TaskTimer.ViewModels;
using TaskTimer.Security;
using System;
using TaskTimer.Factories;
using TaskTimer.Features.Settings;
using Xamarin.Forms;

namespace TaskTimer.Messages
{
	public class NavigateToSettingsPage
	{
	    public NavigateToSettingsPage()
	    {
	        _page = ViewFactory<SettingsPage, SettingsViewModel>.CreatePage();
	    }

	    private readonly Page _page;

	    public Page Page
	    {
	        get { return _page; }
	    }
	}
}
