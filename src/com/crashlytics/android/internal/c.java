package com.crashlytics.android.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build.VERSION;
import java.io.File;

public class c
  extends ck
{
  private String a;
  private String b;
  private String c;
  private bo d;
  private aj e;
  private long f;
  private bu g;
  private n h;
  
  public static c a()
  {
    return (c)cl.a().a(c.class);
  }
  
  private String b()
  {
    return bd.a(w(), "com.crashlytics.ApiEndpoint");
  }
  
  public final void a(bg parambg)
  {
    if (h != null) {
      h.a(parambg.a());
    }
  }
  
  public final void a(bh parambh)
  {
    if (h != null) {
      h.b(parambh.a());
    }
  }
  
  protected final void e()
  {
    for (;;)
    {
      try
      {
        g = new bu(cl.a().b());
        e = new aj(cl.a().a(c.class));
        localContext = w();
        localObject = localContext.getPackageManager();
        d = new bo(localContext);
        a = localContext.getPackageName();
        localPackageInfo = ((PackageManager)localObject).getPackageInfo(a, 0);
        b = Integer.toString(versionCode);
        if (versionName != null) {
          continue;
        }
        localObject = "0.0";
        c = ((String)localObject);
        if (Build.VERSION.SDK_INT < 9) {
          continue;
        }
        f = firstInstallTime;
      }
      catch (Exception localException)
      {
        Context localContext;
        Object localObject;
        PackageInfo localPackageInfo;
        cl.a().b().a("Crashlytics", "Error setting up app properties", localException);
        continue;
      }
      new Thread(new d(this), "Crashlytics Initializer").start();
      return;
      localObject = versionName;
      continue;
      f = new File(getPackageManagergetApplicationInfogetPackageName0sourceDir).lastModified();
    }
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.internal.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */