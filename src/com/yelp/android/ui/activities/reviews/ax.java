package com.yelp.android.ui.activities.reviews;

import android.view.animation.Animation;
import com.yelp.android.ui.util.cw;
import com.yelp.android.ui.util.dd;

class ax
  extends dd
{
  ax(ReviewOverviewFragment paramReviewOverviewFragment) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    paramAnimation = a.d.n();
    cw.c(a.a, cw.c);
    if (a.d.m()) {
      a.d.a();
    }
    for (;;)
    {
      a.d.c(false);
      return;
      a.d.a(paramAnimation, false);
    }
  }
  
  public void onAnimationStart(Animation paramAnimation)
  {
    a.a.setVisibility(4);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.ax
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */