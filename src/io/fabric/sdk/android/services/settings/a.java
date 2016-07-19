package io.fabric.sdk.android.services.settings;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import io.fabric.sdk.android.h;
import io.fabric.sdk.android.j;
import io.fabric.sdk.android.k;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.o;
import io.fabric.sdk.android.services.network.HttpMethod;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.Closeable;
import java.io.InputStream;
import java.util.Collection;
import java.util.Iterator;
import java.util.Locale;

abstract class a
  extends io.fabric.sdk.android.services.common.a
{
  public a(h paramh, String paramString1, String paramString2, io.fabric.sdk.android.services.network.c paramc, HttpMethod paramHttpMethod)
  {
    super(paramh, paramString1, paramString2, paramc, paramHttpMethod);
  }
  
  private HttpRequest a(HttpRequest paramHttpRequest, d paramd)
  {
    return paramHttpRequest.a("X-CRASHLYTICS-API-KEY", a).a("X-CRASHLYTICS-API-CLIENT-TYPE", "android").a("X-CRASHLYTICS-API-CLIENT-VERSION", a.a());
  }
  
  private HttpRequest b(HttpRequest paramHttpRequest, d paramd)
  {
    HttpRequest localHttpRequest = paramHttpRequest.e("app[identifier]", b).e("app[name]", f).e("app[display_version]", c).e("app[build_version]", d).a("app[source]", Integer.valueOf(g)).e("app[minimum_sdk_version]", h).e("app[built_sdk_version]", i);
    if (!CommonUtils.c(e)) {
      localHttpRequest.e("app[instance_identifier]", e);
    }
    Object localObject;
    if (j != null)
    {
      localObject = null;
      paramHttpRequest = null;
    }
    try
    {
      InputStream localInputStream = a.B().getResources().openRawResource(j.b);
      paramHttpRequest = localInputStream;
      localObject = localInputStream;
      localHttpRequest.e("app[icon][hash]", j.a).a("app[icon][data]", "icon.png", "application/octet-stream", localInputStream).a("app[icon][width]", Integer.valueOf(j.c)).a("app[icon][height]", Integer.valueOf(j.d));
      CommonUtils.a(localInputStream, "Failed to close app icon InputStream.");
    }
    catch (Resources.NotFoundException localNotFoundException)
    {
      for (;;)
      {
        localObject = paramHttpRequest;
        io.fabric.sdk.android.c.h().e("Fabric", "Failed to find app icon with resource ID: " + j.b, localNotFoundException);
        CommonUtils.a(paramHttpRequest, "Failed to close app icon InputStream.");
      }
    }
    finally
    {
      CommonUtils.a((Closeable)localObject, "Failed to close app icon InputStream.");
    }
    if (k != null)
    {
      paramHttpRequest = k.iterator();
      while (paramHttpRequest.hasNext())
      {
        paramd = (j)paramHttpRequest.next();
        localHttpRequest.e(a(paramd), paramd.b());
        localHttpRequest.e(b(paramd), paramd.c());
      }
    }
    return localHttpRequest;
  }
  
  String a(j paramj)
  {
    return String.format(Locale.US, "app[build][libraries][%s][version]", new Object[] { paramj.a() });
  }
  
  public boolean a(d paramd)
  {
    HttpRequest localHttpRequest = b(a(b(), paramd), paramd);
    io.fabric.sdk.android.c.h().a("Fabric", "Sending app info to " + a());
    if (j != null)
    {
      io.fabric.sdk.android.c.h().a("Fabric", "App icon hash is " + j.a);
      io.fabric.sdk.android.c.h().a("Fabric", "App icon size is " + j.c + "x" + j.d);
    }
    int i = localHttpRequest.b();
    if ("POST".equals(localHttpRequest.p())) {}
    for (paramd = "Create";; paramd = "Update")
    {
      io.fabric.sdk.android.c.h().a("Fabric", paramd + " app request ID: " + localHttpRequest.b("X-REQUEST-ID"));
      io.fabric.sdk.android.c.h().a("Fabric", "Result was " + i);
      if (o.a(i) != 0) {
        break;
      }
      return true;
    }
    return false;
  }
  
  String b(j paramj)
  {
    return String.format(Locale.US, "app[build][libraries][%s][type]", new Object[] { paramj.a() });
  }
}

/* Location:
 * Qualified Name:     io.fabric.sdk.android.services.settings.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */