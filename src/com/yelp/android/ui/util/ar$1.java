package com.yelp.android.ui.util;

import android.content.Context;
import android.graphics.Bitmap;
import com.bumptech.glide.load.resource.bitmap.d;
import com.yelp.android.x.c;

final class ar$1
  extends d
{
  ar$1(Context paramContext1, float paramFloat, Context paramContext2)
  {
    super(paramContext1);
  }
  
  protected Bitmap a(c paramc, Bitmap paramBitmap, int paramInt1, int paramInt2)
  {
    if ((a <= 0.0F) || (a > 25.0F)) {
      throw new IllegalArgumentException("Blur radius must be between 0 and 25. Was: " + a);
    }
    return ar.a(b, paramBitmap, a);
  }
  
  public String a()
  {
    return "BitmapBlurTransformation";
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.ar.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */