package com.google.android.gms.analytics;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;

class g
  implements q
{
  private static Object xO = new Object();
  private static g ye;
  protected String ya;
  protected String yb;
  protected String yc;
  protected String yd;
  
  protected g() {}
  
  private g(Context paramContext)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    yc = paramContext.getPackageName();
    yd = localPackageManager.getInstallerPackageName(yc);
    String str = yc;
    localObject2 = null;
    localObject1 = str;
    try
    {
      PackageInfo localPackageInfo = localPackageManager.getPackageInfo(paramContext.getPackageName(), 0);
      paramContext = (Context)localObject2;
      localObject1 = str;
      if (localPackageInfo != null)
      {
        localObject1 = str;
        paramContext = localPackageManager.getApplicationLabel(applicationInfo).toString();
        localObject1 = paramContext;
        str = versionName;
        localObject1 = paramContext;
        paramContext = str;
      }
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      for (;;)
      {
        ae.T("Error retrieving package info: appName set to " + (String)localObject1);
        paramContext = (Context)localObject2;
      }
    }
    ya = ((String)localObject1);
    yb = paramContext;
  }
  
  public static g dZ()
  {
    return ye;
  }
  
  public static void y(Context paramContext)
  {
    synchronized (xO)
    {
      if (ye == null) {
        ye = new g(paramContext);
      }
      return;
    }
  }
  
  public boolean ac(String paramString)
  {
    return ("&an".equals(paramString)) || ("&av".equals(paramString)) || ("&aid".equals(paramString)) || ("&aiid".equals(paramString));
  }
  
  public String getValue(String paramString)
  {
    if (paramString == null) {}
    do
    {
      return null;
      if (paramString.equals("&an")) {
        return ya;
      }
      if (paramString.equals("&av")) {
        return yb;
      }
      if (paramString.equals("&aid")) {
        return yc;
      }
    } while (!paramString.equals("&aiid"));
    return yd;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */