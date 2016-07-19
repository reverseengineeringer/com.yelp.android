package com.yelp.android.services;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.yelp.android.appdata.AppData;
import com.yelp.android.services.backgroundlocation.a;

public class BootReceiver
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = AppData.b().s();
    if (paramContext.d()) {
      paramContext.a();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.BootReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */