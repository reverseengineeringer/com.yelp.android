package com.yelp.android.ab;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.f;
import com.bumptech.glide.m;
import com.yelp.android.y.d;

class g
{
  private final com.yelp.android.p.a a;
  private final Handler b;
  private final int c;
  private final int d;
  private final k e;
  private final com.bumptech.glide.e<com.yelp.android.p.a, com.yelp.android.p.a, Bitmap, Bitmap> f;
  private boolean g;
  private h h;
  private h i;
  private f<Bitmap> j = d.b();
  
  public g(Context paramContext, com.bumptech.glide.load.engine.bitmap_recycle.e parame, com.yelp.android.p.a parama, Handler paramHandler, int paramInt1, int paramInt2)
  {
    a = parama;
    b = paramHandler;
    c = paramInt1;
    d = paramInt2;
    e = new k();
    parame = new n(parame);
    parama = new l();
    paramHandler = com.yelp.android.y.a.b();
    f = com.bumptech.glide.h.c(paramContext).a(parama, com.yelp.android.p.a.class).a(com.yelp.android.p.a.class).a(Bitmap.class).b(e).b(paramHandler).b(parame).b(true).b(DiskCacheStrategy.NONE);
  }
  
  public g(Context paramContext, com.yelp.android.p.a parama, int paramInt1, int paramInt2)
  {
    this(paramContext, com.bumptech.glide.h.b(paramContext).a(), parama, new Handler(Looper.getMainLooper()), paramInt1, paramInt2);
  }
  
  public Bitmap a()
  {
    if (h != null) {
      return h.a(h);
    }
    return null;
  }
  
  public void a(f<Bitmap> paramf)
  {
    if (paramf == null) {
      throw new NullPointerException("Transformation must not be null");
    }
    j = paramf;
  }
  
  public void a(j paramj)
  {
    if (g) {
      return;
    }
    g = true;
    a.a();
    i = new h(this, paramj, SystemClock.uptimeMillis() + a.b());
    i.a(a.d());
    e.a();
    f.b(a).b(new f[] { j }).a(i);
  }
  
  public void b()
  {
    g = false;
    if (h != null)
    {
      com.bumptech.glide.h.a(h);
      b.removeCallbacks(h);
      h = null;
    }
    if (i != null)
    {
      com.bumptech.glide.h.a(i);
      b.removeCallbacks(i);
      i = null;
    }
    a.e();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ab.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */