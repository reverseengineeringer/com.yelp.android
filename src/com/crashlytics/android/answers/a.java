package com.crashlytics.android.answers;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build.VERSION;
import com.yelp.android.ct.l;
import io.fabric.sdk.android.h;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.common.IdManager.DeviceIdentifierType;
import io.fabric.sdk.android.services.common.i.a;
import io.fabric.sdk.android.services.common.i.b;
import io.fabric.sdk.android.services.settings.q;
import io.fabric.sdk.android.services.settings.s;
import java.io.File;
import java.util.Map;
import java.util.UUID;

public class a
  extends h<Boolean>
{
  m a;
  private String b;
  private String c;
  private com.yelp.android.cu.b d;
  private long j;
  
  @SuppressLint({"CommitPrefEdits"})
  @TargetApi(14)
  private void a(Context paramContext)
  {
    try
    {
      k localk = new k(paramContext, new p(), new io.fabric.sdk.android.services.common.p(), new l(B(), i(), "session_analytics.tap", "session_analytics_to_send"));
      Object localObject3 = A();
      Object localObject4 = ((IdManager)localObject3).g();
      Object localObject1 = paramContext.getPackageName();
      Object localObject2 = ((IdManager)localObject3).b();
      String str1 = (String)((Map)localObject4).get(IdManager.DeviceIdentifierType.ANDROID_ID);
      String str2 = (String)((Map)localObject4).get(IdManager.DeviceIdentifierType.ANDROID_ADVERTISING_ID);
      localObject4 = (String)((Map)localObject4).get(IdManager.DeviceIdentifierType.FONT_TOKEN);
      String str3 = CommonUtils.m(paramContext);
      String str4 = ((IdManager)localObject3).d();
      localObject3 = ((IdManager)localObject3).e();
      localObject1 = new o((String)localObject1, UUID.randomUUID().toString(), (String)localObject2, str1, str2, (String)localObject4, str3, str4, (String)localObject3, b, c);
      localObject2 = (Application)B().getApplicationContext();
      if ((localObject2 != null) && (Build.VERSION.SDK_INT >= 14)) {}
      for (a = c.a((Application)localObject2, (o)localObject1, localk, new io.fabric.sdk.android.services.network.b(io.fabric.sdk.android.c.h())); a(j); a = m.a(paramContext, (o)localObject1, localk, new io.fabric.sdk.android.services.network.b(io.fabric.sdk.android.c.h())))
      {
        io.fabric.sdk.android.c.h().a("Answers", "First launch");
        a.b();
        d.a(d.b().putBoolean("analytics_launched", true));
        return;
      }
      return;
    }
    catch (Exception localException)
    {
      CommonUtils.a(paramContext, "Crashlytics failed to initialize session analytics.", localException);
    }
  }
  
  public static a c()
  {
    return (a)io.fabric.sdk.android.c.a(a.class);
  }
  
  public String a()
  {
    return "1.2.2.56";
  }
  
  public void a(i.a parama)
  {
    if (a != null) {
      a.a(parama.a());
    }
  }
  
  public void a(i.b paramb)
  {
    if (a != null) {
      a.b(paramb.a());
    }
  }
  
  boolean a(long paramLong)
  {
    return (!h()) && (b(paramLong));
  }
  
  public String b()
  {
    return "com.crashlytics.sdk.android:answers";
  }
  
  boolean b(long paramLong)
  {
    return System.currentTimeMillis() - paramLong < 3600000L;
  }
  
  @SuppressLint({"NewApi"})
  protected boolean c_()
  {
    try
    {
      d = new com.yelp.android.cu.c(this);
      Context localContext = B();
      PackageInfo localPackageInfo = localContext.getPackageManager().getPackageInfo(localContext.getPackageName(), 0);
      b = Integer.toString(versionCode);
      if (versionName == null) {}
      for (String str = "0.0";; str = versionName)
      {
        c = str;
        if (Build.VERSION.SDK_INT < 9) {
          break;
        }
        j = firstInstallTime;
        break label133;
      }
      j = new File(getPackageManagergetApplicationInfogetPackageName0sourceDir).lastModified();
    }
    catch (Exception localException)
    {
      io.fabric.sdk.android.c.h().e("Answers", "Error setting up app properties", localException);
      return false;
    }
    label133:
    return true;
  }
  
  protected Boolean e()
  {
    Context localContext = B();
    a(localContext);
    try
    {
      s locals = q.a().b();
      if (locals == null) {
        return Boolean.valueOf(false);
      }
      if (d.d)
      {
        a.a(e, g());
        return Boolean.valueOf(true);
      }
      CommonUtils.a(localContext, "Disabling analytics collection based on settings flag value.");
      a.a();
      return Boolean.valueOf(false);
    }
    catch (Exception localException)
    {
      io.fabric.sdk.android.c.h().e("Answers", "Error dealing with settings", localException);
    }
    return Boolean.valueOf(false);
  }
  
  String g()
  {
    return CommonUtils.b(B(), "com.crashlytics.ApiEndpoint");
  }
  
  boolean h()
  {
    return d.a().getBoolean("analytics_launched", false);
  }
  
  File i()
  {
    return new com.yelp.android.cu.a(this).a();
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.answers.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */