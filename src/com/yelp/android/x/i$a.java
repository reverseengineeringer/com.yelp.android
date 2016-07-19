package com.yelp.android.x;

import android.graphics.Bitmap.Config;

final class i$a
  implements h
{
  private final i.b a;
  private int b;
  private Bitmap.Config c;
  
  public i$a(i.b paramb)
  {
    a = paramb;
  }
  
  public void a()
  {
    a.a(this);
  }
  
  public void a(int paramInt, Bitmap.Config paramConfig)
  {
    b = paramInt;
    c = paramConfig;
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
        if (c != null) {
          break label49;
        }
        bool1 = bool2;
        if (c != null) {}
      }
    }
    for (;;)
    {
      bool1 = true;
      label49:
      do
      {
        return bool1;
        bool1 = bool2;
      } while (!c.equals(c));
    }
  }
  
  public int hashCode()
  {
    int j = b;
    if (c != null) {}
    for (int i = c.hashCode();; i = 0) {
      return i + j * 31;
    }
  }
  
  public String toString()
  {
    return i.a(b, c);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.x.i.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */