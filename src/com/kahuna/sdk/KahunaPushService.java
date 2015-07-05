package com.kahuna.sdk;

import android.content.Context;
import android.content.Intent;
import android.util.Log;

public class KahunaPushService
  extends GCMBaseIntentService
{
  public KahunaPushService()
  {
    super(new String[] { h.c });
  }
  
  protected void a(Context paramContext, Intent paramIntent)
  {
    if (h.a) {
      Log.d("KahunaAnalytics", "onMessage recieved a push event.");
    }
    if (!h.h())
    {
      Log.d("KahunaAnalytics", "Received Kahuna push, but Push is not enabled. Aborting the notification!");
      return;
    }
    ak.a(paramContext, paramIntent.getExtras());
  }
  
  protected void a(Context paramContext, String paramString)
  {
    if (h.a) {
      Log.d("KahunaAnalytics", "onError recieved errorId: " + paramString);
    }
  }
  
  protected void b(Context paramContext, String paramString)
  {
    if (h.a) {
      Log.d("KahunaAnalytics", "onRegistered recieved Push Token: " + paramString);
    }
    h.c(paramString);
    h.f();
  }
  
  protected void c(Context paramContext, String paramString)
  {
    if (h.a) {
      Log.d("KahunaAnalytics", "onUnregistered recieved to remove Push Token: " + paramString);
    }
    h.g();
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.KahunaPushService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */