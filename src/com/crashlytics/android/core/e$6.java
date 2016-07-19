package com.crashlytics.android.core;

import android.app.Activity;
import io.fabric.sdk.android.c;
import io.fabric.sdk.android.services.settings.q.b;
import io.fabric.sdk.android.services.settings.s;

class e$6
  implements q.b<Boolean>
{
  e$6(e parame) {}
  
  public Boolean a(s params)
  {
    boolean bool2 = true;
    Activity localActivity = a.C().b();
    boolean bool1 = bool2;
    if (localActivity != null)
    {
      bool1 = bool2;
      if (!localActivity.isFinishing())
      {
        bool1 = bool2;
        if (a.v()) {
          bool1 = e.a(a, localActivity, c);
        }
      }
    }
    return Boolean.valueOf(bool1);
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.core.e.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */