package com.yelp.android.ui.activities.profile;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.yelp.android.serializable.Tip;
import com.yelp.android.util.ObjectDirtyEvent;

class ActivityFirstAwards$1
  extends BroadcastReceiver
{
  ActivityFirstAwards$1(ActivityFirstAwards paramActivityFirstAwards) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = (Tip)ObjectDirtyEvent.a(paramIntent);
    ActivityFirstAwards.a(a).a(paramContext);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.ActivityFirstAwards.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */