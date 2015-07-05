package md5292e7474aa741cb935ef95221e17abcd;


public class AndroidApp
	extends mono.android.app.Application
	implements
		mono.android.IGCUserPeer
{
	static final String __md_methods;
	static {
		__md_methods = 
			"";
	}


	public AndroidApp () throws java.lang.Throwable
	{
		super ();
	}

	public void onCreate ()
	{
		mono.android.Runtime.register ("TaskTimer.Droid.AndroidApp, TaskTimer.Droid, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null", AndroidApp.class, __md_methods);
		super.onCreate ();
	}

	java.util.ArrayList refList;
	public void monodroidAddReference (java.lang.Object obj)
	{
		if (refList == null)
			refList = new java.util.ArrayList ();
		refList.add (obj);
	}

	public void monodroidClearReferences ()
	{
		if (refList != null)
			refList.clear ();
	}
}
