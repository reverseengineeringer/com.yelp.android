package com.google.android.gms.flags.impl;

import android.content.SharedPreferences;
import com.google.android.gms.internal.kn;
import java.util.concurrent.Callable;

public class a$d
  extends a<String>
{
  public static String a(SharedPreferences paramSharedPreferences, final String paramString1, final String paramString2)
  {
    (String)kn.a(new Callable()
    {
      public String a()
      {
        return a.getString(paramString1, paramString2);
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.flags.impl.a.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */