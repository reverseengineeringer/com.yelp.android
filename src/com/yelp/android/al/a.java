package com.yelp.android.al;

import android.graphics.drawable.Drawable;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;

public class a<T extends Drawable>
  implements d<T>
{
  private final g<T> a;
  private final int b;
  private b<T> c;
  private b<T> d;
  
  public a()
  {
    this(300);
  }
  
  public a(int paramInt)
  {
    this(new g(new a(paramInt)), paramInt);
  }
  
  a(g<T> paramg, int paramInt)
  {
    a = paramg;
    b = paramInt;
  }
  
  private c<T> a()
  {
    if (c == null) {
      c = new b(a.a(false, true), b);
    }
    return c;
  }
  
  private c<T> b()
  {
    if (d == null) {
      d = new b(a.a(false, false), b);
    }
    return d;
  }
  
  public c<T> a(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramBoolean1) {
      return e.b();
    }
    if (paramBoolean2) {
      return a();
    }
    return b();
  }
  
  private static class a
    implements f.a
  {
    private final int a;
    
    a(int paramInt)
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
}

/* Location:
 * Qualified Name:     com.yelp.android.al.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */