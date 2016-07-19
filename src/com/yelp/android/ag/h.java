package com.yelp.android.ag;

import android.graphics.Bitmap;
import com.bumptech.glide.load.d;
import com.bumptech.glide.load.engine.i;
import com.yelp.android.u.a;

class h
  implements d<a, Bitmap>
{
  private final com.yelp.android.x.c a;
  
  public h(com.yelp.android.x.c paramc)
  {
    a = paramc;
  }
  
  public i<Bitmap> a(a parama, int paramInt1, int paramInt2)
  {
    return com.bumptech.glide.load.resource.bitmap.c.a(parama.f(), a);
  }
  
  public String a()
  {
    return "GifFrameResourceDecoder.com.bumptech.glide.load.resource.gif";
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ag.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */