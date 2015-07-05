package com.yelp.android.ui.activities.reviews;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.ReviewEventIri;
import com.yelp.android.appdata.AppData;
import java.util.Set;

class aa
  implements View.OnClickListener
{
  aa(z paramz, Integer paramInteger, ab paramab) {}
  
  public void onClick(View paramView)
  {
    if (z.a(c).contains(a))
    {
      z.a(c).remove(a);
      AppData.a(ReviewEventIri.PreviousReviewsCollapse);
      z.a(c, b);
      return;
    }
    z.a(c).add(a);
    AppData.a(ReviewEventIri.PreviousReviewsExpand);
    z.b(c, b);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */