package com.facebook.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.v4.content.m;
import com.facebook.appevents.AppEventsLogger;
import java.util.Iterator;
import java.util.Set;

public class BoltsMeasurementEventListener
  extends BroadcastReceiver
{
  private static BoltsMeasurementEventListener a;
  private Context b;
  
  private BoltsMeasurementEventListener(Context paramContext)
  {
    b = paramContext.getApplicationContext();
  }
  
  public static BoltsMeasurementEventListener a(Context paramContext)
  {
    if (a != null) {
      return a;
    }
    a = new BoltsMeasurementEventListener(paramContext);
    a.a();
    return a;
  }
  
  private void a()
  {
    m.a(b).a(this, new IntentFilter("com.parse.bolts.measurement_event"));
  }
  
  private void b()
  {
    m.a(b).a(this);
  }
  
  protected void finalize()
    throws Throwable
  {
    try
    {
      b();
      return;
    }
    finally
    {
      super.finalize();
    }
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = AppEventsLogger.a(paramContext);
    String str1 = "bf_" + paramIntent.getStringExtra("event_name");
    paramIntent = paramIntent.getBundleExtra("event_args");
    Bundle localBundle = new Bundle();
    Iterator localIterator = paramIntent.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str2 = (String)localIterator.next();
      localBundle.putString(str2.replaceAll("[^0-9a-zA-Z _-]", "-").replaceAll("^[ -]*", "").replaceAll("[ -]*$", ""), (String)paramIntent.get(str2));
    }
    paramContext.a(str1, localBundle);
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.BoltsMeasurementEventListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */