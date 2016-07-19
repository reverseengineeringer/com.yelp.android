package com.yelp.android.ai;

import android.content.res.Resources;
import android.graphics.Bitmap;
import com.bumptech.glide.load.engine.i;
import com.bumptech.glide.load.resource.bitmap.j;
import com.bumptech.glide.load.resource.bitmap.k;

public class b
  implements c<Bitmap, j>
{
  private final Resources a;
  private final com.yelp.android.x.c b;
  
  public b(Resources paramResources, com.yelp.android.x.c paramc)
  {
    a = paramResources;
    b = paramc;
  }
  
  public i<j> a(i<Bitmap> parami)
  {
    return new k(new j(a, (Bitmap)parami.b()), b);
  }
  
  public String a()
  {
    return "GlideBitmapDrawableTranscoder.com.bumptech.glide.load.resource.transcode";
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ai.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */