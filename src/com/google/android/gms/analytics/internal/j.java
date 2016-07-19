package com.google.android.gms.analytics.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.jt;
import java.util.UUID;

public class j
  extends r
{
  private SharedPreferences a;
  private long b;
  private long c = -1L;
  private final a d = new a("monitoring", q().G(), null);
  
  protected j(t paramt)
  {
    super(paramt);
  }
  
  protected void a()
  {
    a = o().getSharedPreferences("com.google.android.gms.analytics.prefs", 0);
  }
  
  public void a(String paramString)
  {
    m();
    D();
    SharedPreferences.Editor localEditor = a.edit();
    if (TextUtils.isEmpty(paramString)) {
      localEditor.remove("installation_campaign");
    }
    for (;;)
    {
      if (!localEditor.commit()) {
        e("Failed to commit campaign data");
      }
      return;
      localEditor.putString("installation_campaign", paramString);
    }
  }
  
  public long b()
  {
    m();
    D();
    long l;
    if (b == 0L)
    {
      l = a.getLong("first_run", 0L);
      if (l == 0L) {
        break label46;
      }
    }
    for (b = l;; b = l)
    {
      return b;
      label46:
      l = n().a();
      SharedPreferences.Editor localEditor = a.edit();
      localEditor.putLong("first_run", l);
      if (!localEditor.commit()) {
        e("Failed to commit first run time");
      }
    }
  }
  
  public k c()
  {
    return new k(n(), b());
  }
  
  public long d()
  {
    m();
    D();
    if (c == -1L) {
      c = a.getLong("last_dispatch", 0L);
    }
    return c;
  }
  
  public void e()
  {
    m();
    D();
    long l = n().a();
    SharedPreferences.Editor localEditor = a.edit();
    localEditor.putLong("last_dispatch", l);
    localEditor.apply();
    c = l;
  }
  
  public String f()
  {
    m();
    D();
    String str = a.getString("installation_campaign", null);
    if (TextUtils.isEmpty(str)) {
      return null;
    }
    return str;
  }
  
  public a g()
  {
    return d;
  }
  
  public final class a
  {
    private final String b;
    private final long c;
    
    private a(String paramString, long paramLong)
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
      long l = n().a();
      SharedPreferences.Editor localEditor = j.a(j.this).edit();
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
      return Math.abs(l - n().a());
    }
    
    private long e()
    {
      return j.a(j.this).getLong(f(), 0L);
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
        str = j.a(j.this).getString(b(), null);
        l = j.a(j.this).getLong(g(), 0L);
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
          long l = j.a(j.this).getLong(g(), 0L);
          if (l <= 0L)
          {
            paramString = j.a(j.this).edit();
            paramString.putString(b(), str);
            paramString.putLong(g(), 1L);
            paramString.apply();
            return;
          }
          if ((UUID.randomUUID().getLeastSignificantBits() & 0x7FFFFFFFFFFFFFFF) < Long.MAX_VALUE / (l + 1L))
          {
            i = 1;
            paramString = j.a(j.this).edit();
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
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */