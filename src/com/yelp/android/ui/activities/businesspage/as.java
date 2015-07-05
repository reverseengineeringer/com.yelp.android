package com.yelp.android.ui.activities.businesspage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.yelp.android.serializable.ReviewBroadcast;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.reviewpage.aw;
import com.yelp.android.ui.activities.reviewpage.bi;
import com.yelp.android.ui.activities.reviews.ReviewState;
import com.yelp.android.ui.panels.businesspage.b;
import com.yelp.android.util.ObjectDirtyEvent;
import java.util.List;

class as
  extends BroadcastReceiver
{
  as(BusinessPageFragment paramBusinessPageFragment) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    int j = 1;
    paramContext = (ReviewBroadcast)ObjectDirtyEvent.a(paramIntent);
    if (!paramContext.getBusinessId().equals(BusinessPageFragment.c(a).getId())) {
      return;
    }
    BusinessPageFragment.c(a).setReviewState(paramContext.getReviewState());
    BusinessPageFragment.c(a).setUserReviewRating(paramContext.getRating());
    BusinessPageFragment.j(a);
    BusinessPageFragment.m(a).a(BusinessPageFragment.c(a));
    BusinessPageFragment.a(a, BusinessPageFragment.n(a), true, a.getText(paramContext.getReviewState().getTextResourceForState()).toString());
    int i = j;
    if (!paramContext.isConvertedToTip()) {
      if (!ReviewState.FINISHED_RECENTLY.equals(paramContext.getReviewState())) {
        break label289;
      }
    }
    label289:
    for (i = j;; i = 0)
    {
      boolean bool = ReviewState.FINISHED_RECENTLY.equals(paramContext.getReviewState());
      if (i != 0)
      {
        if (BusinessPageFragment.o(a) != null) {
          BusinessPageFragment.o(a).clear();
        }
        BusinessPageFragment.h(a).clear();
        BusinessPageFragment.a(a, false);
        BusinessPageFragment.b(a, BusinessPageFragment.c(a).getId());
      }
      if (bool)
      {
        if (BusinessPageFragment.g(a) != null) {
          BusinessPageFragment.g(a).clear();
        }
        BusinessPageFragment.l(a).clear();
        BusinessPageFragment.b(a, false);
        BusinessPageFragment.c(a, BusinessPageFragment.c(a).getId());
      }
      BusinessPageFragment.j(a);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.as
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */