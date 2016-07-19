package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.load.engine.i;
import com.yelp.android.ao.h;

public class c
  implements i<Bitmap>
{
  private final Bitmap a;
  private final com.yelp.android.x.c b;
  
  public c(Bitmap paramBitmap, com.yelp.android.x.c paramc)
  {
    if (paramBitmap == null) {
      throw new NullPointerException("Bitmap must not be null");
    }
    if (paramc == null) {
      throw new NullPointerException("BitmapPool must not be null");
    }
    a = paramBitmap;
    b = paramc;
  }
  
  public static c a(Bitmap paramBitmap, com.yelp.android.x.c paramc)
  {
    if (paramBitmap == null) {
      return null;
    }
    return new c(paramBitmap, paramc);
  }
  
  public Bitmap a()
  {
    return a;
  }
  
  public int c()
  {
    return h.a(a);
  }
  
  public void d()
  {
    if (!b.a(a)) {
      a.recycle();
    }
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.resource.bitmap.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */