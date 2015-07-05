package com.adjust.sdk;

import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class q
{
  private static SimpleDateFormat a;
  
  protected static String a()
  {
    return UUID.randomUUID().toString();
  }
  
  private static String a(int paramInt)
  {
    switch (paramInt & 0xF)
    {
    default: 
      return "unknown";
    case 1: 
    case 2: 
      return "phone";
    }
    return "tablet";
  }
  
  public static String a(long paramLong)
  {
    if (a == null) {
      a = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'Z", Locale.US);
    }
    return a.format(Long.valueOf(paramLong));
  }
  
  protected static String a(Context paramContext)
  {
    Object localObject = paramContext.getResources();
    DisplayMetrics localDisplayMetrics = ((Resources)localObject).getDisplayMetrics();
    localObject = ((Resources)localObject).getConfiguration();
    Locale localLocale = locale;
    int i = screenLayout;
    return TextUtils.join(" ", new String[] { f(paramContext), g(paramContext), a(i), b(), c(), d(), a(localLocale), b(localLocale), b(i), c(i), a(localDisplayMetrics), b(localDisplayMetrics), c(localDisplayMetrics) });
  }
  
  private static String a(DisplayMetrics paramDisplayMetrics)
  {
    int i = densityDpi;
    if (i == 0) {
      return "unknown";
    }
    if (i < 140) {
      return "low";
    }
    if (i > 200) {
      return "high";
    }
    return "medium";
  }
  
  public static String a(String paramString)
  {
    String str;
    if (paramString == null) {
      str = null;
    }
    do
    {
      return str;
      str = paramString;
    } while (!Pattern.compile("\\s").matcher(paramString).find());
    return String.format("'%s'", new Object[] { paramString });
  }
  
  private static String a(String paramString1, String paramString2)
  {
    String str = paramString1;
    if (TextUtils.isEmpty(paramString1)) {
      str = paramString2;
    }
    paramString1 = str.replaceAll("\\s", "");
    if (TextUtils.isEmpty(paramString1)) {
      return paramString2;
    }
    return paramString1;
  }
  
  private static String a(Locale paramLocale)
  {
    return c(paramLocale.getLanguage());
  }
  
  private static String b()
  {
    return b(Build.MODEL);
  }
  
  private static String b(int paramInt)
  {
    switch (paramInt & 0xF)
    {
    default: 
      return "unknown";
    case 1: 
      return "small";
    case 2: 
      return "normal";
    case 3: 
      return "large";
    }
    return "xlarge";
  }
  
  protected static String b(Context paramContext)
  {
    return Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
  }
  
  private static String b(DisplayMetrics paramDisplayMetrics)
  {
    return b(String.valueOf(widthPixels));
  }
  
  private static String b(String paramString)
  {
    return a(paramString, "unknown");
  }
  
  private static String b(Locale paramLocale)
  {
    return c(paramLocale.getCountry());
  }
  
  private static String c()
  {
    return "android";
  }
  
  private static String c(int paramInt)
  {
    switch (paramInt & 0x30)
    {
    default: 
      return "unknown";
    case 32: 
      return "long";
    }
    return "normal";
  }
  
  protected static String c(Context paramContext)
  {
    try
    {
      paramContext = paramContext.getContentResolver().query(Uri.parse("content://com.facebook.katana.provider.AttributionIdProvider"), new String[] { "aid" }, null, null, null);
      if (paramContext == null) {
        return null;
      }
      if (!paramContext.moveToFirst())
      {
        paramContext.close();
        return null;
      }
      String str = paramContext.getString(paramContext.getColumnIndex("aid"));
      paramContext.close();
      return str;
    }
    catch (Exception paramContext) {}
    return null;
  }
  
  private static String c(DisplayMetrics paramDisplayMetrics)
  {
    return b(String.valueOf(heightPixels));
  }
  
  private static String c(String paramString)
  {
    return a(paramString, "zz");
  }
  
  private static String d()
  {
    return b(Build.VERSION.SDK_INT);
  }
  
  public static String d(Context paramContext)
  {
    try
    {
      paramContext = h(paramContext);
      paramContext = (String)paramContext.getClass().getMethod("getId", new Class[0]).invoke(paramContext, new Object[0]);
      return paramContext;
    }
    catch (NoClassDefFoundError paramContext)
    {
      return null;
    }
    catch (Exception paramContext)
    {
      for (;;) {}
    }
  }
  
  public static boolean e(Context paramContext)
  {
    try
    {
      paramContext = h(paramContext);
      boolean bool = ((Boolean)paramContext.getClass().getMethod("isLimitAdTrackingEnabled", new Class[0]).invoke(paramContext, new Object[0])).booleanValue();
      return !bool;
    }
    catch (NoClassDefFoundError paramContext)
    {
      return false;
    }
    catch (Exception paramContext)
    {
      for (;;) {}
    }
  }
  
  private static String f(Context paramContext)
  {
    return b(paramContext.getPackageName());
  }
  
  private static String g(Context paramContext)
  {
    try
    {
      paramContext = b(getPackageManagergetPackageInfogetPackageName0versionName);
      return paramContext;
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
    return "unknown";
  }
  
  private static Object h(Context paramContext)
  {
    return Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient").getMethod("getAdvertisingIdInfo", new Class[] { Context.class }).invoke(null, new Object[] { paramContext });
  }
}

/* Location:
 * Qualified Name:     com.adjust.sdk.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */