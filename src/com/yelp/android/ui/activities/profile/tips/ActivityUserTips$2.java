package com.yelp.android.ui.activities.profile.tips;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.yelp.android.serializable.Tip;
import com.yelp.android.util.ObjectDirtyEvent;

class ActivityUserTips$2
  extends BroadcastReceiver
{
  ActivityUserTips$2(ActivityUserTips paramActivityUserTips) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    ActivityUserTips.a(a).c((Tip)ObjectDirtyEvent.a(paramIntent));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.tips.ActivityUserTips.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */