package com.yelp.android.ui.activities.feed;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.yelp.android.serializable.ReviewFeedEntry;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.util.ObjectDirtyEvent;

class t
  extends BroadcastReceiver
{
  t(CurrentUserFeedFragment paramCurrentUserFeedFragment) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = (YelpBusinessReview)ObjectDirtyEvent.a(paramIntent);
    a.a.a(paramContext.getId(), ReviewFeedEntry.getFeedUpdate(paramContext));
    a.a.notifyDataSetChanged();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */