package com.yelp.android.appdata;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.app.ActivityManager.MemoryInfo;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Build.VERSION;
import android.preference.PreferenceManager;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import com.yelp.android.e.m;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.TreeSet;
import java.util.UUID;

public class n
{
  protected final Context a;
  private String b;
  private String c;
  private String d;
  private final LinkedHashMap<String, String> e;
  private final String f;
  private final String g;
  private o h;
  
  public n(Context paramContext, Locale paramLocale, String paramString)
  {
    a = paramContext;
    d = ((TelephonyManager)paramContext.getSystemService("phone")).getNetworkOperatorName();
    if ((d == null) || (d.length() < 1)) {
      d = "none";
    }
    e = a(paramContext, paramLocale, paramString);
    paramLocale = String.format("YelpWebView/%s Android/%s YelpApp/%s (x-screen-scale %s;)", new Object[] { Float.valueOf(l()), Build.VERSION.RELEASE, BaseYelpApplication.c(a), Float.toString(ao.a()) });
    f = String.format("Version/1 Yelp/v%s Carrier/%s Model/%s OSBuild/%s Android/%s", (Object[])a(new String[] { BaseYelpApplication.c(a), d, Build.DEVICE, Build.ID, Build.VERSION.RELEASE }));
    g = paramLocale;
    h = new o(paramContext);
  }
  
  private static String a(NetworkInfo paramNetworkInfo)
  {
    StringBuilder localStringBuilder = new StringBuilder(2000);
    localStringBuilder.append("  TypeName: ");
    localStringBuilder.append(paramNetworkInfo.getTypeName());
    localStringBuilder.append("\n");
    localStringBuilder.append("  SubTypeName: ");
    localStringBuilder.append(paramNetworkInfo.getSubtypeName());
    localStringBuilder.append("\n");
    localStringBuilder.append("  Available: ");
    localStringBuilder.append(paramNetworkInfo.isAvailable());
    localStringBuilder.append("\n");
    localStringBuilder.append("  Connected: ");
    localStringBuilder.append(paramNetworkInfo.isConnected());
    localStringBuilder.append("\n");
    localStringBuilder.append("  Establishing: ");
    localStringBuilder.append(paramNetworkInfo.isConnectedOrConnecting());
    localStringBuilder.append("\n");
    localStringBuilder.append("  Extra: ");
    localStringBuilder.append(paramNetworkInfo.getExtraInfo());
    return localStringBuilder.toString();
  }
  
  private LinkedHashMap<String, String> a(Context paramContext, Locale paramLocale, String paramString)
  {
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    b = b(Settings.Secure.getString(paramContext.getContentResolver(), "android_id"));
    c = b();
    paramContext = Build.BRAND + "+" + Build.DEVICE + "/" + Build.ID;
    localLinkedHashMap.put("ywsid", paramString);
    localLinkedHashMap.put("device", b);
    localLinkedHashMap.put("y_device", c);
    localLinkedHashMap.put("device_type", paramContext);
    localLinkedHashMap.put("app_version", BaseYelpApplication.c(a));
    if (LocaleSettings.a.contains(Locale.getDefault().getCountry())) {
      localLinkedHashMap.put("cc", Locale.getDefault().getCountry());
    }
    localLinkedHashMap.put("lang", paramLocale.getLanguage());
    return localLinkedHashMap;
  }
  
  public static boolean a(int paramInt)
  {
    return Build.VERSION.SDK_INT >= paramInt;
  }
  
  public static boolean b(int paramInt)
  {
    return Build.VERSION.SDK_INT < paramInt;
  }
  
  public ArrayList<ArrayList<String>> a(p paramp)
  {
    ArrayList localArrayList1 = new ArrayList();
    Object localObject1 = new ArrayList();
    ((ArrayList)localObject1).add("== Yelp Version Info ==");
    ((ArrayList)localObject1).add("Yelp Version #: " + BaseYelpApplication.c(a));
    localArrayList1.add(localObject1);
    localObject1 = new ArrayList();
    ((ArrayList)localObject1).add("== OS Version ==");
    ((ArrayList)localObject1).add("ID: " + Build.ID);
    ((ArrayList)localObject1).add("Version.Inc: " + Build.VERSION.INCREMENTAL);
    ((ArrayList)localObject1).add("Version.Rel: " + Build.VERSION.RELEASE);
    ((ArrayList)localObject1).add("Version.SDK: " + Build.VERSION.SDK_INT);
    ((ArrayList)localObject1).add("Device ID: " + b);
    ((ArrayList)localObject1).add("Y Device ID: " + c);
    ((ArrayList)localObject1).add("Fingerprint: " + Build.FINGERPRINT);
    ((ArrayList)localObject1).add("Tags: " + Build.TAGS);
    ((ArrayList)localObject1).add("Host: " + Build.HOST);
    ((ArrayList)localObject1).add("Time: " + Build.TIME);
    ((ArrayList)localObject1).add("Type: " + Build.TYPE);
    ((ArrayList)localObject1).add("User: " + Build.USER);
    localArrayList1.add(localObject1);
    localObject1 = new ArrayList();
    ((ArrayList)localObject1).add("== Device Manufacturer ==");
    ((ArrayList)localObject1).add("Brand: " + Build.BRAND);
    ((ArrayList)localObject1).add("Device: " + Build.DEVICE);
    ((ArrayList)localObject1).add("Model: " + Build.MODEL);
    ((ArrayList)localObject1).add("Board: " + Build.BOARD);
    ((ArrayList)localObject1).add("Display: " + Build.DISPLAY);
    localArrayList1.add(localObject1);
    localObject1 = new ArrayList();
    ((ArrayList)localObject1).add("== Carrier ==");
    ((ArrayList)localObject1).add("Network Operator: " + d);
    localArrayList1.add(localObject1);
    localObject1 = new ArrayList();
    ((ArrayList)localObject1).add("== Location Info ==");
    ((ArrayList)localObject1).add("Location logging no longer exists.");
    localArrayList1.add(localObject1);
    ArrayList localArrayList2 = new ArrayList();
    localArrayList2.add("== Current Net Info ==");
    try
    {
      localObject1 = (ConnectivityManager)a.getSystemService("connectivity");
      if (localObject1 != null)
      {
        localObject1 = ((ConnectivityManager)localObject1).getActiveNetworkInfo();
        if (localObject1 != null)
        {
          localArrayList2.add(a((NetworkInfo)localObject1));
          localArrayList1.add(localArrayList2);
          localObject1 = new ArrayList();
          ((ArrayList)localObject1).add("== User Agent ==");
          ((ArrayList)localObject1).add(i());
          localArrayList1.add(localObject1);
          localObject1 = new ArrayList();
          ((ArrayList)localObject1).add("== Log In Info ==");
          ((ArrayList)localObject1).add(paramp.a());
          localArrayList1.add(localObject1);
          return localArrayList1;
        }
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localArrayList2.add("Error fetching connectivity manager: " + localException.toString());
        Object localObject2 = null;
        continue;
        localArrayList2.add("No network is active on device!");
        continue;
        localArrayList2.add("Error fetching connectivity manager: null");
      }
    }
  }
  
  public void a(String paramString)
  {
    if (e != null) {
      e.put("ywsid", paramString);
    }
  }
  
  public boolean a()
  {
    return h.a();
  }
  
  public String[] a(String... paramVarArgs)
  {
    int i = 0;
    for (;;)
    {
      if (i < paramVarArgs.length)
      {
        if (!TextUtils.isEmpty(paramVarArgs[i])) {}
        try
        {
          paramVarArgs[i] = URLEncoder.encode(paramVarArgs[i], "UTF-8");
          i += 1;
        }
        catch (UnsupportedEncodingException localUnsupportedEncodingException)
        {
          for (;;)
          {
            Log.e("DeviceInfo", "Could not encode argument into URL", localUnsupportedEncodingException);
            paramVarArgs[i] = "";
          }
        }
      }
    }
    return paramVarArgs;
  }
  
  public String b()
  {
    SharedPreferences localSharedPreferences = a.getSharedPreferences("DeviceInfo", 0);
    String str2 = localSharedPreferences.getString("KEY_Y_DEVICE_ID", null);
    String str1 = str2;
    if (str2 == null)
    {
      str1 = "y_" + UUID.randomUUID().toString();
      localSharedPreferences.edit().putString("KEY_Y_DEVICE_ID", str1).commit();
    }
    return str1;
  }
  
  public String b(String paramString)
  {
    SharedPreferences localSharedPreferences = a.getSharedPreferences("DeviceInfo", 0);
    String str = localSharedPreferences.getString("KEY_UNKNOWN_ID", null);
    if (str != null) {}
    do
    {
      return str;
      if (TextUtils.isEmpty(paramString)) {
        break;
      }
      str = paramString;
    } while (!"9774d56d682e549c".equals(paramString));
    paramString = UUID.randomUUID();
    paramString = "Unknown-" + paramString.toString();
    localSharedPreferences.edit().putString("KEY_UNKNOWN_ID", paramString).commit();
    return paramString;
  }
  
  public String c()
  {
    return b;
  }
  
  public String c(String paramString)
  {
    return g;
  }
  
  @TargetApi(17)
  public m<Integer, Integer> d()
  {
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    WindowManager localWindowManager = (WindowManager)a.getSystemService("window");
    if (a(17)) {
      localWindowManager.getDefaultDisplay().getRealMetrics(localDisplayMetrics);
    }
    for (;;)
    {
      return new m(Integer.valueOf(widthPixels), Integer.valueOf(heightPixels));
      localWindowManager.getDefaultDisplay().getMetrics(localDisplayMetrics);
    }
  }
  
  @TargetApi(16)
  public long e()
  {
    Object localObject;
    if (a(16))
    {
      localObject = (ActivityManager)a.getSystemService("activity");
      ActivityManager.MemoryInfo localMemoryInfo = new ActivityManager.MemoryInfo();
      ((ActivityManager)localObject).getMemoryInfo(localMemoryInfo);
      return totalMem / 1048576L;
    }
    long l2 = -1L;
    long l1 = l2;
    try
    {
      localObject = new BufferedReader(new FileReader("/proc/meminfo"), 8192);
      l1 = l2;
      l2 = Integer.valueOf(localObject.readLine().split("\\s+")[1]).intValue() / 1024;
      l1 = l2;
      ((BufferedReader)localObject).close();
      return l2;
    }
    catch (IOException localIOException) {}
    return l1;
  }
  
  public long f()
  {
    ActivityManager.MemoryInfo localMemoryInfo = new ActivityManager.MemoryInfo();
    ((ActivityManager)a.getSystemService("activity")).getMemoryInfo(localMemoryInfo);
    return availMem / 1048576L;
  }
  
  public LinkedHashMap<String, String> g()
  {
    return e;
  }
  
  public boolean h()
  {
    try
    {
      ConnectivityManager localConnectivityManager = (ConnectivityManager)a.getSystemService("connectivity");
      if (localConnectivityManager == null) {
        return false;
      }
    }
    catch (Exception localException)
    {
      return false;
    }
    return localException.getActiveNetworkInfo() != null;
  }
  
  public String i()
  {
    return f;
  }
  
  public String j()
  {
    if (TextUtils.isEmpty(d)) {
      return PreferenceManager.getDefaultSharedPreferences(a).getString("operator", "");
    }
    return d;
  }
  
  boolean k()
  {
    if (!TextUtils.isEmpty(d)) {
      return PreferenceManager.getDefaultSharedPreferences(a).edit().putString("operator", d).commit();
    }
    return false;
  }
  
  protected float l()
  {
    return 1.0F;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */