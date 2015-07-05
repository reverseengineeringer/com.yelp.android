package com.yelp.android.ui.activities.profile;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.yelp.android.util.ObjectDirtyEvent;

class f
  extends BroadcastReceiver
{
  f(ActivityUserProfile paramActivityUserProfile) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (ActivityUserProfile.a(a) != null)
    {
      int i = ObjectDirtyEvent.b(paramIntent);
      ActivityUserProfile.a(a).a(i);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */