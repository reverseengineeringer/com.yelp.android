package com.facebook;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.facebook.internal.p;

public class FacebookBroadcastReceiver
  extends BroadcastReceiver
{
  protected void a(String paramString1, String paramString2, Bundle paramBundle) {}
  
  protected void b(String paramString1, String paramString2, Bundle paramBundle) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = paramIntent.getStringExtra("com.facebook.platform.protocol.CALL_ID");
    String str = paramIntent.getStringExtra("com.facebook.platform.protocol.PROTOCOL_ACTION");
    Bundle localBundle;
    if ((paramContext != null) && (str != null))
    {
      localBundle = paramIntent.getExtras();
      if (p.f(paramIntent)) {
        b(paramContext, str, localBundle);
      }
    }
    else
    {
      return;
    }
    a(paramContext, str, localBundle);
  }
}

/* Location:
 * Qualified Name:     com.facebook.FacebookBroadcastReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */