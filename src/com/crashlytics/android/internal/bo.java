package com.crashlytics.android.internal;

import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import java.lang.reflect.Field;
import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class bo
{
  private static final Pattern a = Pattern.compile("[^\\p{Alnum}]");
  private static final String b = Pattern.quote("/");
  private final ReentrantLock c = new ReentrantLock();
  private final boolean d;
  private final boolean e;
  private final Context f;
  
  public bo(Context paramContext)
  {
    if (paramContext == null) {
      throw new IllegalArgumentException("appContext must not be null");
    }
    f = paramContext;
    d = bd.a(paramContext, "com.crashlytics.CollectDeviceIdentifiers", true);
    if (!d) {
      cl.a().b().a("Crashlytics", "Device ID collection disabled for " + paramContext.getPackageName());
    }
    e = bd.a(paramContext, "com.crashlytics.CollectUserIdentifiers", true);
    if (!e) {
      cl.a().b().a("Crashlytics", "User information collection disabled for " + paramContext.getPackageName());
    }
  }
  
  private String a(SharedPreferences paramSharedPreferences)
  {
    c.lock();
    try
    {
      String str2 = paramSharedPreferences.getString("crashlytics.installation.id", null);
      String str1 = str2;
      if (str2 == null)
      {
        str1 = b(UUID.randomUUID().toString());
        paramSharedPreferences.edit().putString("crashlytics.installation.id", str1).commit();
      }
      return str1;
    }
    finally
    {
      c.unlock();
    }
  }
  
  private static void a(Map<ap, String> paramMap, ap paramap, String paramString)
  {
    if (paramString != null) {
      paramMap.put(paramap, paramString);
    }
  }
  
  private boolean a(String paramString)
  {
    return f.checkCallingPermission(paramString) == 0;
  }
  
  private static String b(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    return a.matcher(paramString).replaceAll("").toLowerCase(Locale.US);
  }
  
  private static String c(String paramString)
  {
    return paramString.replaceAll(b, "");
  }
  
  private String i()
  {
    if ((d) && (Build.VERSION.SDK_INT >= 9)) {
      try
      {
        String str = b((String)Build.class.getField("SERIAL").get(null));
        return str;
      }
      catch (Exception localException)
      {
        cl.a().b().a("Crashlytics", "Could not retrieve android.os.Build.SERIAL value", localException);
      }
    }
    return null;
  }
  
  public final boolean a()
  {
    return e;
  }
  
  public final String b()
  {
    String str2 = cl.a().j();
    String str1 = str2;
    if (str2 == null)
    {
      SharedPreferences localSharedPreferences = bd.a();
      str2 = localSharedPreferences.getString("crashlytics.installation.id", null);
      str1 = str2;
      if (str2 == null) {
        str1 = a(localSharedPreferences);
      }
    }
    return str1;
  }
  
  public final String c()
  {
    return String.format(Locale.US, "%s/%s", new Object[] { c(Build.VERSION.RELEASE), c(Build.VERSION.INCREMENTAL) });
  }
  
  public final String d()
  {
    return String.format(Locale.US, "%s/%s", new Object[] { c(Build.MANUFACTURER), c(Build.MODEL) });
  }
  
  public final String e()
  {
    Object localObject = "";
    if (d)
    {
      String str = g();
      localObject = str;
      if (str == null)
      {
        SharedPreferences localSharedPreferences = bd.a();
        str = localSharedPreferences.getString("crashlytics.installation.id", null);
        localObject = str;
        if (str == null) {
          localObject = a(localSharedPreferences);
        }
      }
    }
    return (String)localObject;
  }
  
  public final Map<ap, String> f()
  {
    Object localObject2 = null;
    HashMap localHashMap = new HashMap();
    a(localHashMap, ap.c, g());
    ap localap = ap.d;
    if ((d) && (a("android.permission.READ_PHONE_STATE")))
    {
      localObject1 = (TelephonyManager)f.getSystemService("phone");
      if (localObject1 == null) {}
    }
    for (Object localObject1 = b(((TelephonyManager)localObject1).getDeviceId());; localObject1 = null)
    {
      a(localHashMap, localap, (String)localObject1);
      a(localHashMap, ap.e, i());
      localap = ap.a;
      localObject1 = localObject2;
      if (d)
      {
        localObject1 = localObject2;
        if (a("android.permission.ACCESS_WIFI_STATE"))
        {
          Object localObject3 = (WifiManager)f.getSystemService("wifi");
          localObject1 = localObject2;
          if (localObject3 != null)
          {
            localObject3 = ((WifiManager)localObject3).getConnectionInfo();
            localObject1 = localObject2;
            if (localObject3 != null) {
              localObject1 = b(((WifiInfo)localObject3).getMacAddress());
            }
          }
        }
      }
      a(localHashMap, localap, (String)localObject1);
      a(localHashMap, ap.b, h());
      return Collections.unmodifiableMap(localHashMap);
    }
  }
  
  public final String g()
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (d)
    {
      String str = Settings.Secure.getString(f.getContentResolver(), "android_id");
      localObject1 = localObject2;
      if (!"9774d56d682e549c".equals(str)) {
        localObject1 = b(str);
      }
    }
    return (String)localObject1;
  }
  
  public final String h()
  {
    if ((d) && (a("android.permission.BLUETOOTH"))) {}
    try
    {
      BluetoothAdapter localBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
      if (localBluetoothAdapter != null) {
        b(localBluetoothAdapter.getAddress());
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        cl.a().b().a("Crashlytics", "Utils#getBluetoothMacAddress failed, returning null. Requires prior call to BluetoothAdatpter.getDefaultAdapter() on thread that has called Looper.prepare()", localException);
      }
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.internal.bo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */