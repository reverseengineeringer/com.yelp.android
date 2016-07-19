package com.yelp.android.ui.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.yelp.android.serializable.Media;
import com.yelp.android.serializable.Media.MediaType;
import com.yelp.android.serializable.Photo;
import com.yelp.android.ui.activities.addphoto.a;
import com.yelp.android.util.ObjectDirtyEvent;

class ActivityYelpHopScotchMediaList$1
  extends BroadcastReceiver
{
  ActivityYelpHopScotchMediaList$1(ActivityYelpHopScotchMediaList paramActivityYelpHopScotchMediaList) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = (Media)ObjectDirtyEvent.a(paramIntent);
    if (paramContext.a(Media.MediaType.PHOTO)) {
      a.c.a((Photo)paramContext);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.ActivityYelpHopScotchMediaList.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */