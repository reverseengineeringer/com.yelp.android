package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.load.engine.bitmap_recycle.e;
import com.bumptech.glide.load.engine.t;
import com.bumptech.glide.load.f;

public abstract class d
  implements f<Bitmap>
{
  private e a;
  
  public d(e parame)
  {
    a = parame;
  }
  
  protected abstract Bitmap a(e parame, Bitmap paramBitmap, int paramInt1, int paramInt2);
  
  public final t<Bitmap> a(t<Bitmap> paramt, int paramInt1, int paramInt2)
  {
    if ((paramInt1 <= 0) || (paramInt2 <= 0)) {
      throw new IllegalArgumentException("Cannot apply transformation on width: " + paramInt1 + " or height: " + paramInt2 + " less than or equal to zero");
    }
    Bitmap localBitmap1 = (Bitmap)paramt.b();
    Bitmap localBitmap2 = a(a, localBitmap1, paramInt1, paramInt2);
    if (localBitmap1.equals(localBitmap2)) {
      return paramt;
    }
    return c.a(localBitmap2, a);
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.resource.bitmap.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */