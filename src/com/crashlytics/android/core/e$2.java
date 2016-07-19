package com.crashlytics.android.core;

import io.fabric.sdk.android.c;
import io.fabric.sdk.android.k;
import java.io.File;
import java.util.concurrent.Callable;

class e$2
  implements Callable<Void>
{
  e$2(e parame) {}
  
  public Void a()
    throws Exception
  {
    e.a(a).createNewFile();
    c.h().a("Fabric", "Initialization marker file created.");
    return null;
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.core.e.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */