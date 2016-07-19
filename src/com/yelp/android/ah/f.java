package com.yelp.android.ah;

import android.graphics.Bitmap;
import com.bumptech.glide.load.engine.i;
import com.yelp.android.ag.e;
import com.yelp.android.x.c;

public class f
  implements com.bumptech.glide.load.f<a>
{
  private final com.bumptech.glide.load.f<Bitmap> a;
  private final com.bumptech.glide.load.f<com.yelp.android.ag.b> b;
  
  f(com.bumptech.glide.load.f<Bitmap> paramf, com.bumptech.glide.load.f<com.yelp.android.ag.b> paramf1)
  {
    a = paramf;
    b = paramf1;
  }
  
  public f(c paramc, com.bumptech.glide.load.f<Bitmap> paramf)
  {
    this(paramf, new e(paramf, paramc));
  }
  
  public i<a> a(i<a> parami, int paramInt1, int paramInt2)
  {
    i locali1 = ((a)parami.b()).b();
    i locali2 = ((a)parami.b()).c();
    Object localObject;
    if ((locali1 != null) && (a != null))
    {
      locali2 = a.a(locali1, paramInt1, paramInt2);
      localObject = parami;
      if (!locali1.equals(locali2)) {
        localObject = new b(new a(locali2, ((a)parami.b()).c()));
      }
    }
    do
    {
      do
      {
        do
        {
          return (i<a>)localObject;
          localObject = parami;
        } while (locali2 == null);
        localObject = parami;
      } while (b == null);
      locali1 = b.a(locali2, paramInt1, paramInt2);
      localObject = parami;
    } while (locali2.equals(locali1));
    return new b(new a(((a)parami.b()).b(), locali1));
  }
  
  public String a()
  {
    return a.a();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ah.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */