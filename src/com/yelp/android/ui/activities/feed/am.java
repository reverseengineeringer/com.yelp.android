package com.yelp.android.ui.activities.feed;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.yelp.android.serializable.Tip;
import com.yelp.android.util.ObjectDirtyEvent;

class am
  extends BroadcastReceiver
{
  am(FeedFragment paramFeedFragment) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = (Tip)ObjectDirtyEvent.a(paramIntent);
    FeedFragment.a(a).a(paramContext.getId());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.am
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */