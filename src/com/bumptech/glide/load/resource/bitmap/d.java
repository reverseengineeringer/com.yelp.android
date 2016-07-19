package com.bumptech.glide.load.resource.bitmap;

import android.content.Context;
import android.graphics.Bitmap;
import com.bumptech.glide.g;
import com.bumptech.glide.load.engine.i;
import com.bumptech.glide.load.f;
import com.yelp.android.ao.h;

public abstract class d
  implements f<Bitmap>
{
  private com.yelp.android.x.c a;
  
  public d(Context paramContext)
  {
    this(g.a(paramContext).a());
  }
  
  public d(com.yelp.android.x.c paramc)
  {
    a = paramc;
  }
  
  protected abstract Bitmap a(com.yelp.android.x.c paramc, Bitmap paramBitmap, int paramInt1, int paramInt2);
  
  public final i<Bitmap> a(i<Bitmap> parami, int paramInt1, int paramInt2)
  {
    if (!h.a(paramInt1, paramInt2)) {
      throw new IllegalArgumentException("Cannot apply transformation on width: " + paramInt1 + " or height: " + paramInt2 + " less than or equal to zero and not Target.SIZE_ORIGINAL");
    }
    Bitmap localBitmap1 = (Bitmap)parami.b();
    int i = paramInt1;
    if (paramInt1 == Integer.MIN_VALUE) {
      i = localBitmap1.getWidth();
    }
    paramInt1 = paramInt2;
    if (paramInt2 == Integer.MIN_VALUE) {
      paramInt1 = localBitmap1.getHeight();
    }
    Bitmap localBitmap2 = a(a, localBitmap1, i, paramInt1);
    if (localBitmap1.equals(localBitmap2)) {
      return parami;
    }
    return c.a(localBitmap2, a);
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.resource.bitmap.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */