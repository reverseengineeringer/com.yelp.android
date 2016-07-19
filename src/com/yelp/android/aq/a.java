package com.yelp.android.aq;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build.VERSION;

@SuppressLint({"NewApi"})
public class a
{
  private static boolean a = false;
  private static boolean b = false;
  
  public static boolean a(Context paramContext)
  {
    if (a) {
      return b;
    }
    if (Build.VERSION.SDK_INT > 4) {
      try
      {
        paramContext = paramContext.getPackageManager().getInstallerPackageName(paramContext.getPackageName());
        if (("com.android.vending".equals(paramContext)) || ("com.google.play".equals(paramContext)))
        {
          a = true;
          b = true;
          return true;
        }
      }
      catch (Exception paramContext)
      {
        a = true;
        b = false;
        return false;
      }
    }
    a = true;
    b = false;
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.aq.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */