package com.yelp.android.af;

import android.graphics.drawable.Drawable;

public class a<T extends Drawable>
  implements g<T>
{
  private final l<T> a;
  private final int b;
  private d<T> c;
  
  public a()
  {
    this(300);
  }
  
  public a(int paramInt)
  {
    this(new l(new c(null)), paramInt);
  }
  
  a(l<T> paraml, int paramInt)
  {
    a = paraml;
    b = paramInt;
  }
  
  public e<T> a(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramBoolean1) {
      return h.b();
    }
    if (c == null) {
      c = new d(a.a(false, paramBoolean2), b);
    }
    return c;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.af.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */