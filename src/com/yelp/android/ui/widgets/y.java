package com.yelp.android.ui.widgets;

import android.view.animation.Animation;
import com.yelp.android.ui.util.cr;
import com.yelp.android.ui.util.dd;

class y
  extends dd
{
  y(RecipientBoxView paramRecipientBoxView) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    RecipientBoxView.b(a, false);
    RecipientBoxView.b(a, null);
    RecipientBoxView.a(a, null);
    cr.a(RecipientBoxView.c(a));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */