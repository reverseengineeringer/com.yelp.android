package com.yelp.android.y;

import android.annotation.SuppressLint;
import com.bumptech.glide.load.b;
import com.bumptech.glide.load.engine.i;
import com.yelp.android.ao.e;

public class g
  extends e<b, i<?>>
  implements h
{
  private h.a a;
  
  public g(int paramInt)
  {
    super(paramInt);
  }
  
  protected int a(i<?> parami)
  {
    return parami.c();
  }
  
  @SuppressLint({"InlinedApi"})
  public void a(int paramInt)
  {
    if (paramInt >= 60) {
      a();
    }
    while (paramInt < 40) {
      return;
    }
    b(b() / 2);
  }
  
  protected void a(b paramb, i<?> parami)
  {
    if (a != null) {
      a.b(parami);
    }
  }
  
  public void a(h.a parama)
  {
    a = parama;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.y.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */