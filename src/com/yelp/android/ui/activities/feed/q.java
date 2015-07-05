package com.yelp.android.ui.activities.feed;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.yelp.android.serializable.Tip;
import com.yelp.android.serializable.TipFeedEntry;
import com.yelp.android.util.ObjectDirtyEvent;

class q
  extends BroadcastReceiver
{
  q(CurrentUserFeedFragment paramCurrentUserFeedFragment) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = (Tip)ObjectDirtyEvent.a(paramIntent);
    paramIntent = new Bundle();
    paramIntent.putParcelable(TipFeedEntry.CONTENT_KEY, paramContext);
    a.a.a(paramContext.getId(), paramIntent);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */