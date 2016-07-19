package com.yelp.android.appdata;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.app.ActivityManager.MemoryInfo;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageManager;
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
import com.yelp.android.g.g;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.TreeSet;
import java.util.UUID;

public class f
{
  protected final Context a;
  private String b;
  private String c;
  private String d;
  private final LinkedHashMap<String, String> e;
  private final String f;
  private final String g;
  private a h;
  
  public f(Context paramContext, Locale paramLocale, String paramString)
  {
    a = paramContext;
    d = ((TelephonyManager)paramContext.getSystemService("phone")).getNetworkOperatorName();
    if ((d == null) || (d.length() < 1)) {
      d = "none";
    }
    e = a(paramContext, paramLocale, paramString);
    paramLocale = String.format("YelpWebView/%s Android/%s YelpApp/%s (x-screen-scale %s;)", new Object[] { Float.valueOf(j()), Build.VERSION.RELEASE, BaseYelpApplication.c(a), Float.toString(n.a()) });
    f = String.format("Version/1 Yelp/v%s Carrier/%s Model/%s OSBuild/%s Android/%s", (Object[])a(new String[] { BaseYelpApplication.c(a), d, Build.DEVICE, Build.ID, Build.VERSION.RELEASE }));
    g = paramLocale;
    h = new a(paramContext);
  }
  
  private LinkedHashMap<String, String> a(Context paramContext, Locale paramLocale, String paramString)
  {
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    b = a(Settings.Secure.getString(paramContext.getContentResolver(), "android_id"));
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
  
  public String a(String paramString)
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
      str1 = k();
      localSharedPreferences.edit().putString("KEY_Y_DEVICE_ID", str1).commit();
    }
    return str1;
  }
  
  public String b(String paramString)
  {
    return g;
  }
  
  public boolean c()
  {
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    ((WindowManager)a.getSystemService("window")).getDefaultDisplay().getMetrics(localDisplayMetrics);
    g localg = d();
    float f1 = ((Integer)a).intValue() / xdpi;
    float f2 = ((Integer)b).intValue() / ydpi;
    return Math.sqrt(f2 * f2 + f1 * f1) >= 6.5D;
  }
  
  @TargetApi(17)
  public g<Integer, Integer> d()
  {
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    WindowManager localWindowManager = (WindowManager)a.getSystemService("window");
    if (a(17)) {
      localWindowManager.getDefaultDisplay().getRealMetrics(localDisplayMetrics);
    }
    for (;;)
    {
      return new g(Integer.valueOf(widthPixels), Integer.valueOf(heightPixels));
      localWindowManager.getDefaultDisplay().getMetrics(localDisplayMetrics);
    }
  }
  
  @TargetApi(16)
  public long e()
  {
    Object localObject1;
    Object localObject2;
    if (a(16))
    {
      localObject1 = (ActivityManager)a.getSystemService("activity");
      localObject2 = new ActivityManager.MemoryInfo();
      ((ActivityManager)localObject1).getMemoryInfo((ActivityManager.MemoryInfo)localObject2);
      return totalMem / 1048576L;
    }
    long l3 = -1L;
    long l2 = l3;
    try
    {
      localObject1 = new BufferedReader(new FileReader("/proc/meminfo"), 8192);
      l2 = l3;
      localObject2 = ((BufferedReader)localObject1).readLine();
      long l1 = l3;
      if (localObject2 != null)
      {
        l2 = l3;
        l1 = Integer.valueOf(localObject2.split("\\s+")[1]).intValue() / 1024;
      }
      l2 = l1;
      ((BufferedReader)localObject1).close();
      return l1;
    }
    catch (IOException localIOException) {}
    return l2;
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
  
  public String h()
  {
    return f;
  }
  
  boolean i()
  {
    if (!TextUtils.isEmpty(d)) {
      return PreferenceManager.getDefaultSharedPreferences(a).edit().putString("operator", d).commit();
    }
    return false;
  }
  
  protected float j()
  {
    return 1.0F;
  }
  
  protected String k()
  {
    return "y_" + UUID.randomUUID().toString();
  }
  
  public static class a
  {
    protected final Context a;
    protected boolean b;
    
    public a(Context paramContext)
    {
      a = paramContext;
      b = paramContext.getPackageManager().hasSystemFeature("android.hardware.camera");
    }
    
    public boolean a()
    {
      return b;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */