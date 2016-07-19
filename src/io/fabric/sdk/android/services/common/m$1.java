package io.fabric.sdk.android.services.common;

import android.content.Context;
import android.content.pm.PackageManager;
import com.yelp.android.cr.d;

class m$1
  implements d<String>
{
  m$1(m paramm) {}
  
  public String a(Context paramContext)
    throws Exception
  {
    String str = paramContext.getPackageManager().getInstallerPackageName(paramContext.getPackageName());
    paramContext = str;
    if (str == null) {
      paramContext = "";
    }
    return paramContext;
  }
}

/* Location:
 * Qualified Name:     io.fabric.sdk.android.services.common.m.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */