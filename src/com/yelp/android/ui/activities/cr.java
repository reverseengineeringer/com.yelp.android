package com.yelp.android.ui.activities;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.yelp.android.serializable.Media;
import com.yelp.android.util.ObjectDirtyEvent;

class cr
  extends BroadcastReceiver
{
  cr(ActivityMediaBrowser paramActivityMediaBrowser) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = (Media)ObjectDirtyEvent.a(paramIntent);
    ActivityMediaBrowser.a(a, paramContext);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.cr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */