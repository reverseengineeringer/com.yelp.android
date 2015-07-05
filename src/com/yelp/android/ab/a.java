package com.yelp.android.ab;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import com.bumptech.glide.load.engine.bitmap_recycle.e;
import com.yelp.android.p.b;

class a
  implements b
{
  private final e a;
  
  public a(e parame)
  {
    a = parame;
  }
  
  public Bitmap a(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    return a.b(paramInt1, paramInt2, paramConfig);
  }
  
  public void a(Bitmap paramBitmap)
  {
    if (!a.a(paramBitmap)) {
      paramBitmap.recycle();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ab.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */