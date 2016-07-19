package com.google.android.gms.flags.impl;

import android.content.SharedPreferences;
import com.google.android.gms.internal.kn;
import java.util.concurrent.Callable;

public abstract class a<T>
{
  public static class a
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
  
  public static class b
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
  
  public static class c
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
  
  public static class d
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
}

/* Location:
 * Qualified Name:     com.google.android.gms.flags.impl.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */