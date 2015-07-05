package com.kahuna.sdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class KahunaPushReceiver
  extends BroadcastReceiver
{
  private static boolean a = false;
  private final af b = new af("[" + getClass().getName() + "]: ");
  
  static final String b(Context paramContext)
  {
    return "com.kahuna.sdk.KahunaPushService";
  }
  
  protected String a(Context paramContext)
  {
    return b(paramContext);
  }
  
  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    b.a(2, "onReceive: %s", new Object[] { paramIntent.getAction() });
    if (!a)
    {
      a = true;
      e.a(paramContext, getClass().getName());
    }
    String str = a(paramContext);
    b.a(2, "GCM IntentService class: %s", new Object[] { str });
    GCMBaseIntentService.a(paramContext, paramIntent, str);
    setResult(-1, null, null);
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.KahunaPushReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */