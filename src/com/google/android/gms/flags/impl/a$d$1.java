package com.google.android.gms.flags.impl;

import android.content.SharedPreferences;
import java.util.concurrent.Callable;

final class a$d$1
  implements Callable<String>
{
  a$d$1(SharedPreferences paramSharedPreferences, String paramString1, String paramString2) {}
  
  public String a()
  {
    return a.getString(b, c);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.flags.impl.a.d.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */