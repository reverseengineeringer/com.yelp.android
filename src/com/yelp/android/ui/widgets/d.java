package com.yelp.android.ui.widgets;

import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import com.yelp.android.ui.util.dd;

class d
  extends dd
{
  d(b paramb, View paramView) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    paramAnimation = a.getParent();
    if ((paramAnimation != null) && ((paramAnimation instanceof ViewGroup))) {
      ((ViewGroup)paramAnimation).removeView(a);
    }
    b.a(b, false);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */