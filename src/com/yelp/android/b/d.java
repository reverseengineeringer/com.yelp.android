package com.yelp.android.b;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewPropertyAnimator;

class d
  implements b
{
  private TimeInterpolator a;
  
  public void a(View paramView)
  {
    if (a == null) {
      a = new ValueAnimator().getInterpolator();
    }
    paramView.animate().setInterpolator(a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.b.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */