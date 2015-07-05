package com.yelp.android.ui.widgets;

import android.app.Activity;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;

public class b
{
  private boolean a = false;
  private Animation b = null;
  private Animation c = null;
  
  private void a(Activity paramActivity, View paramView)
  {
    c = AnimationUtils.loadAnimation(paramActivity, 2130968608);
    c.setDuration(400L);
    c.setAnimationListener(new d(this, paramView));
    b = AnimationUtils.loadAnimation(paramActivity, 2130968603);
    b.setDuration(300L);
    b.setAnimationListener(new e(this, paramView));
  }
  
  public void a(Activity paramActivity, RelativeLayout paramRelativeLayout)
  {
    if (a) {
      return;
    }
    a = true;
    ImageView localImageView = new ImageView(paramActivity);
    localImageView.setImageResource(2130837877);
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
    localLayoutParams.addRule(12);
    localImageView.setLayoutParams(localLayoutParams);
    localImageView.setVisibility(4);
    paramRelativeLayout.addView(localImageView);
    a(paramActivity, localImageView);
    localImageView.postDelayed(new c(this, localImageView), 200L);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */