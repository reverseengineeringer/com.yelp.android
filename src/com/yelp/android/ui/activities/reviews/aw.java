package com.yelp.android.ui.activities.reviews;

import android.view.View;
import android.view.animation.Animation;
import com.yelp.android.ui.util.dd;
import com.yelp.android.ui.widgets.SpannableFrameLayout;

class aw
  extends dd
{
  aw(ReviewOverviewFragment paramReviewOverviewFragment) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    a.d.d();
    ReviewOverviewFragment.e(a).setVisibility(8);
    ReviewOverviewFragment.f(a).setVisibility(8);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.aw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */