package com.yelp.android.ui.activities.reviewpage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.util.ObjectDirtyEvent;
import java.util.Collection;
import java.util.Iterator;
import java.util.TreeMap;

class a
  extends BroadcastReceiver
{
  a(ActivityAbstractReviewPage paramActivityAbstractReviewPage) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = (YelpBusinessReview)ObjectDirtyEvent.a(paramIntent);
    paramIntent = a.b.values().iterator();
    while (paramIntent.hasNext()) {
      ((bi)paramIntent.next()).a(paramContext);
    }
    a.a(paramContext);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */