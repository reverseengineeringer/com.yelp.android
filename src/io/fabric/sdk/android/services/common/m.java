package io.fabric.sdk.android.services.common;

import android.content.Context;
import android.content.pm.PackageManager;
import com.yelp.android.cr.b;
import com.yelp.android.cr.d;
import io.fabric.sdk.android.c;
import io.fabric.sdk.android.k;

public class m
{
  private final d<String> a = new d()
  {
    public String a(Context paramAnonymousContext)
      throws Exception
    {
      String str = paramAnonymousContext.getPackageManager().getInstallerPackageName(paramAnonymousContext.getPackageName());
      paramAnonymousContext = str;
      if (str == null) {
        paramAnonymousContext = "";
      }
      return paramAnonymousContext;
    }
  };
  private final b<String> b = new b();
  
  public String a(Context paramContext)
  {
    try
    {
      paramContext = (String)b.a(paramContext, a);
      boolean bool = "".equals(paramContext);
      if (bool) {
        paramContext = null;
      }
      return paramContext;
    }
    catch (Exception paramContext)
    {
      c.h().e("Fabric", "Failed to determine installer package name", paramContext);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     io.fabric.sdk.android.services.common.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */