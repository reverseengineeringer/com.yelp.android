package com.yelp.android.ui.util;

import android.view.View;

public class z
{
  private int a;
  private int b;
  private int c;
  private int d;
  private boolean e;
  
  public void a(int paramInt1, int paramInt2)
  {
    if ((paramInt1 <= 0) || (paramInt2 <= 0)) {
      throw new IllegalArgumentException("Dimensions must positive.");
    }
    c = paramInt1;
    d = paramInt2;
  }
  
  public <T extends View> void a(T paramT, cu<T> paramcu)
  {
    if (a())
    {
      paramcu.a(paramT, c, d);
      return;
    }
    if ((c()) && (b()))
    {
      paramcu.a(paramT, a, b);
      return;
    }
    cs.a(paramT, new aa(this, paramcu));
  }
  
  public void a(boolean paramBoolean)
  {
    e = paramBoolean;
  }
  
  public boolean a()
  {
    return (c > 0) && (d > 0);
  }
  
  protected void b(int paramInt1, int paramInt2)
  {
    if ((paramInt1 == 0) || (paramInt2 == 0)) {
      return;
    }
    a = paramInt1;
    b = paramInt2;
  }
  
  public boolean b()
  {
    return (a > 0) && (b > 0);
  }
  
  public boolean c()
  {
    return e;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */