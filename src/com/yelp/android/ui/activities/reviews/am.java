package com.yelp.android.ui.activities.reviews;

import android.os.Handler;
import android.support.v7.app.ActionBar;
import android.view.animation.Animation;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.util.dd;

class am
  extends dd
{
  am(ReviewComposeFragment paramReviewComposeFragment) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    new Handler().post(new an(this));
  }
  
  public void onAnimationStart(Animation paramAnimation)
  {
    ((YelpActivity)a.getActivity()).getSupportActionBar().b(false);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.am
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */