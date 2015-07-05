package com.yelp.android.s;

import android.annotation.SuppressLint;
import com.bumptech.glide.load.b;
import com.bumptech.glide.load.engine.t;
import com.yelp.android.ai.d;

public class e
  extends d<b, t<?>>
  implements f
{
  private g a;
  
  public e(int paramInt)
  {
    super(paramInt);
  }
  
  protected int a(t<?> paramt)
  {
    return paramt.c();
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
  
  protected void a(b paramb, t<?> paramt)
  {
    if (a != null) {
      a.b(paramt);
    }
  }
  
  public void a(g paramg)
  {
    a = paramg;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.s.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */