package com.yelp.android.ui.activities.reviewpage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.util.ObjectDirtyEvent;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.TreeMap;

class b
  extends BroadcastReceiver
{
  b(ActivityAbstractReviewPage paramActivityAbstractReviewPage) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = ObjectDirtyEvent.c(paramIntent).iterator();
    while (paramContext.hasNext())
    {
      paramIntent = (YelpBusinessReview)paramContext.next();
      Iterator localIterator = a.b.values().iterator();
      while (localIterator.hasNext()) {
        ((bi)localIterator.next()).a(paramIntent);
      }
      a.a(paramIntent);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */