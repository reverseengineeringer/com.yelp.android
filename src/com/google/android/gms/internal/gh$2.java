package com.google.android.gms.internal;

import android.os.Process;
import java.util.concurrent.Callable;

final class gh$2
  implements Callable<T>
{
  gh$2(Callable paramCallable) {}
  
  public T call()
  {
    try
    {
      Process.setThreadPriority(10);
      Object localObject = wz.call();
      return (T)localObject;
    }
    catch (Exception localException)
    {
      ga.e(localException);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gh.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */