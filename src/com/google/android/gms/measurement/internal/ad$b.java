package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.google.android.gms.common.internal.zzx;

public final class ad$b
{
  private final String b;
  private final long c;
  private boolean d;
  private long e;
  
  public ad$b(ad paramad, String paramString, long paramLong)
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
    e = ad.a(a).getLong(b, c);
  }
  
  public long a()
  {
    b();
    return e;
  }
  
  public void a(long paramLong)
  {
    SharedPreferences.Editor localEditor = ad.a(a).edit();
    localEditor.putLong(b, paramLong);
    localEditor.apply();
    e = paramLong;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.measurement.internal.ad.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */