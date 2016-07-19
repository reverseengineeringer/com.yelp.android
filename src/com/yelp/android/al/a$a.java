package com.yelp.android.al;

import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;

class a$a
  implements f.a
{
  private final int a;
  
  a$a(int paramInt)
  {
    a = paramInt;
  }
  
  public Animation a()
  {
    AlphaAnimation localAlphaAnimation = new AlphaAnimation(0.0F, 1.0F);
    localAlphaAnimation.setDuration(a);
    return localAlphaAnimation;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.al.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */