package com.bumptech.glide.load.engine.executor;

import java.util.concurrent.FutureTask;

class FifoPriorityThreadPoolExecutor$b<T>
  extends FutureTask<T>
  implements Comparable<b<?>>
{
  private final int a;
  private final int b;
  
  public FifoPriorityThreadPoolExecutor$b(Runnable paramRunnable, T paramT, int paramInt)
  {
    super(paramRunnable, paramT);
    if (!(paramRunnable instanceof a)) {
      throw new IllegalArgumentException("FifoPriorityThreadPoolExecutor must be given Runnables that implement Prioritized");
    }
    a = ((a)paramRunnable).b();
    b = paramInt;
  }
  
  public int a(b<?> paramb)
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
    if ((paramObject instanceof b))
    {
      paramObject = (b)paramObject;
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
 * Qualified Name:     com.bumptech.glide.load.engine.executor.FifoPriorityThreadPoolExecutor.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */