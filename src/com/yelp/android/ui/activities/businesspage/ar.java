package com.yelp.android.ui.activities.businesspage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.ui.activities.reviewpage.bi;
import com.yelp.android.util.ObjectDirtyEvent;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Set;

class ar
  extends BroadcastReceiver
{
  ar(BusinessPageFragment paramBusinessPageFragment) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = (YelpBusinessReview)ObjectDirtyEvent.a(paramIntent);
    paramIntent = BusinessPageFragment.k(a).keySet().iterator();
    while (paramIntent.hasNext()) {
      ((bi)paramIntent.next()).a(paramContext);
    }
    BusinessPageFragment.l(a).a(paramContext);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.ar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */