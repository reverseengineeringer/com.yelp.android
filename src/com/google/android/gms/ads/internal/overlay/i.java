package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import com.google.android.gms.internal.au;
import com.google.android.gms.internal.ax;
import com.google.android.gms.internal.ib;
import com.google.android.gms.internal.kf;

public abstract class i
{
  public abstract h a(Context paramContext, ib paramib, int paramInt, ax paramax, au paramau);
  
  protected boolean a(Context paramContext)
  {
    paramContext = paramContext.getApplicationInfo();
    return (kf.c()) && ((paramContext == null) || (targetSdkVersion >= 11));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.overlay.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */