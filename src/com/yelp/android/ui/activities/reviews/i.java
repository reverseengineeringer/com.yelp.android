package com.yelp.android.ui.activities.reviews;

import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.animation.Animation;
import com.yelp.android.ui.util.dd;

class i
  extends dd
{
  i(h paramh) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    a.a.getSupportFragmentManager().beginTransaction().remove(ActivityReviewComplete.c(a.a)).commit();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */