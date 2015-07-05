package com.crashlytics.android.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.Log;

public class cj
  implements ci
{
  public static int a(int paramInt)
  {
    if ((paramInt >= 200) && (paramInt <= 299)) {}
    do
    {
      return 0;
      if ((paramInt >= 300) && (paramInt <= 399)) {
        return 1;
      }
    } while ((paramInt >= 400) && (paramInt <= 499));
    if (paramInt >= 500) {
      return 1;
    }
    return 1;
  }
  
  public static String a(Context paramContext, boolean paramBoolean)
  {
    try
    {
      localObject1 = paramContext.getApplicationContext();
      localObject3 = ((Context)localObject1).getPackageName();
      localObject1 = getPackageManagergetApplicationInfo128metaData;
      if (localObject1 == null) {
        break label133;
      }
      localObject1 = ((Bundle)localObject1).getString("com.crashlytics.ApiKey");
    }
    catch (Exception localException)
    {
      for (;;)
      {
        Object localObject1;
        int i;
        co.a().b().a("Crashlytics", "Caught non-fatal exception while retrieving apiKey: " + localException);
        label133:
        Object localObject2 = null;
      }
      co.a().b().a("Crashlytics", "Crashlytics could not be initialized, API key missing from AndroidManifest.xml. Add the following tag to your Application element \n\t<meta-data android:name=\"com.crashlytics.ApiKey\" android:value=\"YOUR_API_KEY\"/>", null);
    }
    Object localObject3 = localObject1;
    if (bd.e((String)localObject1))
    {
      i = bd.a(paramContext, "com.crashlytics.ApiKey", "string");
      localObject3 = localObject1;
      if (i != 0) {
        localObject3 = paramContext.getResources().getString(i);
      }
    }
    if (bd.e((String)localObject3)) {
      if ((paramBoolean) || (bd.f(paramContext))) {
        throw new IllegalArgumentException("Crashlytics could not be initialized, API key missing from AndroidManifest.xml. Add the following tag to your Application element \n\t<meta-data android:name=\"com.crashlytics.ApiKey\" android:value=\"YOUR_API_KEY\"/>");
      }
    }
    return (String)localObject3;
  }
  
  private static boolean b(int paramInt)
  {
    return co.a().h() <= paramInt;
  }
  
  public final void a(int paramInt, String paramString1, String paramString2)
  {
    a(paramInt, paramString1, paramString2, false);
  }
  
  public final void a(int paramInt, String paramString1, String paramString2, boolean paramBoolean)
  {
    if ((paramBoolean) || (b(paramInt))) {
      Log.println(paramInt, paramString1, paramString2);
    }
  }
  
  public final void a(String paramString1, String paramString2)
  {
    if (b(3)) {
      Log.d(paramString1, paramString2, null);
    }
  }
  
  public final void a(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (b(6)) {
      Log.e(paramString1, paramString2, paramThrowable);
    }
  }
  
  public final void b(String paramString1, String paramString2)
  {
    if (b(4)) {
      Log.i(paramString1, paramString2, null);
    }
  }
  
  public final void c(String paramString1, String paramString2)
  {
    if (b(5)) {
      Log.w(paramString1, paramString2, null);
    }
  }
  
  public final void d(String paramString1, String paramString2)
  {
    a(paramString1, paramString2, null);
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.internal.cj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */