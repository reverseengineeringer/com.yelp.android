package com.yelp.android.ui.activities.businesspage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.yelp.android.serializable.Media;
import com.yelp.android.ui.util.ax;
import com.yelp.android.util.ObjectDirtyEvent;

class au
  extends BroadcastReceiver
{
  au(BusinessPageFragment paramBusinessPageFragment) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    BusinessPageFragment.p(a).a((Media)ObjectDirtyEvent.a(paramIntent));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.au
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */