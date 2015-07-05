package com.crashlytics.android;

import com.crashlytics.android.internal.ci;
import com.crashlytics.android.internal.cl;
import java.io.File;
import java.util.concurrent.Callable;

final class b
  implements Callable<Boolean>
{
  b(bb parambb) {}
  
  private Boolean a()
  {
    try
    {
      boolean bool = bb.f(a).delete();
      cl.a().b().a("Crashlytics", "Initialization marker file removed: " + bool);
      return Boolean.valueOf(bool);
    }
    catch (Exception localException)
    {
      cl.a().b().a("Crashlytics", "Problem encountered deleting Crashlytics initialization marker.", localException);
    }
    return Boolean.valueOf(false);
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */