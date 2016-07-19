package io.fabric.sdk.android.services.common;

import android.content.Context;
import io.fabric.sdk.android.c;
import io.fabric.sdk.android.k;
import java.lang.reflect.Method;

class d
  implements f
{
  private final Context a;
  
  public d(Context paramContext)
  {
    a = paramContext.getApplicationContext();
  }
  
  private String b()
  {
    try
    {
      String str = (String)Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient$Info").getMethod("getId", new Class[0]).invoke(d(), new Object[0]);
      return str;
    }
    catch (Exception localException)
    {
      c.h().d("Fabric", "Could not call getId on com.google.android.gms.ads.identifier.AdvertisingIdClient$Info");
    }
    return null;
  }
  
  private boolean c()
  {
    try
    {
      boolean bool = ((Boolean)Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient$Info").getMethod("isLimitAdTrackingEnabled", new Class[0]).invoke(d(), new Object[0])).booleanValue();
      return bool;
    }
    catch (Exception localException)
    {
      c.h().d("Fabric", "Could not call isLimitAdTrackingEnabled on com.google.android.gms.ads.identifier.AdvertisingIdClient$Info");
    }
    return false;
  }
  
  private Object d()
  {
    try
    {
      Object localObject = Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient").getMethod("getAdvertisingIdInfo", new Class[] { Context.class }).invoke(null, new Object[] { a });
      return localObject;
    }
    catch (Exception localException)
    {
      c.h().d("Fabric", "Could not call getAdvertisingIdInfo on com.google.android.gms.ads.identifier.AdvertisingIdClient");
    }
    return null;
  }
  
  public b a()
  {
    if (a(a)) {
      return new b(b(), c());
    }
    return null;
  }
  
  boolean a(Context paramContext)
  {
    try
    {
      int i = ((Integer)Class.forName("com.google.android.gms.common.GooglePlayServicesUtil").getMethod("isGooglePlayServicesAvailable", new Class[] { Context.class }).invoke(null, new Object[] { paramContext })).intValue();
      return i == 0;
    }
    catch (Exception paramContext) {}
    return false;
  }
}

/* Location:
 * Qualified Name:     io.fabric.sdk.android.services.common.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */