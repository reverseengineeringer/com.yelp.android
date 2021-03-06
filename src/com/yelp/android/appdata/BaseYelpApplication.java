package com.yelp.android.appdata;

import android.app.Application;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import com.yelp.android.database.e;
import com.yelp.android.debug.Debug;
import com.yelp.android.util.YelpLog;
import java.text.SimpleDateFormat;
import java.util.Locale;

public abstract class BaseYelpApplication
  extends Application
{
  protected static BaseYelpApplication f;
  public static final SimpleDateFormat g = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss.SSS", Locale.US);
  private Configuration a;
  protected boolean b;
  protected boolean c;
  protected boolean d;
  protected boolean e;
  
  public static BaseYelpApplication K()
  {
    try
    {
      BaseYelpApplication localBaseYelpApplication = f;
      return localBaseYelpApplication;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public static void a(Object paramObject, Process paramProcess) {}
  
  public static void a(Object paramObject, String paramString, Object... paramVarArgs) {}
  
  public static String c(Context paramContext)
  {
    try
    {
      String str = getPackageManagergetPackageInfogetPackageName0versionName;
      return str;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      YelpLog.e(paramContext, "Could not determine Application Version", localNameNotFoundException);
    }
    return "???";
  }
  
  public static BaseYelpApplication d(Context paramContext)
  {
    return (BaseYelpApplication)paramContext.getApplicationContext();
  }
  
  public abstract d I();
  
  public abstract r J();
  
  public abstract LocaleSettings g();
  
  public abstract f h();
  
  public abstract e j();
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    boolean bool2 = true;
    for (;;)
    {
      int i;
      int j;
      int k;
      try
      {
        super.onConfigurationChanged(paramConfiguration);
        if (a != null)
        {
          i = paramConfiguration.diff(a);
          break label186;
          b = bool1;
          if ((i & 0x1) == 1) {
            break label199;
          }
          if ((i & 0x2) == 2)
          {
            break label199;
            e = bool1;
            if ((i & 0x80) != 128) {
              continue;
            }
            j = 1;
            break label205;
            c = bool1;
            if ((i & 0x40000000) != 1073741824) {
              continue;
            }
            bool1 = bool2;
            d = bool1;
            if ((d) || (c)) {
              n.a(getResourcesgetDisplayMetricsdensity);
            }
            a = new Configuration(paramConfiguration);
          }
        }
        else
        {
          i = -1;
          break label186;
          bool1 = false;
          continue;
        }
        bool1 = false;
        continue;
        j = 0;
        break label205;
        k = 0;
        break label219;
        bool1 = false;
        continue;
        bool1 = false;
        continue;
        if ((i & 0x4) != 4) {
          continue;
        }
      }
      finally {}
      label186:
      boolean bool1 = true;
      continue;
      label199:
      bool1 = true;
      continue;
      label205:
      if ((i & 0x100) == 256)
      {
        k = 1;
        label219:
        if ((j != 0) || (k != 0)) {
          bool1 = true;
        }
      }
    }
  }
  
  public void onCreate()
  {
    super.onCreate();
    f = this;
    registerActivityLifecycleCallbacks(a.a());
  }
  
  public abstract Debug t();
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.BaseYelpApplication
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */