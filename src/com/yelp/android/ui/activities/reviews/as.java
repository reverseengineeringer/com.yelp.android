package com.yelp.android.ui.activities.reviews;

import android.text.TextUtils;
import com.yelp.android.analytics.iris.ReviewEventIri;
import com.yelp.android.appdata.AppData;

class as
  implements Runnable
{
  as(ReviewOverviewFragment paramReviewOverviewFragment) {}
  
  public void run()
  {
    a.a();
    if (!TextUtils.isEmpty(a.d.k())) {
      a.d.a(false);
    }
    ReviewOverviewFragment.a(a);
    ReviewEventIri localReviewEventIri = ReviewEventIri.ReviewWriteRating;
    if (ReviewOverviewFragment.b(a)) {}
    for (String str = "navigation_bar";; str = "overview_page")
    {
      AppData.a(localReviewEventIri, "source", str);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.as
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */