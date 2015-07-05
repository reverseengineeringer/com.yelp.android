package com.yelp.android.v;

import com.yelp.android.ai.f;
import java.util.Queue;

final class l<A>
{
  private static final Queue<l<?>> a = f.a(0);
  private int b;
  private int c;
  private A d;
  
  static <A> l<A> a(A paramA, int paramInt1, int paramInt2)
  {
    l locall2 = (l)a.poll();
    l locall1 = locall2;
    if (locall2 == null) {
      locall1 = new l();
    }
    locall1.b(paramA, paramInt1, paramInt2);
    return locall1;
  }
  
  private void b(A paramA, int paramInt1, int paramInt2)
  {
    d = paramA;
    c = paramInt1;
    b = paramInt2;
  }
  
  public void a()
  {
    a.offer(this);
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof l))
    {
      paramObject = (l)paramObject;
      bool1 = bool2;
      if (c == c)
      {
        bool1 = bool2;
        if (b == b)
        {
          bool1 = bool2;
          if (d.equals(d)) {
            bool1 = true;
          }
        }
      }
    }
    return bool1;
  }
  
  public int hashCode()
  {
    return (b * 31 + c) * 31 + d.hashCode();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.v.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */