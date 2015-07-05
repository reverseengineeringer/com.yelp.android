package com.yelp.android.ui.activities.feed;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.yelp.android.serializable.ReviewBroadcast;
import com.yelp.android.serializable.ReviewFeedEntry;
import com.yelp.android.ui.activities.reviews.ReviewState;
import com.yelp.android.util.ObjectDirtyEvent;

class p
  extends BroadcastReceiver
{
  p(CurrentUserFeedFragment paramCurrentUserFeedFragment) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = (ReviewBroadcast)ObjectDirtyEvent.a(paramIntent);
    paramIntent = paramContext.getReviewState();
    if (paramIntent == ReviewState.DRAFTED)
    {
      paramIntent = new Bundle();
      paramIntent.putInt("the_draft_rating", paramContext.getRating() * 2);
      paramIntent.putString("the_draft_text", paramContext.getText());
      a.a.a(paramContext.getId(), paramIntent);
    }
    do
    {
      return;
      if (paramIntent == ReviewState.FINISHED_RECENTLY)
      {
        a.a.a(paramContext.getId(), ReviewFeedEntry.getFeedBundle(paramContext));
        return;
      }
    } while (paramIntent != ReviewState.NOT_STARTED);
    a.a.a(paramContext.getId());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */