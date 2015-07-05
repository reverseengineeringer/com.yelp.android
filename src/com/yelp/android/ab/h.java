package com.yelp.android.ab;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import com.yelp.android.af.e;

class h
  extends com.yelp.android.ag.g<Bitmap>
  implements Runnable
{
  private final j b;
  private final long c;
  private Bitmap d;
  private int e;
  
  public h(g paramg, j paramj, long paramLong)
  {
    super(g.a(paramg), g.b(paramg));
    b = paramj;
    c = paramLong;
  }
  
  public void a(int paramInt)
  {
    e = paramInt;
  }
  
  public void a(Bitmap paramBitmap, e<? super Bitmap> parame)
  {
    d = paramBitmap;
    g.c(a).postAtTime(this, c);
  }
  
  public void a(Drawable paramDrawable)
  {
    d = null;
  }
  
  public void run()
  {
    g.a(a, false);
    b.b(e);
    if (g.d(a) != null)
    {
      h localh = g.d(a);
      g.c(a).post(new i(this, localh));
    }
    g.a(a, this);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ab.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */