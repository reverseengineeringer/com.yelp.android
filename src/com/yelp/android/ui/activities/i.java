package com.yelp.android.ui.activities;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.util.ObjectDirtyEvent;

class i
  extends BroadcastReceiver
{
  i(ActivityBookmarks paramActivityBookmarks) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = (YelpBusiness)ObjectDirtyEvent.a(paramIntent);
    ActivityBookmarks.a(a, paramContext);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */