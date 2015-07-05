package com.yelp.android.ui.widgets;

import android.view.animation.Animation;
import android.widget.TextView;
import com.yelp.android.ui.util.dd;

class l
  extends dd
{
  l(k paramk) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    k.a(a, true);
    if (!k.a(a)) {
      k.c(a).startAnimation(k.b(a));
    }
    k.b(a, false);
  }
  
  public void onAnimationStart(Animation paramAnimation)
  {
    k.c(a).setVisibility(0);
    k.b(a, true);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */