package com.yelp.android.ui.activities.reviewpage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.util.ObjectDirtyEvent;
import java.util.ArrayList;
import java.util.Iterator;

class ap
  extends BroadcastReceiver
{
  ap(ReviewFragment paramReviewFragment) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = ObjectDirtyEvent.c(paramIntent).iterator();
    while (paramContext.hasNext())
    {
      paramIntent = (YelpBusinessReview)paramContext.next();
      if (paramIntent.equals(ReviewFragment.a(a))) {
        ReviewFragment.a(a, paramIntent);
      }
    }
    ReviewFragment.c(a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.ap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */