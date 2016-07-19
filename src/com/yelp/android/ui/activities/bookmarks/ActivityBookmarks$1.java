package com.yelp.android.ui.activities.bookmarks;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.util.ObjectDirtyEvent;
import java.util.ArrayList;

class ActivityBookmarks$1
  extends BroadcastReceiver
{
  ActivityBookmarks$1(ActivityBookmarks paramActivityBookmarks) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = (YelpBusiness)ObjectDirtyEvent.a(paramIntent);
    ActivityBookmarks.a(a).remove(paramContext);
    ActivityBookmarks.b(a);
    ActivityBookmarks.f(a).a(ActivityBookmarks.c(a), ActivityBookmarks.d(a), ActivityBookmarks.a(a), ActivityBookmarks.e(a));
    ActivityBookmarks.g(a).a(ActivityBookmarks.a(a));
    ActivityBookmarks.h(a).a(ActivityBookmarks.a(a));
    if (ActivityBookmarks.a(a).isEmpty()) {
      ActivityBookmarks.i(a);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.bookmarks.ActivityBookmarks.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */