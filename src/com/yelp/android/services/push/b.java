package com.yelp.android.services.push;

import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Handler;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.c;
import com.yelp.android.appdata.f;
import com.yelp.android.appdata.webrequests.ar;
import java.util.Locale;

public class b
{
  public static final String a = String.valueOf(new char[] { 53, 49, 54, 50, 50, 50, 57, 51, 55, 53, 53, 49 });
  private static b b;
  private long c = 60000L;
  private int d;
  private boolean e;
  private Handler f = new Handler();
  private Runnable g = new b.2(this);
  
  public static void a()
  {
    b = new b();
  }
  
  public static b b()
  {
    if (b != null) {
      return b;
    }
    throw new IllegalStateException();
  }
  
  public void a(String paramString)
  {
    AppData localAppData = AppData.b();
    localAppData.f().a(false);
    localAppData.f().a(paramString);
    localAppData.startService(new Intent(localAppData, AccountPushRegistrationService.class));
  }
  
  public void c()
  {
    String str = g();
    Locale localLocale1 = bgetResourcesgetConfigurationlocale;
    Locale localLocale2 = AppData.b().f().X();
    if (str == null) {
      d();
    }
    while ((AppData.b().f().f()) && (localLocale1.equals(localLocale2))) {
      return;
    }
    a(str);
  }
  
  public void d()
  {
    if ((!f()) || (e)) {
      return;
    }
    e = true;
    new b.1(this).execute(new Void[0]);
  }
  
  public void e()
  {
    c localc = AppData.b().f();
    localc.a(false);
    localc.a(null);
    new ar(AppData.b().h().b()).f(new Void[0]);
  }
  
  public boolean f()
  {
    return GooglePlayServicesUtil.isGooglePlayServicesAvailable(AppData.b()) == 0;
  }
  
  public String g()
  {
    c localc = AppData.b().f();
    String str1 = localc.d();
    int i = localc.e();
    String str2 = AppData.c(AppData.b());
    int j = Build.VERSION.SDK_INT;
    if ((!str2.equals(str1)) || ((i != 0) && (i != j))) {
      return null;
    }
    return localc.c();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.push.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */