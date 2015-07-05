package com.yelp.android.ui.activities;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.widget.LinearLayout.LayoutParams;

class bj
  implements Animation.AnimationListener
{
  bj(ActivityCreateAccount paramActivityCreateAccount, View paramView, int paramInt) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    a.clearAnimation();
    paramAnimation = (LinearLayout.LayoutParams)a.getLayoutParams();
    paramAnimation.setMargins(leftMargin, topMargin + b, rightMargin, bottomMargin);
    a.setLayoutParams(paramAnimation);
  }
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation) {}
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.bj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */