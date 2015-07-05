package com.yelp.android.ui.activities.reviewpage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.ui.widgets.ReviewPagerFragment;
import com.yelp.android.util.ObjectDirtyEvent;
import java.util.ArrayList;
import java.util.Iterator;

class m
  extends BroadcastReceiver
{
  m(ActivityReviewPager paramActivityReviewPager) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = ObjectDirtyEvent.c(paramIntent).iterator();
    while (paramContext.hasNext())
    {
      paramIntent = (YelpBusinessReview)paramContext.next();
      int i = a.c.indexOf(paramIntent);
      if (i >= 0) {
        a.c.set(i, paramIntent);
      }
      a.d.a(paramIntent);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */