package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;

public final class jw
{
  @TargetApi(20)
  public static boolean a(Context paramContext)
  {
    return (kf.h()) && (paramContext.getPackageManager().hasSystemFeature("android.hardware.type.watch"));
  }
  
  public static boolean a(Resources paramResources)
  {
    if (paramResources == null) {}
    for (;;)
    {
      return false;
      if ((getConfigurationscreenLayout & 0xF) > 3) {}
      for (int i = 1; ((kf.a()) && (i != 0)) || (b(paramResources)); i = 0) {
        return true;
      }
    }
  }
  
  @TargetApi(13)
  private static boolean b(Resources paramResources)
  {
    boolean bool2 = false;
    paramResources = paramResources.getConfiguration();
    boolean bool1 = bool2;
    if (kf.b())
    {
      bool1 = bool2;
      if ((screenLayout & 0xF) <= 3)
      {
        bool1 = bool2;
        if (smallestScreenWidthDp >= 600) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */