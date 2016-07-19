package com.google.android.gms.flags.impl;

import android.content.SharedPreferences;
import java.util.concurrent.Callable;

final class a$b$1
  implements Callable<Integer>
{
  a$b$1(SharedPreferences paramSharedPreferences, String paramString, Integer paramInteger) {}
  
  public Integer a()
  {
    return Integer.valueOf(a.getInt(b, c.intValue()));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.flags.impl.a.b.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */