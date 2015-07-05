package com.yelp.android.ab;

import android.graphics.Bitmap;
import com.bumptech.glide.load.d;
import com.bumptech.glide.load.engine.bitmap_recycle.e;
import com.bumptech.glide.load.engine.t;
import com.bumptech.glide.load.resource.bitmap.c;
import com.yelp.android.p.a;

class n
  implements d<a, Bitmap>
{
  private final e a;
  
  public n(e parame)
  {
    a = parame;
  }
  
  public t<Bitmap> a(a parama, int paramInt1, int paramInt2)
  {
    return c.a(parama.g(), a);
  }
  
  public String a()
  {
    return "GifFrameResourceDecoder.com.bumptech.glide.load.resource.gif";
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ab.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */