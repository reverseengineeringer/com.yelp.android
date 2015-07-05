package com.yelp.android.ui.activities.reviews;

import com.yelp.android.serializable.YelpBusiness;

class ae
  implements Runnable
{
  ae(ReviewComposeFragment paramReviewComposeFragment) {}
  
  public void run()
  {
    if (ReviewComposeFragment.o(a).getReviewCount() > 0) {
      ReviewComposeFragment.a(a, ReviewComposeFragment.o(a));
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */