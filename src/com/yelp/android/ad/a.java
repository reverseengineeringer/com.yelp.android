package com.yelp.android.ad;

import android.graphics.Bitmap;
import com.bumptech.glide.load.engine.t;
import com.bumptech.glide.load.resource.bitmap.m;
import com.yelp.android.z.b;

public class a
  implements c<com.yelp.android.ac.a, b>
{
  private final c<Bitmap, m> a;
  
  public a(c<Bitmap, m> paramc)
  {
    a = paramc;
  }
  
  public t<b> a(t<com.yelp.android.ac.a> paramt)
  {
    paramt = (com.yelp.android.ac.a)paramt.b();
    t localt = paramt.b();
    if (localt != null) {
      return a.a(localt);
    }
    return paramt.c();
  }
  
  public String a()
  {
    return "GifBitmapWrapperDrawableTranscoder.com.bumptech.glide.load.resource.transcode";
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ad.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */