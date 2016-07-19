package com.yelp.android.di;

public class d<E>
  extends e<E>
{
  public d(int paramInt)
  {
    super(Math.max(2, paramInt));
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
    long l3 = b + 1L;
    long[] arrayOfLong = d;
    long l1;
    for (long l2 = Long.MAX_VALUE;; l2 = l1)
    {
      long l4 = b();
      long l5 = d(l4);
      long l6 = a(arrayOfLong, l5) - l4;
      if (l6 == 0L)
      {
        l1 = l2;
        if (c(l4, 1L + l4))
        {
          a(a(l4), paramE);
          a(arrayOfLong, l5, 1L + l4);
          return true;
        }
      }
      else
      {
        l1 = l2;
        if (l6 < 0L)
        {
          l1 = l2;
          if (l4 - l3 <= l2)
          {
            l2 = a();
            l1 = l2;
            if (l4 - l3 <= l2) {
              return false;
            }
          }
        }
      }
    }
  }
  
  public E peek()
  {
    long l;
    Object localObject;
    do
    {
      l = a();
      localObject = b(a(l));
    } while ((localObject == null) && (l != b()));
    return (E)localObject;
  }
  
  public E poll()
  {
    long[] arrayOfLong = d;
    long l1;
    for (long l2 = -1L;; l2 = l1)
    {
      long l3 = a();
      long l4 = d(l3);
      long l5 = a(arrayOfLong, l4) - (1L + l3);
      if (l5 == 0L)
      {
        l1 = l2;
        if (b(l3, 1L + l3))
        {
          l1 = a(l3);
          Object localObject = b(l1);
          a(l1, null);
          a(arrayOfLong, l4, b + l3 + 1L);
          return (E)localObject;
        }
      }
      else
      {
        l1 = l2;
        if (l5 < 0L)
        {
          l1 = l2;
          if (l3 >= l2)
          {
            l2 = b();
            l1 = l2;
            if (l3 == l2) {
              return null;
            }
          }
        }
      }
    }
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
 * Qualified Name:     com.yelp.android.di.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */