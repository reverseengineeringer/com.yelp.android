package com.yelp.android.ui.util;

import android.view.View;

public class q
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
  
  public <T extends View> void a(T paramT, final at.a<T> parama)
  {
    if (a())
    {
      parama.a(paramT, c, d);
      return;
    }
    if ((c()) && (b()))
    {
      parama.a(paramT, a, b);
      return;
    }
    at.a(paramT, new at.a()
    {
      public void a(T paramAnonymousT, int paramAnonymousInt1, int paramAnonymousInt2)
      {
        b(paramAnonymousInt1, paramAnonymousInt2);
        parama.a(paramAnonymousT, paramAnonymousInt1, paramAnonymousInt2);
      }
    });
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
 * Qualified Name:     com.yelp.android.ui.util.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */