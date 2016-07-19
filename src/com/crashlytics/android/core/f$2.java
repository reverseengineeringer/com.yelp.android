package com.crashlytics.android.core;

import io.fabric.sdk.android.c;
import io.fabric.sdk.android.k;
import java.util.concurrent.Callable;

class f$2
  implements Callable<T>
{
  f$2(f paramf, Callable paramCallable) {}
  
  public T call()
    throws Exception
  {
    try
    {
      Object localObject = a.call();
      return (T)localObject;
    }
    catch (Exception localException)
    {
      c.h().e("Fabric", "Failed to execute task.", localException);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.core.f.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */