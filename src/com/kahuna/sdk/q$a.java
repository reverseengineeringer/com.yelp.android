package com.kahuna.sdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

class q$a
  extends BroadcastReceiver
{
  private q$a(q paramq) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    try
    {
      q.a(paramContext, paramIntent);
      return;
    }
    catch (Exception paramContext)
    {
      Log.e("Kahuna", "KahunaSDK wasn't initialized in onAppCreate(), please initialized Kahuna correctly to prevent strange behavior");
      paramContext.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.q.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */