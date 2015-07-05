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
  final WeakReference<ar> b;
  
  static
  {
    a.addAction("com.yelp.android.action.ON_BACKGROUNDING");
    a.addAction("com.yelp.android.action.ON_WAKE");
    a.addCategory("com.yelp.android.action.CATEGORY_STATE");
  }
  
  public StateBroadcastReceiver(ar paramar)
  {
    b = new WeakReference(paramar);
  }
  
  public static StateBroadcastReceiver a(Context paramContext, ar paramar)
  {
    paramContext = paramContext.getApplicationContext();
    StateBroadcastReceiver localStateBroadcastReceiver = new StateBroadcastReceiver(paramar);
    YelpLog.i(paramar, "Registering for state updates");
    paramContext.registerReceiver(localStateBroadcastReceiver, a);
    return localStateBroadcastReceiver;
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    ar localar = (ar)b.get();
    if (localar == null)
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
        YelpLog.w(localar, "Background application state");
        localar.b(paramContext);
        return;
      }
    } while (!"com.yelp.android.action.ON_WAKE".equals(paramIntent));
    YelpLog.w(localar, "Waking up application state");
    localar.a(paramContext);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.StateBroadcastReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */