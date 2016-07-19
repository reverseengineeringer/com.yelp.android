package com.google.android.gms.flags.impl;

import android.content.SharedPreferences;
import com.google.android.gms.internal.kn;
import java.util.concurrent.Callable;

public class a$a
  extends a<Boolean>
{
  public static Boolean a(SharedPreferences paramSharedPreferences, final String paramString, final Boolean paramBoolean)
  {
    (Boolean)kn.a(new Callable()
    {
      public Boolean a()
      {
        return Boolean.valueOf(a.getBoolean(paramString, paramBoolean.booleanValue()));
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.flags.impl.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */