package com.yelp.android.t;

import java.util.concurrent.FutureTask;

class d<T>
  extends FutureTask<T>
  implements Comparable<d<?>>
{
  private final int a;
  private final int b;
  
  public d(Runnable paramRunnable, T paramT, int paramInt)
  {
    super(paramRunnable, paramT);
    if (!(paramRunnable instanceof e)) {
      throw new IllegalArgumentException("FifoPriorityThreadPoolExecutor must be given Runnables that implement Prioritized");
    }
    a = ((e)paramRunnable).b();
    b = paramInt;
  }
  
  public int a(d<?> paramd)
  {
    int j = a - a;
    int i = j;
    if (j == 0) {
      i = b - b;
    }
    return i;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof d))
    {
      paramObject = (d)paramObject;
      bool1 = bool2;
      if (b == b)
      {
        bool1 = bool2;
        if (a == a) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public int hashCode()
  {
    return a * 31 + b;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.t.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */