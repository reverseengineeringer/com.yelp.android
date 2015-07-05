package com.yelp.android.ui.widgets;

import android.view.animation.Animation;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.util.dd;

class x
  extends dd
{
  x(RecipientBoxView paramRecipientBoxView, User paramUser) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    RecipientBoxView.b(b, true);
  }
  
  public void onAnimationStart(Animation paramAnimation)
  {
    RecipientBoxView.a(b, a.getUserPhotoUrl());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */