package com.yelp.android.ui.panels;

import android.content.Intent;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.ui.activities.reviews.ActivityReviewWrite;
import com.yelp.android.ui.activities.reviews.ReviewSource;
import com.yelp.android.ui.activities.reviews.StarsView;

class j
  implements Runnable
{
  j(BizAttributesFragment paramBizAttributesFragment, StarsView paramStarsView) {}
  
  public void run()
  {
    if (BizAttributesFragment.i(b) != null) {
      BizAttributesFragment.i(b).a();
    }
    AppData.a(EventIri.CheckInsReceiptReviewStars);
    Intent localIntent = ActivityReviewWrite.a(b.getActivity(), BizAttributesFragment.c(b), a.getNumStars(), ReviewSource.PostCheckInSurvey);
    b.startActivity(localIntent);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */