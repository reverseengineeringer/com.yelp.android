package com.yelp.android.ai;

import android.graphics.Bitmap;
import com.bumptech.glide.load.engine.i;
import com.bumptech.glide.load.resource.bitmap.j;
import com.yelp.android.ae.b;

public class a
  implements c<com.yelp.android.ah.a, b>
{
  private final c<Bitmap, j> a;
  
  public a(c<Bitmap, j> paramc)
  {
    a = paramc;
  }
  
  public i<b> a(i<com.yelp.android.ah.a> parami)
  {
    parami = (com.yelp.android.ah.a)parami.b();
    i locali = parami.b();
    if (locali != null) {
      return a.a(locali);
    }
    return parami.c();
  }
  
  public String a()
  {
    return "GifBitmapWrapperDrawableTranscoder.com.bumptech.glide.load.resource.transcode";
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ai.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */