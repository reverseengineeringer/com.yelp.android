package com.yelp.android.ui.activities.reviews;

import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import com.yelp.android.ui.panels.BizAttributesFragment;
import com.yelp.android.ui.panels.o;
import com.yelp.android.ui.util.cw;
import com.yelp.android.ui.widgets.LeftDrawableButton;

class h
  implements o
{
  h(ActivityReviewComplete paramActivityReviewComplete) {}
  
  public void a()
  {
    ActivityReviewComplete.c(a).a();
    i locali = new i(this);
    View localView = ActivityReviewComplete.c(a).getView();
    if (ActivityReviewComplete.d(a).getVisibility() == 0)
    {
      AlphaAnimation localAlphaAnimation = new AlphaAnimation(1.0F, 0.0F);
      localAlphaAnimation.setDuration(cw.a);
      localAlphaAnimation.setAnimationListener(locali);
      localView.startAnimation(localAlphaAnimation);
      return;
    }
    cw.a(localView, cw.a, true, locali);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */