package com.yelp.android.dh;

import com.yelp.android.di.i;
import java.util.AbstractQueue;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReferenceArray;

abstract class a<E>
  extends AbstractQueue<E>
{
  protected final AtomicReferenceArray<E> a;
  protected final int b;
  
  public a(int paramInt)
  {
    paramInt = i.a(paramInt);
    b = (paramInt - 1);
    a = new AtomicReferenceArray(paramInt);
  }
  
  protected final int a(long paramLong)
  {
    return (int)paramLong & b;
  }
  
  protected final int a(long paramLong, int paramInt)
  {
    return (int)paramLong & paramInt;
  }
  
  protected final E a(int paramInt)
  {
    return (E)a(a, paramInt);
  }
  
  protected final E a(AtomicReferenceArray<E> paramAtomicReferenceArray, int paramInt)
  {
    return (E)paramAtomicReferenceArray.get(paramInt);
  }
  
  protected final void a(AtomicReferenceArray<E> paramAtomicReferenceArray, int paramInt, E paramE)
  {
    paramAtomicReferenceArray.lazySet(paramInt, paramE);
  }
  
  public void clear()
  {
    while ((poll() != null) || (!isEmpty())) {}
  }
  
  public Iterator<E> iterator()
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.dh.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */