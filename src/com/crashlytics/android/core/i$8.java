package com.crashlytics.android.core;

import io.fabric.sdk.android.c;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.settings.q;
import io.fabric.sdk.android.services.settings.s;
import java.io.File;

class i$8
  implements Runnable
{
  i$8(i parami, File paramFile) {}
  
  public void run()
  {
    if (CommonUtils.n(i.f(b).B()))
    {
      c.h().a("Fabric", "Attempting to send crash report at time of crash...");
      Object localObject = q.a().b();
      localObject = i.f(b).a((s)localObject);
      if (localObject != null) {
        new v((k)localObject).a(new x(a, i.i()));
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.core.i.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */