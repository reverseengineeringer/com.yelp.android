package com.yelp.android.ui.activities.animatedonboarding;

import android.annotation.SuppressLint;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

class ActivityAnimatedOnboarding$1
  implements View.OnTouchListener
{
  ActivityAnimatedOnboarding$1(ActivityAnimatedOnboarding paramActivityAnimatedOnboarding) {}
  
  @SuppressLint({"ClickableViewAccessibility"})
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 0) {
      ActivityAnimatedOnboarding.a(a, true);
    }
    if (paramMotionEvent.getAction() == 1) {
      ActivityAnimatedOnboarding.a(a, false);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.animatedonboarding.ActivityAnimatedOnboarding.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */