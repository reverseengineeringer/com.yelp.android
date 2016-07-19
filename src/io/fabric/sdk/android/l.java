package io.fabric.sdk.android;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.DeliveryMechanism;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.common.g;
import io.fabric.sdk.android.services.network.b;
import io.fabric.sdk.android.services.settings.d;
import io.fabric.sdk.android.services.settings.e;
import io.fabric.sdk.android.services.settings.n;
import io.fabric.sdk.android.services.settings.q;
import io.fabric.sdk.android.services.settings.s;
import io.fabric.sdk.android.services.settings.x;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Future;

class l
  extends h<Boolean>
{
  private final io.fabric.sdk.android.services.network.c a = new b();
  private PackageManager b;
  private String c;
  private PackageInfo d;
  private String j;
  private String k;
  private String l;
  private String m;
  private String n;
  private final Future<Map<String, j>> o;
  private final Collection<h> p;
  
  public l(Future<Map<String, j>> paramFuture, Collection<h> paramCollection)
  {
    o = paramFuture;
    p = paramCollection;
  }
  
  private d a(n paramn, Collection<j> paramCollection)
  {
    Object localObject = B();
    String str = new g().a((Context)localObject);
    localObject = CommonUtils.a(new String[] { CommonUtils.m((Context)localObject) });
    int i = DeliveryMechanism.determineFrom(l).getId();
    return new d(str, A().c(), k, j, (String)localObject, m, i, n, "0", paramn, paramCollection);
  }
  
  private boolean a(e parame, n paramn, Collection<j> paramCollection)
  {
    paramn = a(paramn, paramCollection);
    return new x(this, e(), c, a).a(paramn);
  }
  
  private boolean a(String paramString, e parame, Collection<j> paramCollection)
  {
    boolean bool = true;
    if ("new".equals(b)) {
      if (b(paramString, parame, paramCollection)) {
        bool = q.a().d();
      }
    }
    do
    {
      return bool;
      c.h().e("Fabric", "Failed to create app with Crashlytics service.", null);
      return false;
      if ("configured".equals(b)) {
        return q.a().d();
      }
    } while (!e);
    c.h().a("Fabric", "Server says an update is required - forcing a full App update.");
    c(paramString, parame, paramCollection);
    return true;
  }
  
  private boolean b(String paramString, e parame, Collection<j> paramCollection)
  {
    paramString = a(n.a(B(), paramString), paramCollection);
    return new io.fabric.sdk.android.services.settings.h(this, e(), c, a).a(paramString);
  }
  
  private boolean c(String paramString, e parame, Collection<j> paramCollection)
  {
    return a(parame, n.a(B(), paramString), paramCollection);
  }
  
  private s g()
  {
    try
    {
      q.a().a(this, i, a, j, k, e()).c();
      s locals = q.a().b();
      return locals;
    }
    catch (Exception localException)
    {
      c.h().e("Fabric", "Error dealing with settings", localException);
    }
    return null;
  }
  
  public String a()
  {
    return "1.3.4.60";
  }
  
  Map<String, j> a(Map<String, j> paramMap, Collection<h> paramCollection)
  {
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext())
    {
      h localh = (h)paramCollection.next();
      if (!paramMap.containsKey(localh.b())) {
        paramMap.put(localh.b(), new j(localh.b(), localh.a(), "binary"));
      }
    }
    return paramMap;
  }
  
  public String b()
  {
    return "io.fabric.sdk.android:fabric";
  }
  
  protected Boolean c()
  {
    String str = CommonUtils.k(B());
    s locals = g();
    if (locals != null) {}
    for (;;)
    {
      try
      {
        if (o != null)
        {
          localObject = (Map)o.get();
          localObject = a((Map)localObject, p);
          bool = a(str, a, ((Map)localObject).values());
          return Boolean.valueOf(bool);
        }
        Object localObject = new HashMap();
        continue;
        boolean bool = false;
      }
      catch (Exception localException)
      {
        c.h().e("Fabric", "Error performing auto configuration.", localException);
      }
    }
  }
  
  protected boolean c_()
  {
    try
    {
      l = A().h();
      b = B().getPackageManager();
      c = B().getPackageName();
      d = b.getPackageInfo(c, 0);
      j = Integer.toString(d.versionCode);
      if (d.versionName == null) {}
      for (String str = "0.0";; str = d.versionName)
      {
        k = str;
        m = b.getApplicationLabel(B().getApplicationInfo()).toString();
        n = Integer.toString(BgetApplicationInfotargetSdkVersion);
        return true;
      }
      return false;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      c.h().e("Fabric", "Failed init", localNameNotFoundException);
    }
  }
  
  String e()
  {
    return CommonUtils.b(B(), "com.crashlytics.ApiEndpoint");
  }
}

/* Location:
 * Qualified Name:     io.fabric.sdk.android.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */