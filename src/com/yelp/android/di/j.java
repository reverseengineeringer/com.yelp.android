package com.yelp.android.di;

public final class j<E>
  extends n<E>
{
  public j(int paramInt)
  {
    super(paramInt);
  }
  
  public boolean isEmpty()
  {
    return a() == b();
  }
  
  public boolean offer(E paramE)
  {
    if (paramE == null) {
      throw new NullPointerException("Null is not a valid element");
    }
    Object[] arrayOfObject = c;
    long l1 = b;
    long l2 = b();
    long l3 = a(l2);
    if (b(arrayOfObject, l3) != null)
    {
      if (l2 - a() > l1) {
        return false;
      }
      while (b(arrayOfObject, l3) != null) {}
    }
    a(arrayOfObject, l3, paramE);
    d(1L + l2);
    return true;
  }
  
  public E peek()
  {
    long l1 = c();
    Object localObject;
    do
    {
      long l2 = a();
      if (l2 >= l1)
      {
        long l3 = b();
        if (l2 >= l3) {
          return null;
        }
        e(l3);
      }
      localObject = c(a(l2));
    } while (localObject == null);
    return (E)localObject;
  }
  
  public E poll()
  {
    long l1 = c();
    long l2;
    do
    {
      l2 = a();
      if (l2 >= l1)
      {
        long l3 = b();
        if (l2 >= l3) {
          return null;
        }
        e(l3);
      }
    } while (!b(l2, 1L + l2));
    l1 = a(l2);
    Object[] arrayOfObject = c;
    Object localObject = a(arrayOfObject, l1);
    b(arrayOfObject, l1, null);
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
 * Qualified Name:     com.yelp.android.di.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */