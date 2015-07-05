package md5292e7474aa741cb935ef95221e17abcd;


public class UnCaughtExceptionHandler
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		java.lang.Thread.UncaughtExceptionHandler
{
	static final String __md_methods;
	static {
		__md_methods = 
			"n_uncaughtException:(Ljava/lang/Thread;Ljava/lang/Throwable;)V:GetUncaughtException_Ljava_lang_Thread_Ljava_lang_Throwable_Handler:Java.Lang.Thread/IUncaughtExceptionHandlerInvoker, Mono.Android, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null\n" +
			"";
		mono.android.Runtime.register ("TaskTimer.Droid.UnCaughtExceptionHandler, TaskTimer.Droid, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null", UnCaughtExceptionHandler.class, __md_methods);
	}


	public UnCaughtExceptionHandler () throws java.lang.Throwable
	{
		super ();
		if (getClass () == UnCaughtExceptionHandler.class)
			mono.android.TypeManager.Activate ("TaskTimer.Droid.UnCaughtExceptionHandler, TaskTimer.Droid, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null", "", this, new java.lang.Object[] {  });
	}


	public void uncaughtException (java.lang.Thread p0, java.lang.Throwable p1)
	{
		n_uncaughtException (p0, p1);
	}

	private native void n_uncaughtException (java.lang.Thread p0, java.lang.Throwable p1);

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
