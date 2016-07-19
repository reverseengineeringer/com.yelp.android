package com.yelp.android.ui.activities.bookmarks;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.util.ObjectDirtyEvent;

class ActivityComboBookmarks$1
  extends BroadcastReceiver
{
  ActivityComboBookmarks$1(ActivityComboBookmarks paramActivityComboBookmarks) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = (YelpBusiness)ObjectDirtyEvent.a(paramIntent);
    ActivityComboBookmarks.a(a, paramContext);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.bookmarks.ActivityComboBookmarks.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */