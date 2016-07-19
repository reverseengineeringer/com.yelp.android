package com.kahuna.sdk;

import android.content.Context;
import android.content.Intent;
import android.util.Log;

public class KahunaPushService
  extends GCMBaseIntentService
{
  public KahunaPushService()
  {
    super(new String[] { l.c });
  }
  
  protected void a(Context paramContext, Intent paramIntent)
  {
    if (l.a) {
      Log.d("Kahuna", "onMessage recieved a push event.");
    }
    if (!j.i().f())
    {
      Log.d("Kahuna", "Received Kahuna push, but Push is not enabled. Aborting the notification!");
      return;
    }
    y.a(paramContext, paramIntent.getExtras());
  }
  
  protected void a(Context paramContext, String paramString)
  {
    if (l.a) {
      Log.d("Kahuna", "onError recieved errorId: " + paramString);
    }
  }
  
  protected void b(Context paramContext, String paramString)
  {
    if (l.a) {
      Log.d("Kahuna", "onRegistered recieved Push Token: " + paramString);
    }
    f.b(paramString);
  }
  
  protected void c(Context paramContext, String paramString)
  {
    if (l.a) {
      Log.d("Kahuna", "onUnregistered recieved to remove Push Token: " + paramString);
    }
    f.d();
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.KahunaPushService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */