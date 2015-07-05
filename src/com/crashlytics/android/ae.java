package com.crashlytics.android;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import com.crashlytics.android.internal.ax;
import com.crashlytics.android.internal.bd;
import com.crashlytics.android.internal.bu;
import com.crashlytics.android.internal.bw;
import com.crashlytics.android.internal.ci;
import com.crashlytics.android.internal.cj;
import com.crashlytics.android.internal.cl;
import com.crashlytics.android.internal.y;
import java.io.Closeable;
import java.io.InputStream;

abstract class ae
  extends y
{
  public ae(String paramString1, String paramString2, bu parambu, ax paramax)
  {
    super(paramString1, paramString2, parambu, paramax);
  }
  
  private static bw a(bw parambw, ak paramak)
  {
    bw localbw = parambw.b("app[identifier]", b).b("app[name]", f).b("app[display_version]", c).b("app[build_version]", d).a("app[source]", Integer.valueOf(g)).b("app[minimum_sdk_version]", h).b("app[built_sdk_version]", i);
    if (!bd.e(e)) {
      localbw.b("app[instance_identifier]", e);
    }
    Object localObject;
    if (j != null)
    {
      localObject = null;
      parambw = null;
    }
    try
    {
      InputStream localInputStream = cl.a().w().getResources().openRawResource(j.b);
      parambw = localInputStream;
      localObject = localInputStream;
      localbw.b("app[icon][hash]", j.a).a("app[icon][data]", "icon.png", "application/octet-stream", localInputStream).a("app[icon][width]", Integer.valueOf(j.c)).a("app[icon][height]", Integer.valueOf(j.d));
      bd.a(localInputStream, "Failed to close app icon InputStream.");
      return localbw;
    }
    catch (Resources.NotFoundException localNotFoundException)
    {
      localObject = parambw;
      cl.a().b().a("Crashlytics", "Failed to find app icon with resource ID: " + j.b, localNotFoundException);
      bd.a(parambw, "Failed to close app icon InputStream.");
      return localbw;
    }
    finally
    {
      bd.a((Closeable)localObject, "Failed to close app icon InputStream.");
    }
  }
  
  public final boolean a(ak paramak)
  {
    bw localbw = a(b().a("X-CRASHLYTICS-API-KEY", a).a("X-CRASHLYTICS-API-CLIENT-TYPE", "android").a("X-CRASHLYTICS-API-CLIENT-VERSION", cl.a().f()), paramak);
    cl.a().b().a("Crashlytics", "Sending app info to " + a());
    if (j != null)
    {
      cl.a().b().a("Crashlytics", "App icon hash is " + j.a);
      cl.a().b().a("Crashlytics", "App icon size is " + j.c + "x" + j.d);
    }
    int i = localbw.b();
    if ("POST".equals(localbw.d())) {}
    for (paramak = "Create";; paramak = "Update")
    {
      cl.a().b().a("Crashlytics", paramak + " app request ID: " + localbw.a("X-REQUEST-ID"));
      cl.a().b().a("Crashlytics", "Result was " + i);
      if (cj.a(i) != 0) {
        break;
      }
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */