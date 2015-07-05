package com.yelp.android.ui.activities.businesspage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.yelp.android.serializable.Tip;
import com.yelp.android.ui.activities.reviewpage.aw;
import com.yelp.android.util.ObjectDirtyEvent;

class ap
  extends BroadcastReceiver
{
  ap(BusinessPageFragment paramBusinessPageFragment) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = (Tip)ObjectDirtyEvent.a(paramIntent);
    BusinessPageFragment.h(a).a(paramContext);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.ap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */