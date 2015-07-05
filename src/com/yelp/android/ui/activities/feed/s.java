package com.yelp.android.ui.activities.feed;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.yelp.android.serializable.BizPhotoFeedEntry;
import com.yelp.android.serializable.Media;
import com.yelp.android.serializable.Media.MediaType;
import com.yelp.android.serializable.Photo;
import com.yelp.android.util.ObjectDirtyEvent;

class s
  extends BroadcastReceiver
{
  s(CurrentUserFeedFragment paramCurrentUserFeedFragment) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = (Media)ObjectDirtyEvent.a(paramIntent);
    if (paramContext.isMediaType(Media.MediaType.PHOTO))
    {
      paramContext = (Photo)paramContext;
      paramIntent = new Bundle();
      paramIntent.putParcelable(BizPhotoFeedEntry.PHOTO_REMOVED, paramContext);
      a.f().a(paramContext.getBusinessId(), paramIntent);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */