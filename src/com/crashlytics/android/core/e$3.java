package com.crashlytics.android.core;

import io.fabric.sdk.android.c;
import io.fabric.sdk.android.k;
import java.io.File;
import java.util.concurrent.Callable;

class e$3
  implements Callable<Boolean>
{
  e$3(e parame) {}
  
  public Boolean a()
    throws Exception
  {
    try
    {
      boolean bool = e.a(a).delete();
      c.h().a("Fabric", "Initialization marker file removed: " + bool);
      return Boolean.valueOf(bool);
    }
    catch (Exception localException)
    {
      c.h().e("Fabric", "Problem encountered deleting Crashlytics initialization marker.", localException);
    }
    return Boolean.valueOf(false);
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.core.e.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */