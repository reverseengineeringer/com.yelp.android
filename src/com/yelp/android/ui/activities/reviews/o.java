package com.yelp.android.ui.activities.reviews;

import android.text.TextUtils;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.TextView;
import com.yelp.android.ui.util.dd;

class o
  extends dd
{
  o(ActivityReviewWrite paramActivityReviewWrite, String paramString, AlphaAnimation paramAlphaAnimation) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    if (TextUtils.isEmpty(c.n())) {
      ActivityReviewWrite.c(c).startAnimation(b);
    }
  }
  
  public void onAnimationStart(Animation paramAnimation)
  {
    if (!TextUtils.isEmpty(c.n())) {
      ActivityReviewWrite.c(c).setText(a);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */