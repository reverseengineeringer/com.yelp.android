package com.google.android.gms.flags.impl;

import android.content.SharedPreferences;
import java.util.concurrent.Callable;

final class a$c$1
  implements Callable<Long>
{
  a$c$1(SharedPreferences paramSharedPreferences, String paramString, Long paramLong) {}
  
  public Long a()
  {
    return Long.valueOf(a.getLong(b, c.longValue()));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.flags.impl.a.c.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */