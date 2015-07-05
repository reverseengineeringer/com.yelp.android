package com.yelp.android.ui.activities.reviewpage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.yelp.android.serializable.ReviewBroadcast;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.ui.activities.reviews.ReviewState;
import com.yelp.android.ui.widgets.ReviewPagerFragment;
import com.yelp.android.util.ObjectDirtyEvent;

class l
  extends BroadcastReceiver
{
  l(ActivityReviewPager paramActivityReviewPager) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = (ReviewBroadcast)ObjectDirtyEvent.a(paramIntent);
    if ((paramContext.getReviewState() == ReviewState.FINISHED_RECENTLY) && (paramContext.getId().equals(a.d())))
    {
      a.c().setText(paramContext.getText());
      a.d.f();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */