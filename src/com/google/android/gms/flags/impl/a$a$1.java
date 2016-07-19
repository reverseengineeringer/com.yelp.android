package com.google.android.gms.flags.impl;

import android.content.SharedPreferences;
import java.util.concurrent.Callable;

final class a$a$1
  implements Callable<Boolean>
{
  a$a$1(SharedPreferences paramSharedPreferences, String paramString, Boolean paramBoolean) {}
  
  public Boolean a()
  {
    return Boolean.valueOf(a.getBoolean(b, c.booleanValue()));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.flags.impl.a.a.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */