package com.yelp.android.analytics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.yelp.android.appdata.AppData;
import com.yelp.android.av.a;

public class InvalidBundleReceiver
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramIntent = paramIntent.getStringExtra("image_url");
    AppData.b().k().a(new f(paramContext, paramIntent));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.analytics.InvalidBundleReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */