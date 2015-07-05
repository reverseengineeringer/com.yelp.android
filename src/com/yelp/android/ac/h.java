package com.yelp.android.ac;

import android.graphics.Bitmap;
import com.bumptech.glide.load.engine.bitmap_recycle.e;
import com.bumptech.glide.load.engine.t;

public class h
  implements com.bumptech.glide.load.f<a>
{
  private final com.bumptech.glide.load.f<Bitmap> a;
  private final com.bumptech.glide.load.f<com.yelp.android.ab.b> b;
  
  public h(e parame, com.bumptech.glide.load.f<Bitmap> paramf)
  {
    this(paramf, new com.yelp.android.ab.f(paramf, parame));
  }
  
  h(com.bumptech.glide.load.f<Bitmap> paramf, com.bumptech.glide.load.f<com.yelp.android.ab.b> paramf1)
  {
    a = paramf;
    b = paramf1;
  }
  
  public t<a> a(t<a> paramt, int paramInt1, int paramInt2)
  {
    t localt1 = ((a)paramt.b()).b();
    t localt2 = ((a)paramt.b()).c();
    Object localObject;
    if ((localt1 != null) && (a != null))
    {
      localt2 = a.a(localt1, paramInt1, paramInt2);
      localObject = paramt;
      if (!localt1.equals(localt2)) {
        localObject = new b(new a(localt2, ((a)paramt.b()).c()));
      }
    }
    do
    {
      do
      {
        do
        {
          return (t<a>)localObject;
          localObject = paramt;
        } while (localt2 == null);
        localObject = paramt;
      } while (b == null);
      localt1 = b.a(localt2, paramInt1, paramInt2);
      localObject = paramt;
    } while (localt2.equals(localt1));
    return new b(new a(((a)paramt.b()).b(), localt1));
  }
  
  public String a()
  {
    return a.a();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ac.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */