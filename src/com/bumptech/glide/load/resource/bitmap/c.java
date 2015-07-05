package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.load.engine.bitmap_recycle.e;
import com.bumptech.glide.load.engine.t;
import com.yelp.android.ai.f;

public class c
  implements t<Bitmap>
{
  private final Bitmap a;
  private final e b;
  
  public c(Bitmap paramBitmap, e parame)
  {
    if (paramBitmap == null) {
      throw new NullPointerException("Bitmap must not be null");
    }
    if (parame == null) {
      throw new NullPointerException("BitmapPool must not be null");
    }
    a = paramBitmap;
    b = parame;
  }
  
  public static c a(Bitmap paramBitmap, e parame)
  {
    if (paramBitmap == null) {
      return null;
    }
    return new c(paramBitmap, parame);
  }
  
  public Bitmap a()
  {
    return a;
  }
  
  public int c()
  {
    return f.a(a);
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