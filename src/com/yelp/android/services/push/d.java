package com.yelp.android.services.push;

import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Handler;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.i;
import com.yelp.android.appdata.n;
import com.yelp.android.aw.a;

public class d
{
  public static final String a = String.valueOf(new char[] { 53, 49, 54, 50, 50, 50, 57, 51, 55, 53, 53, 49 });
  private static d b;
  private long c = 60000L;
  private int d;
  private boolean e;
  private Handler f = new Handler();
  private Runnable g = new f(this);
  
  public static void a()
  {
    b = new d();
  }
  
  public static d b()
  {
    if (b != null) {
      return b;
    }
    throw new IllegalStateException();
  }
  
  public void a(String paramString)
  {
    AppData localAppData = AppData.b();
    localAppData.f().a(paramString);
    localAppData.startService(new Intent(localAppData, AccountPushRegistrationService.class));
  }
  
  public void c()
  {
    String str = g();
    if (str == null) {
      d();
    }
    while (AppData.b().f().f()) {
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
    AppData.b();
    new e(this).execute(new Void[0]);
  }
  
  public void e()
  {
    i locali = AppData.b().f();
    locali.a(false);
    locali.a(null);
    new a(AppData.b().h().b()).execute(new Void[0]);
  }
  
  public boolean f()
  {
    return GooglePlayServicesUtil.isGooglePlayServicesAvailable(AppData.b()) == 0;
  }
  
  public String g()
  {
    i locali = AppData.b().f();
    String str1 = locali.d();
    int i = locali.e();
    String str2 = AppData.c(AppData.b());
    int j = Build.VERSION.SDK_INT;
    if ((!str2.equals(str1)) || ((i != 0) && (i != j))) {
      return null;
    }
    return locali.c();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.push.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */