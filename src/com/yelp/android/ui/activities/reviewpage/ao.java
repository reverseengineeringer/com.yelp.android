package com.yelp.android.ui.activities.reviewpage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.Media;
import com.yelp.android.serializable.Media.MediaType;
import com.yelp.android.serializable.Photo;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.ui.activities.addphoto.i;
import com.yelp.android.util.ObjectDirtyEvent;

class ao
  extends BroadcastReceiver
{
  ao(ReviewFragment paramReviewFragment) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = (Media)ObjectDirtyEvent.a(paramIntent);
    if (paramContext.isMediaType(Media.MediaType.PHOTO))
    {
      paramContext = (Photo)paramContext;
      ReviewFragment.b(a).a(paramContext);
      ReviewFragment.a(a).updatePhoto(paramContext);
      new ObjectDirtyEvent(ReviewFragment.a(a), "com.yelp.android.review.update").a(AppData.b());
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.ao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */