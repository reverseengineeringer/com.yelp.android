package com.yelp.android.appdata;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.yelp.android.util.ObjectDirtyEvent;

class j$2
  extends BroadcastReceiver
{
  j$2(j paramj) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    int i = ObjectDirtyEvent.b(paramIntent);
    j.a(a, i);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.j.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */