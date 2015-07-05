package com.yelp.android.ui.activities.settings;

import android.view.View;
import android.view.animation.Animation;
import com.yelp.android.ui.util.dd;

class am
  extends dd
{
  private final View a;
  
  public am(View paramView)
  {
    a = paramView;
  }
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    a.setVisibility(8);
  }
  
  public void onAnimationStart(Animation paramAnimation)
  {
    a.setClickable(false);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.settings.am
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */