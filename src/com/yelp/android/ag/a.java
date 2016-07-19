package com.yelp.android.ag;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import com.yelp.android.u.a.a;
import com.yelp.android.x.c;

class a
  implements a.a
{
  private final c a;
  
  public a(c paramc)
  {
    a = paramc;
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
 * Qualified Name:     com.yelp.android.ag.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */