package com.yelp.android.ui.activities.reviews;

import com.yelp.android.analytics.iris.ReviewEventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.ui.util.cw;

class ag
  implements Runnable
{
  ag(ReviewComposeFragment paramReviewComposeFragment) {}
  
  public void run()
  {
    int i = a.a();
    a.d.a(i);
    ReviewComposeFragment.a(a, cw.c);
    AppData.a(ReviewEventIri.ReviewWriteRating, "source", "compose_page");
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */