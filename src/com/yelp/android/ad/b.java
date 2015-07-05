package com.yelp.android.ad;

import android.content.res.Resources;
import android.graphics.Bitmap;
import com.bumptech.glide.load.engine.bitmap_recycle.e;
import com.bumptech.glide.load.engine.t;
import com.bumptech.glide.load.resource.bitmap.m;
import com.bumptech.glide.load.resource.bitmap.o;

public class b
  implements c<Bitmap, m>
{
  private final Resources a;
  private final e b;
  
  public b(Resources paramResources, e parame)
  {
    a = paramResources;
    b = parame;
  }
  
  public t<m> a(t<Bitmap> paramt)
  {
    return new o(new m(a, (Bitmap)paramt.b()), b);
  }
  
  public String a()
  {
    return "GlideBitmapDrawableTranscoder.com.bumptech.glide.load.resource.transcode";
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ad.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */