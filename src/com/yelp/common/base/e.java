package com.yelp.common.base;

import java.lang.ref.SoftReference;

public abstract class e<T>
  extends SoftReference<T>
  implements a
{
  protected e(T paramT, FinalizableReferenceQueue paramFinalizableReferenceQueue)
  {
    super(paramT, queue);
    paramFinalizableReferenceQueue.cleanUp();
  }
}

/* Location:
 * Qualified Name:     com.yelp.common.base.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */