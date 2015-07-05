package com.yelp.android.ui.activities.reviews;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ReviewEventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.ui.activities.addphoto.AddBusinessPhoto;
import com.yelp.android.ui.activities.addphoto.i;

class g
  implements View.OnClickListener
{
  g(ActivityReviewComplete paramActivityReviewComplete) {}
  
  public void onClick(View paramView)
  {
    if (ActivityReviewComplete.a(a).isEmpty()) {
      AppData.a(ReviewEventIri.ReviewPostedAddPhotoButtonPressed);
    }
    for (;;)
    {
      a.startActivityForResult(AddBusinessPhoto.a(a, ActivityReviewComplete.b(a), false), 1037);
      return;
      AppData.a(EventIri.BusinessPhotoAddMore);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */