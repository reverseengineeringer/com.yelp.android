package com.yelp.android.ui.activities.reviews;

import android.text.TextUtils;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.TextView;
import com.yelp.android.ui.util.av.a;

class ActivityReviewWrite$5
  extends av.a
{
  ActivityReviewWrite$5(ActivityReviewWrite paramActivityReviewWrite, AlphaAnimation paramAlphaAnimation) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    if (!TextUtils.isEmpty(b.n()))
    {
      ActivityReviewWrite.d(b).startAnimation(a);
      return;
    }
    ActivityReviewWrite.d(b).setText("");
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.ActivityReviewWrite.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */