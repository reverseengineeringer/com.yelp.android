package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.http.AndroidHttpClient;
import android.os.Build.VERSION;
import java.io.File;

public class c
{
  public static iw a(Context paramContext)
  {
    return a(paramContext, null);
  }
  
  public static iw a(Context paramContext, ma paramma)
  {
    File localFile = new File(paramContext.getCacheDir(), "volley");
    Object localObject = "volley/0";
    try
    {
      String str = paramContext.getPackageName();
      paramContext = paramContext.getPackageManager().getPackageInfo(str, 0);
      paramContext = str + "/" + versionCode;
      localObject = paramContext;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      label118:
      for (;;) {}
    }
    paramContext = paramma;
    if (paramma == null) {
      if (Build.VERSION.SDK_INT < 9) {
        break label118;
      }
    }
    for (paramContext = new mb();; paramContext = new ly(AndroidHttpClient.newInstance((String)localObject)))
    {
      paramContext = new lv(paramContext);
      paramContext = new iw(new lx(localFile), paramContext);
      paramContext.a();
      return paramContext;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */