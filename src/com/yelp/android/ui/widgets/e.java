package com.yelp.android.ui.widgets;

import android.view.View;
import android.view.animation.Animation;
import com.yelp.android.ui.util.dd;

class e
  extends dd
{
  e(b paramb, View paramView) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    a.postDelayed(new f(this), 2000L);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */