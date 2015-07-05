package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import java.util.regex.Pattern;

public final class lc
{
  private static Pattern Oe = null;
  
  public static boolean K(Context paramContext)
  {
    return paramContext.getPackageManager().hasSystemFeature("android.hardware.type.watch");
  }
  
  public static int aS(int paramInt)
  {
    return paramInt / 1000;
  }
  
  public static int aT(int paramInt)
  {
    return paramInt % 1000 / 100;
  }
  
  public static boolean aU(int paramInt)
  {
    return aT(paramInt) == 3;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.lc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */