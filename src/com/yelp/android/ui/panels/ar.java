package com.yelp.android.ui.panels;

import android.view.View;
import android.view.animation.Animation;
import com.yelp.android.ui.util.dd;

class ar
  extends dd
{
  ar(ak paramak) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    super.onAnimationEnd(paramAnimation);
    ak.e(a).setVisibility(4);
    a.postDelayed(new as(this), 1500L);
  }
  
  public void onAnimationStart(Animation paramAnimation)
  {
    ak.a(a, true);
    ak.f(a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.ar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */