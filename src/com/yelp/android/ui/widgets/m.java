package com.yelp.android.ui.widgets;

import android.view.animation.Animation;
import android.widget.TextView;
import com.yelp.android.ui.util.dd;

class m
  extends dd
{
  m(k paramk) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    k.a(a, false);
    if (k.a(a)) {
      k.c(a).startAnimation(k.d(a));
    }
    for (;;)
    {
      k.b(a, false);
      return;
      k.c(a).setVisibility(4);
    }
  }
  
  public void onAnimationStart(Animation paramAnimation)
  {
    k.c(a).setVisibility(0);
    k.b(a, true);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */