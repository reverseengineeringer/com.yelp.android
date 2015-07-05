package com.yelp.android.ui.activities.businesspage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.yelp.android.serializable.Tip;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.reviewpage.aw;
import com.yelp.android.ui.util.h;
import com.yelp.android.util.ObjectDirtyEvent;
import java.util.Collections;

class ao
  extends BroadcastReceiver
{
  ao(BusinessPageFragment paramBusinessPageFragment) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = (Tip)ObjectDirtyEvent.a(paramIntent);
    BusinessPageFragment.h(a).c(Collections.singletonList(paramContext));
    BusinessPageFragment.h(a).notifyDataSetChanged();
    BusinessPageFragment.i(a).clear();
    BusinessPageFragment.c(a).incrementTipCount();
    BusinessPageFragment.j(a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.ao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */