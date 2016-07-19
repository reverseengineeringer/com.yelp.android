package com.google.android.gms.flags.impl;

import android.content.SharedPreferences;
import com.google.android.gms.internal.kn;
import java.util.concurrent.Callable;

public class a$b
  extends a<Integer>
{
  public static Integer a(SharedPreferences paramSharedPreferences, final String paramString, final Integer paramInteger)
  {
    (Integer)kn.a(new Callable()
    {
      public Integer a()
      {
        return Integer.valueOf(a.getInt(paramString, paramInteger.intValue()));
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.flags.impl.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */