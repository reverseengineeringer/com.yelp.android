package com.yelp.android.appdata;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.yelp.android.util.ObjectDirtyEvent;

class ad
  extends BroadcastReceiver
{
  ad(ab paramab) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    int i = ObjectDirtyEvent.b(paramIntent);
    ab.a(a, i);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */