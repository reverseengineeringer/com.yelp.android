package com.yelp.android.ui.util;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

final class av$1
  implements Animation.AnimationListener
{
  av$1(Animation.AnimationListener paramAnimationListener, View paramView, int paramInt) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    b.setVisibility(c);
    if (a != null) {
      a.onAnimationEnd(paramAnimation);
    }
  }
  
  public void onAnimationRepeat(Animation paramAnimation)
  {
    if (a != null) {
      a.onAnimationRepeat(paramAnimation);
    }
  }
  
  public void onAnimationStart(Animation paramAnimation)
  {
    if (a != null) {
      a.onAnimationStart(paramAnimation);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.av.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */