package com.google.android.gms.analytics.internal;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.util.Pair;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.jt;
import java.util.UUID;

public final class j$a
{
  private final String b;
  private final long c;
  
  private j$a(j paramj, String paramString, long paramLong)
  {
    zzx.zzcM(paramString);
    if (paramLong > 0L) {}
    for (boolean bool = true;; bool = false)
    {
      zzx.zzac(bool);
      b = paramString;
      c = paramLong;
      return;
    }
  }
  
  private void c()
  {
    long l = a.n().a();
    SharedPreferences.Editor localEditor = j.a(a).edit();
    localEditor.remove(g());
    localEditor.remove(b());
    localEditor.putLong(f(), l);
    localEditor.commit();
  }
  
  private long d()
  {
    long l = e();
    if (l == 0L) {
      return 0L;
    }
    return Math.abs(l - a.n().a());
  }
  
  private long e()
  {
    return j.a(a).getLong(f(), 0L);
  }
  
  private String f()
  {
    return b + ":start";
  }
  
  private String g()
  {
    return b + ":count";
  }
  
  public Pair<String, Long> a()
  {
    long l = d();
    if (l < c) {}
    String str;
    do
    {
      return null;
      if (l > c * 2L)
      {
        c();
        return null;
      }
      str = j.a(a).getString(b(), null);
      l = j.a(a).getLong(g(), 0L);
      c();
    } while ((str == null) || (l <= 0L));
    return new Pair(str, Long.valueOf(l));
  }
  
  public void a(String paramString)
  {
    if (e() == 0L) {
      c();
    }
    String str = paramString;
    if (paramString == null) {
      str = "";
    }
    for (;;)
    {
      try
      {
        long l = j.a(a).getLong(g(), 0L);
        if (l <= 0L)
        {
          paramString = j.a(a).edit();
          paramString.putString(b(), str);
          paramString.putLong(g(), 1L);
          paramString.apply();
          return;
        }
        if ((UUID.randomUUID().getLeastSignificantBits() & 0x7FFFFFFFFFFFFFFF) < Long.MAX_VALUE / (l + 1L))
        {
          i = 1;
          paramString = j.a(a).edit();
          if (i != 0) {
            paramString.putString(b(), str);
          }
          paramString.putLong(g(), l + 1L);
          paramString.apply();
          return;
        }
      }
      finally {}
      int i = 0;
    }
  }
  
  protected String b()
  {
    return b + ":value";
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.j.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */