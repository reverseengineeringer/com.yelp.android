package com.yelp.android.ui.activities.businesspage;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.ui.activities.reviews.ReviewSource;
import java.util.List;

class aj
  implements View.OnClickListener
{
  aj(BusinessPageFragment paramBusinessPageFragment) {}
  
  public void onClick(View paramView)
  {
    String str;
    if ((BusinessPageFragment.g(a) == null) || (BusinessPageFragment.g(a).isEmpty())) {
      str = "no_review_button";
    }
    for (paramView = ReviewSource.BizPageNoReviewButton;; paramView = ReviewSource.BizPageWithReviewsButton)
    {
      BusinessPageFragment.a(a, str);
      paramView = BusinessPageFragment.a(a, paramView);
      a.a(paramView);
      return;
      str = "with_reviews_button";
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */