package com.yelp.android.ui.activities.nearby;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.yelp.android.serializable.Event;
import com.yelp.android.util.ObjectDirtyEvent;

class w
  extends BroadcastReceiver
{
  w(NearbyPageFragment paramNearbyPageFragment) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    ((Event)ObjectDirtyEvent.a(paramIntent)).updateEventObjectInList(NearbyPageFragment.a(a));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.nearby.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */