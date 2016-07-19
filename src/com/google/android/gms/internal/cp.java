package com.google.android.gms.internal;

import android.content.Context;
import android.content.MutableContextWrapper;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.e;
import com.google.android.gms.ads.internal.l;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;

@fv
public class cp
{
  private MutableContextWrapper a;
  private final ds b;
  private final VersionInfoParcel c;
  private final e d;
  
  cp(Context paramContext, ds paramds, VersionInfoParcel paramVersionInfoParcel, e parame)
  {
    a = new MutableContextWrapper(paramContext.getApplicationContext());
    b = paramds;
    c = paramVersionInfoParcel;
    d = parame;
  }
  
  public l a(String paramString)
  {
    return new l(a, new AdSizeParcel(), paramString, b, c, d);
  }
  
  public cp a()
  {
    return new cp(a.getBaseContext(), b, c, d);
  }
  
  public MutableContextWrapper b()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */