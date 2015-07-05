package com.crashlytics.android;

import com.crashlytics.android.internal.ci;
import com.crashlytics.android.internal.cl;
import java.util.concurrent.Callable;

final class l
  implements Callable<T>
{
  l(bb parambb, Callable paramCallable) {}
  
  public final T call()
  {
    try
    {
      Object localObject = a.call();
      return (T)localObject;
    }
    catch (Exception localException)
    {
      cl.a().b().a("Crashlytics", "Failed to execute task.", localException);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */