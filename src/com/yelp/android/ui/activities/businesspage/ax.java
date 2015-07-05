package com.yelp.android.ui.activities.businesspage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.ui.activities.reviewpage.bi;
import com.yelp.android.util.ObjectDirtyEvent;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;

class ax
  extends BroadcastReceiver
{
  ax(BusinessPageFragment paramBusinessPageFragment) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = ObjectDirtyEvent.c(paramIntent).iterator();
    while (paramContext.hasNext())
    {
      paramIntent = (YelpBusinessReview)paramContext.next();
      Iterator localIterator = BusinessPageFragment.k(a).keySet().iterator();
      while (localIterator.hasNext()) {
        ((bi)localIterator.next()).a(paramIntent);
      }
      BusinessPageFragment.l(a).a(paramIntent);
      int i = BusinessPageFragment.g(a).indexOf(paramIntent);
      if (i >= 0) {
        BusinessPageFragment.g(a).set(i, paramIntent);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.ax
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */