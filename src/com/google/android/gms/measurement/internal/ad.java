package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.ads.identifier.AdvertisingIdClient.Info;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.jt;
import com.google.android.gms.measurement.b;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.util.Locale;

class ad
  extends aj
{
  static final Pair<String, Long> a = new Pair("", Long.valueOf(0L));
  public final c b = new c("health_monitor", u().S(), null);
  public final b c = new b("last_upload", 0L);
  public final b d = new b("last_upload_attempt", 0L);
  public final b e = new b("backoff", 0L);
  public final b f = new b("last_delete_stale", 0L);
  public final b g = new b("midnight_offset", 0L);
  public final b h = new b("time_before_start", 10000L);
  public final b i = new b("session_timeout", 1800000L);
  public final a j = new a("start_new_session", true);
  public final b k = new b("last_pause_time", 0L);
  public final b l = new b("time_active", 0L);
  public boolean m;
  private SharedPreferences o;
  private String p;
  private boolean q;
  private long r;
  private final SecureRandom s = new SecureRandom();
  
  ad(ag paramag)
  {
    super(paramag);
  }
  
  private SharedPreferences y()
  {
    f();
    G();
    return o;
  }
  
  Pair<String, Boolean> a(String paramString)
  {
    f();
    long l1 = l().b();
    if ((p != null) && (l1 < r)) {
      return new Pair(p, Boolean.valueOf(q));
    }
    r = (l1 + u().a(paramString));
    AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(true);
    try
    {
      paramString = AdvertisingIdClient.getAdvertisingIdInfo(m());
      p = paramString.getId();
      q = paramString.isLimitAdTrackingEnabled();
      AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(false);
      return new Pair(p, Boolean.valueOf(q));
    }
    catch (Throwable paramString)
    {
      for (;;)
      {
        s().y().a("Unable to get advertising id", paramString);
        p = "";
      }
    }
  }
  
  protected void a()
  {
    o = m().getSharedPreferences("com.google.android.gms.measurement.prefs", 0);
    m = o.getBoolean("has_been_opened", false);
    if (!m)
    {
      SharedPreferences.Editor localEditor = o.edit();
      localEditor.putBoolean("has_been_opened", true);
      localEditor.apply();
    }
  }
  
  void a(boolean paramBoolean)
  {
    f();
    s().z().a("Setting useService", Boolean.valueOf(paramBoolean));
    SharedPreferences.Editor localEditor = y().edit();
    localEditor.putBoolean("use_service", paramBoolean);
    localEditor.apply();
  }
  
  String b()
  {
    byte[] arrayOfByte = new byte[16];
    s.nextBytes(arrayOfByte);
    return String.format(Locale.US, "%032x", new Object[] { new BigInteger(1, arrayOfByte) });
  }
  
  String b(String paramString)
  {
    paramString = (String)afirst;
    MessageDigest localMessageDigest = k.e("MD5");
    if (localMessageDigest == null) {
      return null;
    }
    return String.format(Locale.US, "%032X", new Object[] { new BigInteger(1, localMessageDigest.digest(paramString.getBytes())) });
  }
  
  void b(boolean paramBoolean)
  {
    f();
    s().z().a("Setting measurementEnabled", Boolean.valueOf(paramBoolean));
    SharedPreferences.Editor localEditor = y().edit();
    localEditor.putBoolean("measurement_enabled", paramBoolean);
    localEditor.apply();
  }
  
  long c()
  {
    G();
    f();
    long l2 = g.a();
    long l1 = l2;
    if (l2 == 0L)
    {
      l1 = s.nextInt(86400000) + 1;
      g.a(l1);
    }
    return l1;
  }
  
  Boolean v()
  {
    f();
    if (!y().contains("use_service")) {
      return null;
    }
    return Boolean.valueOf(y().getBoolean("use_service", false));
  }
  
  boolean w()
  {
    f();
    SharedPreferences localSharedPreferences = y();
    if (!b.d()) {}
    for (boolean bool = true;; bool = false) {
      return localSharedPreferences.getBoolean("measurement_enabled", bool);
    }
  }
  
  protected String x()
  {
    f();
    String str1 = y().getString("previous_os_version", null);
    String str2 = j().c();
    if ((!TextUtils.isEmpty(str2)) && (!str2.equals(str1)))
    {
      SharedPreferences.Editor localEditor = y().edit();
      localEditor.putString("previous_os_version", str2);
      localEditor.apply();
    }
    return str1;
  }
  
  public final class a
  {
    private final String b;
    private final boolean c;
    private boolean d;
    private boolean e;
    
    public a(String paramString, boolean paramBoolean)
    {
      zzx.zzcM(paramString);
      b = paramString;
      c = paramBoolean;
    }
    
    private void b()
    {
      if (d) {
        return;
      }
      d = true;
      e = ad.a(ad.this).getBoolean(b, c);
    }
    
    public void a(boolean paramBoolean)
    {
      SharedPreferences.Editor localEditor = ad.a(ad.this).edit();
      localEditor.putBoolean(b, paramBoolean);
      localEditor.apply();
      e = paramBoolean;
    }
    
    public boolean a()
    {
      b();
      return e;
    }
  }
  
  public final class b
  {
    private final String b;
    private final long c;
    private boolean d;
    private long e;
    
    public b(String paramString, long paramLong)
    {
      zzx.zzcM(paramString);
      b = paramString;
      c = paramLong;
    }
    
    private void b()
    {
      if (d) {
        return;
      }
      d = true;
      e = ad.a(ad.this).getLong(b, c);
    }
    
    public long a()
    {
      b();
      return e;
    }
    
    public void a(long paramLong)
    {
      SharedPreferences.Editor localEditor = ad.a(ad.this).edit();
      localEditor.putLong(b, paramLong);
      localEditor.apply();
      e = paramLong;
    }
  }
  
  public final class c
  {
    final String a;
    private final String c;
    private final String d;
    private final long e;
    
    private c(String paramString, long paramLong)
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
      f();
      long l = l().a();
      SharedPreferences.Editor localEditor = ad.a(ad.this).edit();
      localEditor.remove(c);
      localEditor.remove(d);
      localEditor.putLong(a, l);
      localEditor.apply();
    }
    
    private long c()
    {
      f();
      long l = d();
      if (l == 0L)
      {
        b();
        return 0L;
      }
      return Math.abs(l - l().a());
    }
    
    private long d()
    {
      return ad.c(ad.this).getLong(a, 0L);
    }
    
    public Pair<String, Long> a()
    {
      f();
      long l = c();
      if (l < e) {
        return null;
      }
      if (l > e * 2L)
      {
        b();
        return null;
      }
      String str = ad.c(ad.this).getString(d, null);
      l = ad.c(ad.this).getLong(c, 0L);
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
      f();
      if (d() == 0L) {
        b();
      }
      String str = paramString;
      if (paramString == null) {
        str = "";
      }
      long l = ad.a(ad.this).getLong(c, 0L);
      if (l <= 0L)
      {
        paramString = ad.a(ad.this).edit();
        paramString.putString(d, str);
        paramString.putLong(c, paramLong);
        paramString.apply();
        return;
      }
      if ((ad.b(ad.this).nextLong() & 0x7FFFFFFFFFFFFFFF) < Long.MAX_VALUE / (l + paramLong) * paramLong) {}
      for (int i = 1;; i = 0)
      {
        paramString = ad.a(ad.this).edit();
        if (i != 0) {
          paramString.putString(d, str);
        }
        paramString.putLong(c, l + paramLong);
        paramString.apply();
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.measurement.internal.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */