package com.bumptech.glide.load.engine.bitmap_recycle;

import android.graphics.Bitmap.Config;

class b
  implements n
{
  private final c a;
  private int b;
  private int c;
  private Bitmap.Config d;
  
  public b(c paramc)
  {
    a = paramc;
  }
  
  public void a()
  {
    a.a(this);
  }
  
  public void a(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    b = paramInt1;
    c = paramInt2;
    d = paramConfig;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof b))
    {
      paramObject = (b)paramObject;
      bool1 = bool2;
      if (b == b)
      {
        bool1 = bool2;
        if (c == c)
        {
          bool1 = bool2;
          if (d == d) {
            bool1 = true;
          }
        }
      }
    }
    return bool1;
  }
  
  public int hashCode()
  {
    int j = b;
    int k = c;
    if (d != null) {}
    for (int i = d.hashCode();; i = 0) {
      return i + (j * 31 + k) * 31;
    }
  }
  
  public String toString()
  {
    return a.c(b, c, d);
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.engine.bitmap_recycle.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */