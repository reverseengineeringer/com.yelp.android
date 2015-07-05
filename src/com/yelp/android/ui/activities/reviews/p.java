package com.yelp.android.ui.activities.reviews;

import android.text.TextUtils;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.TextView;
import com.yelp.android.ui.util.dd;

class p
  extends dd
{
  p(ActivityReviewWrite paramActivityReviewWrite, AlphaAnimation paramAlphaAnimation) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    if (!TextUtils.isEmpty(b.n()))
    {
      ActivityReviewWrite.c(b).startAnimation(a);
      return;
    }
    ActivityReviewWrite.c(b).setText("");
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */