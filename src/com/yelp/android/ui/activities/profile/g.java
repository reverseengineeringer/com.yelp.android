package com.yelp.android.ui.activities.profile;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class g
  extends BroadcastReceiver
{
  g(ActivityUserProfile paramActivityUserProfile) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ("android.intent.action.EDIT".equals(paramIntent.getAction()))
    {
      paramContext = j.a(paramIntent);
      if (ActivityUserProfile.a(a) != null) {
        ActivityUserProfile.a(a).a(paramContext);
      }
    }
    do
    {
      return;
      if ("com.yelp.android.offer_redeemed".equals(paramIntent.getAction()))
      {
        ActivityUserProfile.a(a).h();
        return;
      }
    } while (!"REFRESH_USER_ACTION".equals(paramIntent.getAction()));
    ActivityUserProfile.a(a).h();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */