package com.yelp.android.ui.activities.profile;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.yelp.android.serializable.ReviewBroadcast;
import com.yelp.android.serializable.ReviewDraft;
import com.yelp.android.ui.activities.reviews.ReviewState;
import com.yelp.android.util.ObjectDirtyEvent;

class ActivityUserDraftList$1
  extends BroadcastReceiver
{
  ActivityUserDraftList$1(ActivityUserDraftList paramActivityUserDraftList) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = (ReviewBroadcast)ObjectDirtyEvent.a(paramIntent);
    if (paramContext.e() == ReviewState.DRAFTED)
    {
      paramIntent = ActivityUserDraftList.a(a).a(paramContext.c());
      if (paramIntent != null)
      {
        paramIntent.a(paramContext.a() * 2);
        paramIntent.a(paramContext.b());
        ActivityUserDraftList.a(a).notifyDataSetChanged();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.ActivityUserDraftList.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */