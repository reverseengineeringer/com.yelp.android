package com.google.android.gms.flags.impl;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.internal.kn;
import java.util.concurrent.Callable;

public class b
{
  private static SharedPreferences a = null;
  
  public static SharedPreferences a(Context paramContext)
  {
    try
    {
      if (a == null) {
        a = (SharedPreferences)kn.a(new Callable()
        {
          public SharedPreferences a()
          {
            return a.getSharedPreferences("google_sdk_flags", 1);
          }
        });
      }
      paramContext = a;
      return paramContext;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.flags.impl.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */