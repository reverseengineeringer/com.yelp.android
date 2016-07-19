package com.yelp.android.x;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;

class a
  implements g
{
  private final b a = new b();
  private final e<a, Bitmap> b = new e();
  
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
    a locala = a.a(paramBitmap.getWidth(), paramBitmap.getHeight(), paramBitmap.getConfig());
    b.a(locala, paramBitmap);
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
    return com.yelp.android.ao.h.a(paramBitmap);
  }
  
  public String toString()
  {
    return "AttributeStrategy:\n  " + b;
  }
  
  static class a
    implements h
  {
    private final a.b a;
    private int b;
    private int c;
    private Bitmap.Config d;
    
    public a(a.b paramb)
    {
      a = paramb;
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
      if ((paramObject instanceof a))
      {
        paramObject = (a)paramObject;
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
  
  static class b
    extends b<a.a>
  {
    protected a.a a()
    {
      return new a.a(this);
    }
    
    public a.a a(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
    {
      a.a locala = (a.a)c();
      locala.a(paramInt1, paramInt2, paramConfig);
      return locala;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.x.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */