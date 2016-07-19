package com.crashlytics.android.core;

import io.fabric.sdk.android.services.settings.m;
import io.fabric.sdk.android.services.settings.q.b;
import io.fabric.sdk.android.services.settings.s;

class e$5
  implements q.b<Boolean>
{
  e$5(e parame) {}
  
  public Boolean a(s params)
  {
    boolean bool = false;
    if (d.a)
    {
      if (!a.w()) {
        bool = true;
      }
      return Boolean.valueOf(bool);
    }
    return Boolean.valueOf(false);
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.core.e.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */