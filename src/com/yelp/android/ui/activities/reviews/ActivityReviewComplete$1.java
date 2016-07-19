package com.yelp.android.ui.activities.reviews;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.ui.activities.addphoto.AddBusinessPhoto;
import com.yelp.android.ui.activities.addphoto.a;

class ActivityReviewComplete$1
  implements View.OnClickListener
{
  ActivityReviewComplete$1(ActivityReviewComplete paramActivityReviewComplete) {}
  
  public void onClick(View paramView)
  {
    if (ActivityReviewComplete.a(a).isEmpty()) {
      AppData.a(EventIri.ReviewPostedAddPhotoButtonPressed);
    }
    for (;;)
    {
      a.startActivityForResult(AddBusinessPhoto.a(a, ActivityReviewComplete.b(a), false), 1041);
      return;
      AppData.a(EventIri.BusinessPhotoAddMore);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.ActivityReviewComplete.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */