package com.yelp.android.appdata;

import android.app.Activity;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.SystemClock;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.comscore.utils.TransmissionMode;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.yelp.android.analytics.iris.AutoIri;
import com.yelp.android.analytics.iris.TimingIri;
import com.yelp.android.analytics.j;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.appdata.webrequests.ec;
import com.yelp.android.appdata.webrequests.fl;
import com.yelp.android.appdata.webrequests.o;
import com.yelp.android.debug.Debug;
import com.yelp.android.services.push.AccountPushRegistrationService;
import com.yelp.android.services.push.t;
import com.yelp.android.services.x;
import com.yelp.android.ui.util.ci;
import com.yelp.android.ui.util.cw;
import com.yelp.android.ui.util.dg;
import com.yelp.android.util.YelpLog;
import com.yelp.android.util.YelpLogDelegate;
import com.yelp.android.util.ak;
import com.yelp.android.webimageview.ImageLoader;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import org.apache.http.client.HttpClient;

public class AppData
  extends BaseYelpApplication
  implements ar
{
  private static AppData h;
  private com.yelp.android.appdata.webrequests.n A;
  private StateBroadcastReceiver B;
  private com.yelp.android.be.c C;
  private final com.yelp.android.appdata.webrequests.m<o> D = new e(this);
  HttpClient a;
  private ci i;
  private LocationService j;
  private i k;
  private LocaleSettings l;
  private n m;
  private com.yelp.android.database.q n;
  private com.yelp.android.database.m o;
  private com.yelp.android.av.a p;
  private dc q;
  private com.path.android.jobqueue.c r;
  private Debug s;
  private k t;
  private WeakReference<com.yelp.android.ui.activities.support.h> u;
  private com.yelp.android.services.push.i v;
  private boolean w;
  private boolean x;
  private boolean y;
  private HashSet<t> z;
  
  private void A()
  {
    ImageLoader.initialize(this, new b(this));
    ImageLoader.trimCache();
    YelpLog.registerDelegate(new YelpLogDelegate());
    if (m != null) {
      com.crashlytics.android.d.d(m.b());
    }
    cw.a(getResources());
    if (q.c())
    {
      G();
      q.f();
    }
    com.comscore.analytics.h.a(this);
    com.comscore.analytics.h.a("https://sb.scorecardresearch.com/p2?c2=" + x.e());
    com.comscore.analytics.h.a(true);
    com.comscore.analytics.h.a(TransmissionMode.NEVER);
    com.comscore.analytics.h.c();
    B = StateBroadcastReceiver.a(this, this);
    com.yelp.android.appdata.experiment.g.a(com.yelp.android.appdata.experiment.e.a);
    com.yelp.android.appdata.experiment.d.a(com.yelp.android.appdata.experiment.e.b);
    Features.setData(com.yelp.android.appdata.experiment.e.c);
    com.yelp.android.av.a locala = b().k();
    locala.a(true);
    locala.c();
    int i1 = GooglePlayServicesUtil.isGooglePlayServicesAvailable(this);
    if (i1 != 0)
    {
      com.crashlytics.android.d.a("GooglePlayServicesUnavailable", true);
      a(AutoIri.GooglePlayServicesUnavailable, "reason_code", String.valueOf(i1));
    }
    com.yelp.android.ui.util.q.a();
    ak.a(getContentResolver(), h().b());
  }
  
  private void B()
  {
    if ((b().m().c()) && (!b().m().e())) {
      new com.yelp.android.appdata.webrequests.b(b().m().b(), new c(this)).execute(new Object[0]);
    }
  }
  
  private void C()
  {
    YelpLog.i(this, "Starting Push Service");
    com.yelp.android.services.push.d.b().c();
  }
  
  private void D()
  {
    YelpLog.i(this, "Stopping Push Service");
    com.yelp.android.services.push.d.b().e();
    k.a(null);
    k.a(false);
  }
  
  private void E()
  {
    new ec(new g(this)).execute(new Void[0]);
  }
  
  private void F()
  {
    k.c(false);
    k.d(false);
    k.e(false);
  }
  
  private void G()
  {
    Object localObject1 = PreferenceManager.getDefaultSharedPreferences(this);
    Object localObject2 = ((SharedPreferences)localObject1).getAll();
    boolean bool = ((SharedPreferences)localObject1).getBoolean(getString(2131165980), false);
    String str = getString(2131166315);
    localObject2 = ((Map)localObject2).get(str);
    if ((bool) && (localObject2 == null))
    {
      ((SharedPreferences)localObject1).edit().putBoolean(str, true).commit();
      localObject1 = new RemoteConfigPreferences();
      ((RemoteConfigPreferences)localObject1).a(new am(true));
      new fl(null, (RemoteConfigPreferences)localObject1, null, null).execute(new Void[0]);
    }
  }
  
  private void a(Configuration paramConfiguration)
  {
    l.a(locale);
    paramConfiguration = l.a();
    if (!TextUtils.equals(paramConfiguration, o.c())) {}
    try
    {
      o.a(this, paramConfiguration, LocaleSettings.b());
      return;
    }
    catch (IOException paramConfiguration)
    {
      YelpLog.e(this, "Error loading new category database for locale");
    }
  }
  
  public static void a(com.yelp.android.analytics.b paramb)
  {
    b().k().a(paramb);
  }
  
  public static void a(TimingIri paramTimingIri, long paramLong)
  {
    b().k().a(new com.yelp.android.analytics.n(paramTimingIri, paramLong, null));
  }
  
  public static void a(com.yelp.android.analytics.iris.b paramb)
  {
    b().k().a(paramb, Collections.emptyMap());
  }
  
  public static void a(com.yelp.android.analytics.iris.b paramb, String paramString, Object paramObject)
  {
    b().k().a(paramb, Collections.singletonMap(paramString, paramObject));
  }
  
  public static void a(com.yelp.android.analytics.iris.b paramb, Map<String, Object> paramMap)
  {
    b().k().a(paramb, paramMap);
  }
  
  private void a(Map<String, String> paramMap)
  {
    k.v();
    String str = getSharedPreferences("Features", 0).getString(Features.updated_privacy_policy.getKey(), null);
    paramMap = (String)paramMap.get(Features.updated_privacy_policy.getKey());
    if ((str == null) && (paramMap != null) && (k.u() == 1) && (k.g() == 1)) {
      k.c(true);
    }
    if ((str == null) && (paramMap != null) && (!k.k())) {
      F();
    }
    long l1;
    do
    {
      do
      {
        return;
      } while (((str == null) && (paramMap == null)) || ((str == null) && (paramMap != null) && (k.k())));
      if ((str != null) && (paramMap == null))
      {
        k.c(false);
        return;
      }
      l1 = Long.parseLong(str);
    } while (Long.parseLong(paramMap) <= l1);
    F();
  }
  
  public static AppData b()
  {
    try
    {
      AppData localAppData = h;
      return localAppData;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  public static boolean d()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 470	com/yelp/android/appdata/AppData:h	Lcom/yelp/android/appdata/AppData;
    //   6: ifnull +21 -> 27
    //   9: getstatic 470	com/yelp/android/appdata/AppData:h	Lcom/yelp/android/appdata/AppData;
    //   12: invokevirtual 471	com/yelp/android/appdata/AppData:e	()Z
    //   15: istore_0
    //   16: iload_0
    //   17: ifeq +10 -> 27
    //   20: iconst_1
    //   21: istore_0
    //   22: ldc 2
    //   24: monitorexit
    //   25: iload_0
    //   26: ireturn
    //   27: iconst_0
    //   28: istore_0
    //   29: goto -7 -> 22
    //   32: astore_1
    //   33: ldc 2
    //   35: monitorexit
    //   36: aload_1
    //   37: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   15	14	0	bool	boolean
    //   32	5	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   3	16	32	finally
  }
  
  public static com.path.android.jobqueue.c r()
  {
    return br;
  }
  
  public void a()
  {
    com.yelp.android.services.push.d.a();
    com.crashlytics.android.d.a(this);
    i = new com.yelp.android.ui.util.e(this);
    v = new com.yelp.android.services.push.i();
    z = new HashSet();
    k = new i(this);
    k.r();
    l = new LocaleSettings(getResourcesgetConfigurationlocale);
    m = new bb(this, l.h(), x.g());
    ao.a(getResourcesgetDisplayMetricsdensity);
    s = new Debug(this, m);
    q = new dc(k, m);
    p = new com.yelp.android.av.a(this, m);
    try
    {
      if (o != null) {
        o.a();
      }
      o = new com.yelp.android.database.m(this, l.a(), LocaleSettings.b());
      if (n != null) {
        n.a();
      }
      n = new com.yelp.android.database.q(this);
      j = LocationService.c(this);
      t = new k(this);
      A();
      a(new com.path.android.jobqueue.c(this, com.yelp.android.services.job.a.a(this)));
      j.a();
      C = new com.yelp.android.be.c(p);
      return;
    }
    catch (Exception localException)
    {
      throw new RuntimeException("Could not initialize properly", localException);
    }
  }
  
  public void a(Context paramContext)
  {
    paramContext.startService(new Intent(paramContext, AccountPushRegistrationService.class));
    if (!w) {
      s();
    }
    if (u != null)
    {
      paramContext = (com.yelp.android.ui.activities.support.h)u.get();
      if ((paramContext != null) && (paramContext.e().a())) {
        paramContext.c().showDialog(2131492896);
      }
    }
    B();
  }
  
  public void a(com.path.android.jobqueue.c paramc)
  {
    r = paramc;
  }
  
  public void a(RemoteConfigPreferences paramRemoteConfigPreferences)
  {
    a(new t[] { paramRemoteConfigPreferences.b(), paramRemoteConfigPreferences.a(), paramRemoteConfigPreferences.m(), paramRemoteConfigPreferences.k(), paramRemoteConfigPreferences.l(), paramRemoteConfigPreferences.g(), paramRemoteConfigPreferences.d(), paramRemoteConfigPreferences.f(), paramRemoteConfigPreferences.c() });
  }
  
  public void a(com.yelp.android.ui.activities.support.h paramh)
  {
    u = new WeakReference(paramh);
  }
  
  public void a(String paramString)
  {
    m().a(this);
    o().a(new com.yelp.android.debug.h(paramString), getApplicationContext());
    i().f().c();
    i().g().b();
    onLowMemory();
    q();
    new Thread(new h(this)).start();
  }
  
  public void a(boolean paramBoolean)
  {
    try
    {
      x = paramBoolean;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void a(t... paramVarArgs)
  {
    Collections.addAll(z, paramVarArgs);
    int i2 = paramVarArgs.length;
    int i1 = 0;
    if (i1 < i2)
    {
      t localt = paramVarArgs[i1];
      if (localt == null) {
        z.remove(null);
      }
      for (;;)
      {
        i1 += 1;
        break;
        z.removeAll(localt.getAntiTokens());
      }
    }
    if (z.isEmpty())
    {
      D();
      return;
    }
    C();
  }
  
  public void attachBaseContext(Context paramContext)
  {
    super.attachBaseContext(paramContext);
  }
  
  public void b(Context paramContext)
  {
    w = false;
    y = true;
    com.yelp.android.av.a.a();
    b().m().w();
    ab.b();
    k.Y();
  }
  
  public com.yelp.android.services.push.i c()
  {
    return v;
  }
  
  public boolean e()
  {
    try
    {
      boolean bool = x;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public i f()
  {
    return k;
  }
  
  public LocaleSettings g()
  {
    return l;
  }
  
  public n h()
  {
    return m;
  }
  
  public com.yelp.android.database.q i()
  {
    if (n == null) {
      throw new IllegalStateException("The database must be open in order to access it.");
    }
    return n;
  }
  
  public final com.yelp.android.database.m j()
  {
    return o;
  }
  
  public com.yelp.android.av.a k()
  {
    return p;
  }
  
  public dc l()
  {
    return m();
  }
  
  public dc m()
  {
    return q;
  }
  
  public LocationService n()
  {
    return j;
  }
  
  public Debug o()
  {
    return s;
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    try
    {
      super.onConfigurationChanged(paramConfiguration);
      if (b)
      {
        m = new bb(this, locale, x.g());
        a(paramConfiguration);
      }
      if (e) {
        m.k();
      }
      if ((c) || (b) || (e)) {
        new d(this).start();
      }
      return;
    }
    finally {}
  }
  
  public void onCreate()
  {
    long l1 = SystemClock.elapsedRealtime();
    super.onCreate();
    h = this;
    a();
    a(true);
    m.k();
    System.setProperty("releaseWhenSurfaceDestroyed", "true");
    com.yelp.android.be.b localb = C.a();
    localb.a(l1);
    localb.b();
    localb.e();
  }
  
  public void onLowMemory()
  {
    super.onLowMemory();
    ImageLoader.clearCache();
    com.bumptech.glide.h.b(this).h();
  }
  
  public void onTerminate()
  {
    super.onTerminate();
    ImageLoader.trimCache();
    ((NotificationManager)getSystemService("notification")).cancel(2131623954);
  }
  
  public void onTrimMemory(int paramInt)
  {
    ImageLoader.clearCache();
    com.bumptech.glide.h.b(this).a(paramInt);
  }
  
  public final HttpClient p()
  {
    if (a != null) {
      return a;
    }
    return com.yelp.android.services.d.a(this, s, m);
  }
  
  public void q()
  {
    z.clear();
    D();
  }
  
  public void s()
  {
    if (A != null)
    {
      A.cancel(true);
      A.setCallback(null);
    }
    w = true;
    A = new com.yelp.android.appdata.webrequests.n(D);
    A.execute(new Void[0]);
  }
  
  public k t()
  {
    return t;
  }
  
  public void u()
  {
    if (y)
    {
      k.m();
      y = false;
    }
  }
  
  public ci v()
  {
    return i;
  }
  
  public com.yelp.android.be.c w()
  {
    return C;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.AppData
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */