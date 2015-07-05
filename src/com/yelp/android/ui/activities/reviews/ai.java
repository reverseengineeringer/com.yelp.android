package com.yelp.android.ui.activities.reviews;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.yelp.android.analytics.iris.ReviewEventIri;
import com.yelp.android.appdata.AppData;

class ai
  implements MenuItem.OnMenuItemClickListener
{
  ai(ReviewComposeFragment paramReviewComposeFragment) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    a.d.c();
    AppData.a(ReviewEventIri.ReviewWriteNext);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */