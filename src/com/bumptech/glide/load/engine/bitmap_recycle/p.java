package com.bumptech.glide.load.engine.bitmap_recycle;

final class p
  implements n
{
  private final q a;
  private int b;
  
  p(q paramq)
  {
    a = paramq;
  }
  
  public void a()
  {
    a.a(this);
  }
  
  public void a(int paramInt)
  {
    b = paramInt;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof p))
    {
      paramObject = (p)paramObject;
      bool1 = bool2;
      if (b == b) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public int hashCode()
  {
    return b;
  }
  
  public String toString()
  {
    return SizeStrategy.a(b);
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.engine.bitmap_recycle.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */