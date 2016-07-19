package com.yelp.android.appdata;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.yelp.android.util.YelpLog;
import java.lang.ref.WeakReference;

public final class StateBroadcastReceiver
  extends BroadcastReceiver
{
  public static final IntentFilter a = new IntentFilter();
  final WeakReference<a> b;
  
  static
  {
    a.addAction("com.yelp.android.action.ON_BACKGROUNDING");
    a.addAction("com.yelp.android.action.ON_WAKE");
    a.addCategory("com.yelp.android.action.CATEGORY_STATE");
  }
  
  public StateBroadcastReceiver(a parama)
  {
    b = new WeakReference(parama);
  }
  
  public static StateBroadcastReceiver a(Context paramContext, a parama)
  {
    paramContext = paramContext.getApplicationContext();
    StateBroadcastReceiver localStateBroadcastReceiver = new StateBroadcastReceiver(parama);
    YelpLog.i(parama, "Registering for state updates");
    paramContext.registerReceiver(localStateBroadcastReceiver, a);
    return localStateBroadcastReceiver;
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    a locala = (a)b.get();
    if (locala == null)
    {
      YelpLog.i(this, "Unregistering listener");
      paramContext.unregisterReceiver(this);
    }
    do
    {
      return;
      paramIntent = paramIntent.getAction();
      if ("com.yelp.android.action.ON_BACKGROUNDING".equals(paramIntent))
      {
        YelpLog.w(locala, "Background application state");
        locala.b(paramContext);
        return;
      }
    } while (!"com.yelp.android.action.ON_WAKE".equals(paramIntent));
    YelpLog.w(locala, "Waking up application state");
    locala.a(paramContext);
  }
  
  public static abstract interface a
  {
    public abstract void a(Context paramContext);
    
    public abstract void b(Context paramContext);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.StateBroadcastReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */