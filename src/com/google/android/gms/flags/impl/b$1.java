package com.google.android.gms.flags.impl;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.concurrent.Callable;

final class b$1
  implements Callable<SharedPreferences>
{
  b$1(Context paramContext) {}
  
  public SharedPreferences a()
  {
    return a.getSharedPreferences("google_sdk_flags", 1);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.flags.impl.b.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */