package com.yelp.android.ui.activities.settings;

import android.view.View;
import android.view.animation.Animation;
import com.yelp.android.ui.util.dd;

class al
  extends dd
{
  private final View a;
  
  public al(View paramView)
  {
    a = paramView;
  }
  
  public void onAnimationStart(Animation paramAnimation)
  {
    a.setClickable(true);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.settings.al
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */