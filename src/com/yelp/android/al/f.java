package com.yelp.android.al;

import android.view.View;
import android.view.animation.Animation;

public class f<R>
  implements c<R>
{
  private final a a;
  
  f(a parama)
  {
    a = parama;
  }
  
  public boolean a(R paramR, c.a parama)
  {
    paramR = parama.b_();
    if (paramR != null)
    {
      paramR.clearAnimation();
      paramR.startAnimation(a.a());
    }
    return false;
  }
  
  static abstract interface a
  {
    public abstract Animation a();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.al.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */