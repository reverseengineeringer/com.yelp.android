package com.yelp.android.ui.activities.feed;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.yelp.android.serializable.ReviewFeedEntry;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.util.ObjectDirtyEvent;

class ao
  extends BroadcastReceiver
{
  ao(FeedFragment paramFeedFragment) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = (YelpBusinessReview)ObjectDirtyEvent.a(paramIntent);
    FeedFragment.a(a).a(paramContext.getId(), ReviewFeedEntry.getFeedUpdate(paramContext));
    FeedFragment.a(a).notifyDataSetChanged();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.ao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */