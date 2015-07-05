package com.yelp.common.base;

import java.lang.ref.WeakReference;

public abstract class f<T>
  extends WeakReference<T>
  implements a
{
  protected f(T paramT, FinalizableReferenceQueue paramFinalizableReferenceQueue)
  {
    super(paramT, queue);
    paramFinalizableReferenceQueue.cleanUp();
  }
}

/* Location:
 * Qualified Name:     com.yelp.common.base.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */