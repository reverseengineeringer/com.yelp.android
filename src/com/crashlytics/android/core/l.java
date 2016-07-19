package com.crashlytics.android.core;

import io.fabric.sdk.android.h;
import io.fabric.sdk.android.services.common.a;
import io.fabric.sdk.android.services.common.o;
import io.fabric.sdk.android.services.network.HttpMethod;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class l
  extends a
  implements k
{
  public l(h paramh, String paramString1, String paramString2, io.fabric.sdk.android.services.network.c paramc)
  {
    super(paramh, paramString1, paramString2, paramc, HttpMethod.POST);
  }
  
  private HttpRequest a(HttpRequest paramHttpRequest, j paramj)
  {
    paramHttpRequest = paramHttpRequest.a("X-CRASHLYTICS-API-KEY", a).a("X-CRASHLYTICS-API-CLIENT-TYPE", "android").a("X-CRASHLYTICS-API-CLIENT-VERSION", e.e().a());
    paramj = b.e().entrySet().iterator();
    while (paramj.hasNext()) {
      paramHttpRequest = paramHttpRequest.a((Map.Entry)paramj.next());
    }
    return paramHttpRequest;
  }
  
  private HttpRequest b(HttpRequest paramHttpRequest, j paramj)
  {
    paramj = b;
    return paramHttpRequest.a("report[file]", paramj.b(), "application/octet-stream", paramj.d()).e("report[identifier]", paramj.c());
  }
  
  public boolean a(j paramj)
  {
    paramj = b(a(b(), paramj), paramj);
    io.fabric.sdk.android.c.h().a("Fabric", "Sending report to: " + a());
    int i = paramj.b();
    io.fabric.sdk.android.c.h().a("Fabric", "Create report request ID: " + paramj.b("X-REQUEST-ID"));
    io.fabric.sdk.android.c.h().a("Fabric", "Result was: " + i);
    return o.a(i) == 0;
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.core.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */