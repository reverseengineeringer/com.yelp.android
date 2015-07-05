package com.bumptech.glide.load.engine.bitmap_recycle;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import com.yelp.android.ai.f;

class a
  implements m
{
  private final c a = new c();
  private final g<b, Bitmap> b = new g();
  
  private static String d(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    return "[" + paramInt1 + "x" + paramInt2 + "], " + paramConfig;
  }
  
  private static String d(Bitmap paramBitmap)
  {
    return d(paramBitmap.getWidth(), paramBitmap.getHeight(), paramBitmap.getConfig());
  }
  
  public Bitmap a()
  {
    return (Bitmap)b.a();
  }
  
  public Bitmap a(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    paramConfig = a.a(paramInt1, paramInt2, paramConfig);
    return (Bitmap)b.a(paramConfig);
  }
  
  public void a(Bitmap paramBitmap)
  {
    b localb = a.a(paramBitmap.getWidth(), paramBitmap.getHeight(), paramBitmap.getConfig());
    b.a(localb, paramBitmap);
  }
  
  public String b(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    return d(paramInt1, paramInt2, paramConfig);
  }
  
  public String b(Bitmap paramBitmap)
  {
    return d(paramBitmap);
  }
  
  public int c(Bitmap paramBitmap)
  {
    return f.a(paramBitmap);
  }
  
  public String toString()
  {
    return "AttributeStrategy:\n  " + b;
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.engine.bitmap_recycle.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */