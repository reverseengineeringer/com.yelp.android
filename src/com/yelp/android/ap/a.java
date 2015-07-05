package com.yelp.android.ap;

import com.path.android.jobqueue.b;
import com.path.android.jobqueue.g;
import java.util.Collection;

public class a
  implements g
{
  g a;
  private c b;
  
  public a(g paramg)
  {
    a = paramg;
    b = new c(null);
  }
  
  public int a()
  {
    if (b.a == null) {
      b.a = Integer.valueOf(a.a());
    }
    return b.a.intValue();
  }
  
  public int a(boolean paramBoolean, Collection<String> paramCollection)
  {
    int i;
    if ((b.a != null) && (b.a.intValue() < 1)) {
      i = 0;
    }
    int j;
    do
    {
      return i;
      j = a.a(paramBoolean, paramCollection);
      i = j;
    } while (j != 0);
    a();
    return j;
  }
  
  public long a(b paramb)
  {
    b.a();
    return a.a(paramb);
  }
  
  public Long a(boolean paramBoolean)
  {
    if (b.b == null) {
      b.b = new d(paramBoolean, a.a(paramBoolean), null);
    }
    for (;;)
    {
      return b.b.a;
      if (!d.a(b.b, paramBoolean)) {
        b.b.a(paramBoolean, a.a(paramBoolean));
      }
    }
  }
  
  public long b(b paramb)
  {
    b.a();
    return a.b(paramb);
  }
  
  public b b(boolean paramBoolean, Collection<String> paramCollection)
  {
    if ((b.a != null) && (b.a.intValue() < 1)) {
      paramCollection = null;
    }
    b localb;
    do
    {
      return paramCollection;
      localb = a.b(paramBoolean, paramCollection);
      if (localb == null)
      {
        a();
        return localb;
      }
      paramCollection = localb;
    } while (b.a == null);
    paramCollection = b;
    Integer localInteger = a;
    a = Integer.valueOf(a.intValue() - 1);
    return localb;
  }
  
  public void c(b paramb)
  {
    b.a();
    a.c(paramb);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ap.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */