package com.google.android.gms.analytics.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;

public class o
  extends r
{
  protected String a;
  protected String b;
  protected boolean c;
  protected int d;
  protected boolean e;
  protected int f;
  protected boolean g;
  protected boolean h;
  
  public o(t paramt)
  {
    super(paramt);
  }
  
  private static int a(String paramString)
  {
    paramString = paramString.toLowerCase();
    if ("verbose".equals(paramString)) {
      return 0;
    }
    if ("info".equals(paramString)) {
      return 1;
    }
    if ("warning".equals(paramString)) {
      return 2;
    }
    if ("error".equals(paramString)) {
      return 3;
    }
    return -1;
  }
  
  protected void a()
  {
    j();
  }
  
  void a(b paramb)
  {
    b("Loading global XML config values");
    String str;
    if (paramb.a())
    {
      str = paramb.b();
      b = str;
      b("XML config - app name", str);
    }
    if (paramb.c())
    {
      str = paramb.d();
      a = str;
      b("XML config - app version", str);
    }
    int i;
    if (paramb.e())
    {
      i = a(paramb.f());
      if (i >= 0)
      {
        d = i;
        a("XML config - log level", Integer.valueOf(i));
      }
    }
    if (paramb.g())
    {
      i = paramb.h();
      f = i;
      e = true;
      b("XML config - dispatch period (sec)", Integer.valueOf(i));
    }
    if (paramb.i())
    {
      boolean bool = paramb.j();
      h = bool;
      g = true;
      b("XML config - dry run", Boolean.valueOf(bool));
    }
  }
  
  public String b()
  {
    D();
    return a;
  }
  
  public String c()
  {
    D();
    return b;
  }
  
  public boolean d()
  {
    D();
    return c;
  }
  
  public int e()
  {
    D();
    return d;
  }
  
  public boolean f()
  {
    D();
    return e;
  }
  
  public int g()
  {
    D();
    return f;
  }
  
  public boolean h()
  {
    D();
    return g;
  }
  
  public boolean i()
  {
    D();
    return h;
  }
  
  protected void j()
  {
    Object localObject1 = o();
    try
    {
      localObject1 = ((Context)localObject1).getPackageManager().getApplicationInfo(((Context)localObject1).getPackageName(), 129);
      if (localObject1 == null)
      {
        e("Couldn't get ApplicationInfo to load global config");
        return;
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      Object localObject2;
      do
      {
        int i;
        do
        {
          do
          {
            for (;;)
            {
              d("PackageManager doesn't know about the app package", localNameNotFoundException);
              localObject2 = null;
            }
            localObject2 = metaData;
          } while (localObject2 == null);
          i = ((Bundle)localObject2).getInt("com.google.android.gms.analytics.globalConfigResource");
        } while (i <= 0);
        localObject2 = (b)new al(k()).a(i);
      } while (localObject2 == null);
      a((b)localObject2);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */