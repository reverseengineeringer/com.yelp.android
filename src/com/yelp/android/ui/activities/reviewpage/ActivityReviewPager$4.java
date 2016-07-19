package com.yelp.android.ui.activities.reviewpage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.yelp.android.serializable.ReviewBroadcast;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.ui.activities.reviews.ReviewState;
import com.yelp.android.ui.widgets.ReviewPagerFragment;
import com.yelp.android.util.ObjectDirtyEvent;

class ActivityReviewPager$4
  extends BroadcastReceiver
{
  ActivityReviewPager$4(ActivityReviewPager paramActivityReviewPager) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = (ReviewBroadcast)ObjectDirtyEvent.a(paramIntent);
    if ((paramContext.e() == ReviewState.FINISHED_RECENTLY) && (paramContext.c().equals(a.d())))
    {
      a.c().a(paramContext.b());
      a.d.g();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.ActivityReviewPager.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */