package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.util.Pair;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.jt;
import java.security.SecureRandom;

public final class ad$c
{
  final String a;
  private final String c;
  private final String d;
  private final long e;
  
  private ad$c(ad paramad, String paramString, long paramLong)
  {
    zzx.zzcM(paramString);
    if (paramLong > 0L) {}
    for (boolean bool = true;; bool = false)
    {
      zzx.zzac(bool);
      a = (paramString + ":start");
      c = (paramString + ":count");
      d = (paramString + ":value");
      e = paramLong;
      return;
    }
  }
  
  private void b()
  {
    b.f();
    long l = b.l().a();
    SharedPreferences.Editor localEditor = ad.a(b).edit();
    localEditor.remove(c);
    localEditor.remove(d);
    localEditor.putLong(a, l);
    localEditor.apply();
  }
  
  private long c()
  {
    b.f();
    long l = d();
    if (l == 0L)
    {
      b();
      return 0L;
    }
    return Math.abs(l - b.l().a());
  }
  
  private long d()
  {
    return ad.c(b).getLong(a, 0L);
  }
  
  public Pair<String, Long> a()
  {
    b.f();
    long l = c();
    if (l < e) {
      return null;
    }
    if (l > e * 2L)
    {
      b();
      return null;
    }
    String str = ad.c(b).getString(d, null);
    l = ad.c(b).getLong(c, 0L);
    b();
    if ((str == null) || (l <= 0L)) {
      return ad.a;
    }
    return new Pair(str, Long.valueOf(l));
  }
  
  public void a(String paramString)
  {
    a(paramString, 1L);
  }
  
  public void a(String paramString, long paramLong)
  {
    b.f();
    if (d() == 0L) {
      b();
    }
    String str = paramString;
    if (paramString == null) {
      str = "";
    }
    long l = ad.a(b).getLong(c, 0L);
    if (l <= 0L)
    {
      paramString = ad.a(b).edit();
      paramString.putString(d, str);
      paramString.putLong(c, paramLong);
      paramString.apply();
      return;
    }
    if ((ad.b(b).nextLong() & 0x7FFFFFFFFFFFFFFF) < Long.MAX_VALUE / (l + paramLong) * paramLong) {}
    for (int i = 1;; i = 0)
    {
      paramString = ad.a(b).edit();
      if (i != 0) {
        paramString.putString(d, str);
      }
      paramString.putLong(c, l + paramLong);
      paramString.apply();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.measurement.internal.ad.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */