package com.yelp.common.base;

import java.lang.ref.WeakReference;

public abstract class c<T>
  extends WeakReference<T>
  implements a
{
  protected c(T paramT, FinalizableReferenceQueue paramFinalizableReferenceQueue)
  {
    super(paramT, queue);
    paramFinalizableReferenceQueue.cleanUp();
  }
}

/* Location:
 * Qualified Name:     com.yelp.common.base.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */