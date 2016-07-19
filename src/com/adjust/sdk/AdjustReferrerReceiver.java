package com.adjust.sdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

public class AdjustReferrerReceiver
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = paramIntent.getStringExtra("referrer");
    if (paramContext == null) {
      return;
    }
    try
    {
      paramContext = URLDecoder.decode(paramContext, "UTF-8");
      Adjust.getDefaultInstance().sendReferrer(paramContext);
      return;
    }
    catch (UnsupportedEncodingException paramContext)
    {
      for (;;)
      {
        paramContext = "malformed";
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.adjust.sdk.AdjustReferrerReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */