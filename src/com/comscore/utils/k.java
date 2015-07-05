package com.comscore.utils;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;

public class k
{
  private static String[] a = null;
  
  public static Boolean a(Context paramContext, String paramString)
  {
    int i = 0;
    if (a == null) {}
    try
    {
      a = getPackageManagergetPackageInfogetPackageName4096requestedPermissions;
      if (a != null) {
        while (i < a.length)
        {
          if (a[i].equals(paramString)) {
            return Boolean.valueOf(true);
          }
          i += 1;
        }
      }
    }
    catch (Exception paramContext)
    {
      for (;;) {}
    }
    return Boolean.valueOf(false);
  }
}

/* Location:
 * Qualified Name:     com.comscore.utils.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */