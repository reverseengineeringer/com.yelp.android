package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.google.android.gms.common.internal.zzx;

public final class ad$a
{
  private final String b;
  private final boolean c;
  private boolean d;
  private boolean e;
  
  public ad$a(ad paramad, String paramString, boolean paramBoolean)
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
    e = ad.a(a).getBoolean(b, c);
  }
  
  public void a(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = ad.a(a).edit();
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

/* Location:
 * Qualified Name:     com.google.android.gms.measurement.internal.ad.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */