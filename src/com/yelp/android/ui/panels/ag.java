package com.yelp.android.ui.panels;

import android.view.animation.Animation;
import com.yelp.android.ui.activities.reviews.ActivityReviewComplete;
import com.yelp.android.ui.util.dd;

class ag
  extends dd
{
  ag(YourNextReviewAwaitsFragment paramYourNextReviewAwaitsFragment, ak paramak) {}
  
  public void a(Animation paramAnimation)
  {
    ((ActivityReviewComplete)b.getActivity()).c();
  }
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    super.onAnimationEnd(paramAnimation);
    a.getLayoutParams().height = -2;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */