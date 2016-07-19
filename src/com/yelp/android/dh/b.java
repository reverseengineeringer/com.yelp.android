package com.yelp.android.dh;

import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;

public final class b<E>
  extends a<E>
{
  private static final Integer g = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096);
  final AtomicLong c = new AtomicLong();
  protected long d;
  final AtomicLong e = new AtomicLong();
  final int f;
  
  public b(int paramInt)
  {
    super(paramInt);
    f = Math.min(paramInt / 4, g.intValue());
  }
  
  private long a()
  {
    return e.get();
  }
  
  private long b()
  {
    return c.get();
  }
  
  private void b(long paramLong)
  {
    c.lazySet(paramLong);
  }
  
  private void c(long paramLong)
  {
    e.lazySet(paramLong);
  }
  
  public boolean isEmpty()
  {
    return b() == a();
  }
  
  public boolean offer(E paramE)
  {
    if (paramE == null) {
      throw new NullPointerException("Null is not a valid element");
    }
    AtomicReferenceArray localAtomicReferenceArray = a;
    int i = b;
    long l = c.get();
    int j = a(l, i);
    if (l >= d)
    {
      int k = f;
      if (a(localAtomicReferenceArray, a(k + l, i)) != null) {
        break label106;
      }
      d = (k + l);
    }
    label106:
    while (a(localAtomicReferenceArray, j) == null)
    {
      b(l + 1L);
      a(localAtomicReferenceArray, j, paramE);
      return true;
    }
    return false;
  }
  
  public E peek()
  {
    return (E)a(a(e.get()));
  }
  
  public E poll()
  {
    long l = e.get();
    int i = a(l);
    AtomicReferenceArray localAtomicReferenceArray = a;
    Object localObject = a(localAtomicReferenceArray, i);
    if (localObject == null) {
      return null;
    }
    c(l + 1L);
    a(localAtomicReferenceArray, i, null);
    return (E)localObject;
  }
  
  public int size()
  {
    long l2;
    for (long l1 = a();; l1 = l2)
    {
      long l3 = b();
      l2 = a();
      if (l1 == l2) {
        return (int)(l3 - l2);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.dh.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */