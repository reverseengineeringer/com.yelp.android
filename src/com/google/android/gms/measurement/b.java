package com.google.android.gms.measurement;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzx;
import com.yelp.android.ba.a.e;

public final class b
{
  private static volatile b e;
  private final String a;
  private final Status b;
  private final boolean c;
  private final boolean d;
  
  b(Context paramContext)
  {
    paramContext = paramContext.getResources();
    String str = paramContext.getResourcePackageName(a.e.common_google_play_services_unknown_issue);
    int i = paramContext.getIdentifier("google_app_measurement_enable", "integer", str);
    if (i != 0) {
      if (paramContext.getInteger(i) != 0)
      {
        bool1 = true;
        if (bool1) {
          break label111;
        }
        label52:
        d = bool2;
        label58:
        c = bool1;
        i = paramContext.getIdentifier("google_app_id", "string", str);
        if (i != 0) {
          break label135;
        }
        if (!c) {
          break label125;
        }
      }
    }
    label111:
    label125:
    for (b = new Status(10, "Missing an expected resource: 'R.string.google_app_id' for initializing Google services.  Possible causes are missing google-services.json or com.google.gms.google-services gradle plugin.");; b = Status.zzagC)
    {
      a = null;
      return;
      bool1 = false;
      break;
      bool2 = false;
      break label52;
      d = false;
      break label58;
    }
    label135:
    paramContext = paramContext.getString(i);
    if (TextUtils.isEmpty(paramContext))
    {
      if (c) {}
      for (b = new Status(10, "The resource 'R.string.google_app_id' is invalid, expected an app  identifier and found: '" + paramContext + "'.");; b = Status.zzagC)
      {
        a = null;
        return;
      }
    }
    a = paramContext;
    b = Status.zzagC;
  }
  
  b(Context paramContext, String paramString, boolean paramBoolean)
  {
    a = paramString;
    b = Status.zzagC;
    c = paramBoolean;
    if (!paramBoolean) {}
    for (paramBoolean = true;; paramBoolean = false)
    {
      d = paramBoolean;
      return;
    }
  }
  
  public static Status a(Context paramContext)
  {
    zzx.zzb(paramContext, "Context must not be null.");
    if (e == null) {}
    try
    {
      if (e == null) {
        e = new b(paramContext);
      }
      return eb;
    }
    finally {}
  }
  
  public static Status a(Context paramContext, String paramString, boolean paramBoolean)
  {
    zzx.zzb(paramContext, "Context must not be null.");
    zzx.zzh(paramString, "App ID must be nonempty.");
    try
    {
      if (e != null)
      {
        paramContext = e.a(paramString);
        return paramContext;
      }
      e = new b(paramContext, paramString, paramBoolean);
      return eb;
    }
    finally {}
  }
  
  public static String a()
  {
    if (e == null) {
      try
      {
        if (e == null) {
          throw new IllegalStateException("Initialize must be called before getGoogleAppId.");
        }
      }
      finally {}
    }
    return e.b();
  }
  
  public static boolean c()
  {
    if (e == null) {
      try
      {
        if (e == null) {
          throw new IllegalStateException("Initialize must be called before isMeasurementEnabled.");
        }
      }
      finally {}
    }
    return e.e();
  }
  
  public static boolean d()
  {
    if (e == null) {
      try
      {
        if (e == null) {
          throw new IllegalStateException("Initialize must be called before isMeasurementExplicitlyDisabled.");
        }
      }
      finally {}
    }
    return ed;
  }
  
  Status a(String paramString)
  {
    if ((a != null) && (!a.equals(paramString))) {
      return new Status(10, "Initialize was called with two different Google App IDs.  Only the first app ID will be used: '" + a + "'.");
    }
    return Status.zzagC;
  }
  
  String b()
  {
    return a;
  }
  
  boolean e()
  {
    return (b.isSuccess()) && (c);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.measurement.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */