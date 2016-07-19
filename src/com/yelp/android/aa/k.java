package com.yelp.android.aa;

import com.yelp.android.ao.e;
import com.yelp.android.ao.h;
import java.util.Queue;

public class k<A, B>
{
  private final e<a<A>, B> a;
  
  public k()
  {
    this(250);
  }
  
  public k(int paramInt)
  {
    a = new e(paramInt)
    {
      protected void a(k.a<A> paramAnonymousa, B paramAnonymousB)
      {
        paramAnonymousa.a();
      }
    };
  }
  
  public B a(A paramA, int paramInt1, int paramInt2)
  {
    paramA = a.a(paramA, paramInt1, paramInt2);
    Object localObject = a.b(paramA);
    paramA.a();
    return (B)localObject;
  }
  
  public void a(A paramA, int paramInt1, int paramInt2, B paramB)
  {
    paramA = a.a(paramA, paramInt1, paramInt2);
    a.b(paramA, paramB);
  }
  
  static final class a<A>
  {
    private static final Queue<a<?>> a = h.a(0);
    private int b;
    private int c;
    private A d;
    
    static <A> a<A> a(A paramA, int paramInt1, int paramInt2)
    {
      a locala2 = (a)a.poll();
      a locala1 = locala2;
      if (locala2 == null) {
        locala1 = new a();
      }
      locala1.b(paramA, paramInt1, paramInt2);
      return locala1;
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
      if ((paramObject instanceof a))
      {
        paramObject = (a)paramObject;
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
}

/* Location:
 * Qualified Name:     com.yelp.android.aa.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */