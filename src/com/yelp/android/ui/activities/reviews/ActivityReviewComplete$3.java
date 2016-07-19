package com.yelp.android.ui.activities.reviews;

import android.support.v4.app.l;
import android.support.v4.app.o;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import com.yelp.android.ui.panels.BizAttributesFragment;
import com.yelp.android.ui.panels.BizAttributesFragment.a;
import com.yelp.android.ui.util.av;
import com.yelp.android.ui.util.av.a;
import com.yelp.android.ui.widgets.LeftDrawableButton;

class ActivityReviewComplete$3
  implements BizAttributesFragment.a
{
  ActivityReviewComplete$3(ActivityReviewComplete paramActivityReviewComplete) {}
  
  public void a()
  {
    ActivityReviewComplete.d(a).a();
    av.a local1 = new av.a()
    {
      public void onAnimationEnd(Animation paramAnonymousAnimation)
      {
        a.getSupportFragmentManager().a().a(ActivityReviewComplete.d(a)).a();
      }
    };
    View localView = ActivityReviewComplete.d(a).getView();
    if (ActivityReviewComplete.e(a).getVisibility() == 0)
    {
      AlphaAnimation localAlphaAnimation = new AlphaAnimation(1.0F, 0.0F);
      localAlphaAnimation.setDuration(av.a);
      localAlphaAnimation.setAnimationListener(local1);
      localView.startAnimation(localAlphaAnimation);
      return;
    }
    av.a(localView, av.a, true, local1);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.ActivityReviewComplete.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */