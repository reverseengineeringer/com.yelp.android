package com.google.android.gms.flags.impl;

import android.content.SharedPreferences;
import com.google.android.gms.internal.kn;
import java.util.concurrent.Callable;

public class a$c
  extends a<Long>
{
  public static Long a(SharedPreferences paramSharedPreferences, final String paramString, final Long paramLong)
  {
    (Long)kn.a(new Callable()
    {
      public Long a()
      {
        return Long.valueOf(a.getLong(paramString, paramLong.longValue()));
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.flags.impl.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */