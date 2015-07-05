package com.yelp.android.ui.panels;

import android.view.animation.Animation;
import com.yelp.android.ui.util.dd;

class ai
  extends dd
{
  ai(ah paramah) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    super.onAnimationEnd(paramAnimation);
    if (YourNextReviewAwaitsFragment.c(a.a) != null) {
      YourNextReviewAwaitsFragment.c(a.a).f();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */