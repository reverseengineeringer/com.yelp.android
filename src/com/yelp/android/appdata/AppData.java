package com.yelp.android.appdata;

import android.app.Activity;
import android.app.AlarmManager;
import android.app.NotificationManager;
import android.content.ContentProviderClient;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.bugsnag.android.Bugsnag;
import com.comscore.analytics.k;
import com.comscore.utils.TransmissionMode;
import com.crashlytics.android.core.e.a;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.yelp.android.analytics.adjust.AdjustManager;
import com.yelp.android.analytics.i.a;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.TimingIri;
import com.yelp.android.appdata.experiment.BackgroundLocationExperiment;
import com.yelp.android.appdata.experiment.BackgroundLocationExperiment.Cohort;
import com.yelp.android.appdata.webrequests.ApiException;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.appdata.webrequests.core.MetricsManager;
import com.yelp.android.appdata.webrequests.core.c.a;
import com.yelp.android.appdata.webrequests.df;
import com.yelp.android.appdata.webrequests.l.a;
import com.yelp.android.au.a.a;
import com.yelp.android.debug.Debug;
import com.yelp.android.serializable.PhotoAdsConfig;
import com.yelp.android.serializable.PrivacyPolicy;
import com.yelp.android.ui.util.ao;
import com.yelp.android.ui.util.av;
import com.yelp.android.ui.util.ax;
import com.yelp.android.ui.util.t;
import com.yelp.android.util.YelpLog;
import com.yelp.android.util.YelpLogDelegate;
import com.yelp.android.util.r;
import com.yelp.android.util.v;
import com.yelp.android.webimageview.ImageLoader;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.Locale;
import java.util.Map;
import org.apache.http.client.HttpClient;

public class AppData
  extends BaseYelpApplication
  implements StateBroadcastReceiver.a
{
  private static AppData h;
  private static boolean i = false;
  private e A;
  private WeakReference<com.yelp.android.ui.activities.support.b> B;
  private com.yelp.android.services.push.e C;
  private PhotoAdsConfig D;
  private m E;
  private boolean F;
  private com.yelp.android.appdata.webrequests.l G;
  private StateBroadcastReceiver H;
  private com.yelp.android.cn.d I;
  private long J = SystemClock.elapsedRealtime();
  private com.yelp.android.bz.a K;
  private com.yelp.android.bt.b L;
  private com.yelp.android.ce.a M;
  private final ApiRequest.b<l.a> N = new ApiRequest.b()
  {
    boolean a = false;
    
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, l.a paramAnonymousa)
    {
      AppData.a(AppData.this, a);
      com.yelp.android.appdata.experiment.j.a().a(com.yelp.android.appdata.experiment.j.a(b, com.yelp.android.appdata.experiment.e.u));
      Features.data().a(a);
      if (a.containsKey(Features.mobile_google_analytics.getKey())) {}
      for (paramAnonymousApiRequest = (String)a.get(Features.mobile_google_analytics.getKey());; paramAnonymousApiRequest = String.valueOf(Features.mobile_google_analytics.isEnabled()))
      {
        MetricsManager localMetricsManager = AppData.b().k();
        if ("false".equals(paramAnonymousApiRequest)) {
          localMetricsManager.a(false);
        }
        AppData.b().f().h(e);
        if (e) {
          AppData.a(AppData.this);
        }
        AppData.b(AppData.this).a(c);
        AppData.b(AppData.this).f(f);
        AppData.b(AppData.this).d(d);
        return;
      }
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      new Handler(Looper.getMainLooper()).postDelayed(new Runnable()
      {
        public void run()
        {
          if (!a)
          {
            a = true;
            x();
          }
        }
      }, 5000L);
    }
  };
  HttpClient a;
  private ao j;
  private LocationService k;
  private c l;
  private LocaleSettings m;
  private f n;
  private com.yelp.android.database.g o;
  private com.yelp.android.database.e p;
  private MetricsManager q;
  private co r;
  private com.path.android.jobqueue.b s;
  private com.yelp.android.ui.util.a t;
  private AdjustManager u;
  private com.yelp.android.analytics.i v;
  private ApiPreferences w;
  private com.yelp.android.services.backgroundlocation.a x;
  private boolean y;
  private Debug z;
  
  public static boolean G()
  {
    try
    {
      boolean bool = i;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private void L()
  {
    ImageLoader.initialize(this, new Thread.UncaughtExceptionHandler()
    {
      public void uncaughtException(Thread paramAnonymousThread, Throwable paramAnonymousThrowable)
      {
        com.yelp.android.au.a.a(paramAnonymousThrowable);
      }
    });
    ImageLoader.trimCache();
    if (n != null)
    {
      com.yelp.android.au.a.b(n.b());
      Bugsnag.setUserId(n.b());
    }
    av.a(getResources());
    k.c("Yelp");
    k.a(this);
    k.b(true);
    k.b(TransmissionMode.DEFAULT);
    k.a(TransmissionMode.WIFIONLY);
    k.a(false);
    k.b(com.yelp.android.services.i.d());
    k.a(com.yelp.android.services.i.e());
    k.d(com.yelp.android.services.i.f());
    H = StateBroadcastReceiver.a(this, this);
    MetricsManager localMetricsManager = b().k();
    localMetricsManager.a(true);
    localMetricsManager.c();
    int i1 = GooglePlayServicesUtil.isGooglePlayServicesAvailable(this);
    if (i1 != 0)
    {
      com.yelp.android.au.a.a("GooglePlayServicesUnavailable", true);
      a(EventIri.GooglePlayServicesUnavailable, "reason_code", String.valueOf(i1));
    }
    M();
  }
  
  private void M()
  {
    Object localObject = Uri.withAppendedPath(v.a(), "ydid");
    localObject = getContentResolver().acquireContentProviderClient((Uri)localObject);
    if (localObject == null) {
      return;
    }
    ((ContentProviderClient)localObject).release();
    v.a(getContentResolver(), h().b());
  }
  
  private void N()
  {
    if ((b().q().b()) && (!b().q().d())) {
      new com.yelp.android.appdata.webrequests.c(b().q().a(), new ApiRequest.b()
      {
        public void a(ApiRequest paramAnonymousApiRequest, Boolean paramAnonymousBoolean)
        {
          if (paramAnonymousBoolean.booleanValue()) {
            AppData.b().q().a(true);
          }
        }
        
        public void onError(ApiRequest paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
        {
          YelpLog.e(this, "Error checking email confirmation.");
        }
      }).f(new String[0]);
    }
  }
  
  private void O()
  {
    YelpLog.i(this, "Starting Push Service");
    com.yelp.android.services.push.b.b().c();
  }
  
  private void P()
  {
    YelpLog.i(this, "Stopping Push Service");
    com.yelp.android.services.push.b.b().e();
    l.a(null);
    l.a(false);
  }
  
  private void Q()
  {
    new df(new ApiRequest.b()
    {
      public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, PrivacyPolicy paramAnonymousPrivacyPolicy)
      {
        AppData.b().f().a(paramAnonymousPrivacyPolicy);
      }
      
      public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException) {}
    }).f(new Void[0]);
  }
  
  private void R()
  {
    l.c(false);
    l.d(false);
    l.g(false);
  }
  
  private void a(Configuration paramConfiguration)
  {
    m.a(locale);
    paramConfiguration = m.a();
    if (!TextUtils.equals(paramConfiguration, p.c())) {}
    try
    {
      p.a(this, paramConfiguration, LocaleSettings.b());
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
    b().k().a(new com.yelp.android.analytics.l(paramTimingIri, paramLong, null));
  }
  
  public static void a(com.yelp.android.analytics.iris.a parama)
  {
    b().k().a(parama, Collections.emptyMap());
  }
  
  public static void a(com.yelp.android.analytics.iris.a parama, String paramString, Object paramObject)
  {
    b().k().a(parama, Collections.singletonMap(paramString, paramObject));
  }
  
  public static void a(com.yelp.android.analytics.iris.a parama, Map<String, Object> paramMap)
  {
    b().k().a(parama, paramMap);
  }
  
  private void a(Map<String, String> paramMap)
  {
    l.y();
    String str = getSharedPreferences("Features", 0).getString(Features.updated_privacy_policy.getKey(), null);
    paramMap = (String)paramMap.get(Features.updated_privacy_policy.getKey());
    if ((str == null) && (paramMap != null) && (l.x() == 1) && (l.i() == 1)) {
      l.c(true);
    }
    if ((str == null) && (paramMap != null) && (!l.m())) {
      R();
    }
    long l1;
    do
    {
      do
      {
        return;
      } while (((str == null) && (paramMap == null)) || ((str == null) && (paramMap != null) && (l.m())));
      if ((str != null) && (paramMap == null))
      {
        l.c(false);
        return;
      }
      l1 = Long.parseLong(str);
    } while (Long.parseLong(paramMap) <= l1);
    R();
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
    //   3: getstatic 456	com/yelp/android/appdata/AppData:h	Lcom/yelp/android/appdata/AppData;
    //   6: ifnull +21 -> 27
    //   9: getstatic 456	com/yelp/android/appdata/AppData:h	Lcom/yelp/android/appdata/AppData;
    //   12: invokevirtual 462	com/yelp/android/appdata/AppData:e	()Z
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
  
  public static com.path.android.jobqueue.b w()
  {
    return bs;
  }
  
  public ao A()
  {
    return j;
  }
  
  public m B()
  {
    return E;
  }
  
  public com.yelp.android.bt.b C()
  {
    return L;
  }
  
  public com.yelp.android.cn.d D()
  {
    return I;
  }
  
  public PhotoAdsConfig E()
  {
    if (D == null) {
      D = new PhotoAdsConfig(3, 10);
    }
    return D;
  }
  
  public void F()
  {
    k = LocationService.c(this);
  }
  
  public com.yelp.android.ce.a H()
  {
    return M;
  }
  
  public void a()
  {
    com.facebook.g.a(getApplicationContext());
    com.facebook.g.a(com.yelp.android.services.i.b());
    com.yelp.android.services.push.b.a();
    j = new com.yelp.android.ui.util.c(this);
    YelpLog.registerDelegate(new YelpLogDelegate());
    u = new AdjustManager(this);
    a(new m());
    L = new com.yelp.android.bt.c();
    com.yelp.android.appdata.experiment.j.a(com.yelp.android.appdata.experiment.d.a);
    com.yelp.android.appdata.experiment.g.a(com.yelp.android.appdata.experiment.d.b);
    Features.setData(com.yelp.android.appdata.experiment.h.d);
    C = new com.yelp.android.services.push.e();
    w = new ApiPreferences();
    l = new c(this, w);
    m = new LocaleSettings(getResourcesgetConfigurationlocale);
    n = new q(this, m.h(), com.yelp.android.services.i.h());
    n.a(getResourcesgetDisplayMetricsdensity);
    z = new Debug(this, n);
    r = new co(w, l);
    t = new com.yelp.android.ui.util.a();
    q = new MetricsManager(t, this);
    O();
    v = new com.yelp.android.analytics.i(this, n, r);
    try
    {
      if (p != null) {
        p.a();
      }
      p = new com.yelp.android.database.e(this, m.a(), LocaleSettings.b());
      if (o != null) {
        o.a();
      }
      o = new com.yelp.android.database.g(this);
      k = LocationService.c(this);
      A = new e(this);
      L();
      a(new com.path.android.jobqueue.b(this, com.yelp.android.services.job.a.a(this)));
      x = new com.yelp.android.services.backgroundlocation.a(this, new com.yelp.android.services.backgroundlocation.c(this), new com.yelp.android.services.backgroundlocation.b(this), l, (AlarmManager)getSystemService("alarm"), w(), new r(), GoogleApiAvailability.getInstance());
      I = new com.yelp.android.cn.d(q);
      K = new com.yelp.android.bz.a();
      registerActivityLifecycleCallbacks(K);
      return;
    }
    catch (Exception localException)
    {
      throw new RuntimeException("Could not initialize properly", localException);
    }
  }
  
  public void a(Context paramContext)
  {
    com.yelp.android.services.push.b.b().c();
    a(EventIri.AppForegrounded, "android_background_location", ((BackgroundLocationExperiment.Cohort)com.yelp.android.appdata.experiment.e.k.b()).name());
    if ((x.d()) && (!y))
    {
      x.a();
      y = true;
    }
    if ((G == null) || (!G.u())) {
      x();
    }
    v.a(new i.a()
    {
      public void a()
      {
        AppData.c(AppData.this).a();
      }
    });
    if (B != null)
    {
      paramContext = (com.yelp.android.ui.activities.support.b)B.get();
      if ((paramContext != null) && (paramContext.e().a())) {
        paramContext.c().showDialog(2131689507);
      }
    }
    N();
  }
  
  public void a(com.path.android.jobqueue.b paramb)
  {
    s = paramb;
  }
  
  public void a(m paramm)
  {
    E = paramm;
  }
  
  public void a(PhotoAdsConfig paramPhotoAdsConfig)
  {
    D = paramPhotoAdsConfig;
  }
  
  public void a(com.yelp.android.ui.activities.support.b paramb)
  {
    B = new WeakReference(paramb);
  }
  
  public void a(String paramString)
  {
    if ((q().b()) && (!q().d())) {
      new com.yelp.android.appdata.webrequests.b(paramString, false, new c.a()
      {
        public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, Void paramAnonymousVoid)
        {
          AppData.b().q().a(true);
          AppData.a(EventIri.ConfirmEmailSilently);
        }
        
        public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
        {
          if (((paramAnonymousYelpException instanceof ApiException)) && (((ApiException)paramAnonymousYelpException).getResultCode() == 402)) {
            AppData.b().q().a(true);
          }
        }
      }).f(new Void[0]);
    }
  }
  
  public void a(boolean paramBoolean)
  {
    try
    {
      F = paramBoolean;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void attachBaseContext(Context paramContext)
  {
    super.attachBaseContext(paramContext);
    android.support.multidex.a.a(this);
  }
  
  public void b(Context paramContext)
  {
    if (G != null) {
      G.a(true);
    }
    l.j(true);
    MetricsManager.a();
    b().q().s();
    j.b();
    l.Y();
  }
  
  public com.yelp.android.services.push.e c()
  {
    return C;
  }
  
  public boolean e()
  {
    try
    {
      boolean bool = F;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public c f()
  {
    return l;
  }
  
  public LocaleSettings g()
  {
    return m;
  }
  
  public f h()
  {
    return n;
  }
  
  public com.yelp.android.database.g i()
  {
    if (o == null) {
      throw new IllegalStateException("The database must be open in order to access it.");
    }
    return o;
  }
  
  public final com.yelp.android.database.e j()
  {
    return p;
  }
  
  public MetricsManager k()
  {
    return q;
  }
  
  public AdjustManager l()
  {
    return u;
  }
  
  public com.yelp.android.analytics.i m()
  {
    return v;
  }
  
  public com.yelp.android.ui.util.a n()
  {
    return t;
  }
  
  public ApiPreferences o()
  {
    return w;
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    try
    {
      super.onConfigurationChanged(paramConfiguration);
      if (b)
      {
        n = new q(this, locale, com.yelp.android.services.i.h());
        a(paramConfiguration);
        com.yelp.android.services.push.b.b().c();
      }
      if (e) {
        n.i();
      }
      if ((c) || (b) || (e)) {
        new Thread()
        {
          public void run()
          {
            try
            {
              com.yelp.android.services.c.a();
              return;
            }
            catch (Exception localException)
            {
              YelpLog.remoteError(AppData.this, "AppData.onConfigurationChanged calling HttpRequestWrapped.reset()", localException);
            }
          }
        }.start();
      }
      return;
    }
    finally {}
  }
  
  public void onCreate()
  {
    io.fabric.sdk.android.c.a(this, new io.fabric.sdk.android.h[] { new a.a().a(new e.a().a(false).a()).a() });
    Bugsnag.init(this);
    Bugsnag.addToTab("User", "locale", Locale.getDefault().toString());
    super.onCreate();
    com.yelp.android.au.a.a("locale", Locale.getDefault().toString());
    if (!G()) {
      com.yelp.android.br.a.a(this);
    }
    h = this;
    a();
    a(true);
    n.i();
    System.setProperty("releaseWhenSurfaceDestroyed", "true");
    com.yelp.android.cn.c localc = I.a();
    localc.a(J);
    localc.b();
    localc.g();
    jp.line.android.sdk.c.a(this);
  }
  
  public void onLowMemory()
  {
    super.onLowMemory();
    ImageLoader.clearCache();
    t.a(this).a();
  }
  
  public void onTerminate()
  {
    super.onTerminate();
    ImageLoader.trimCache();
    ((NotificationManager)getSystemService("notification")).cancel(2131230738);
  }
  
  public void onTrimMemory(int paramInt)
  {
    super.onTrimMemory(paramInt);
    ImageLoader.clearCache();
    t.a(this).a(paramInt);
  }
  
  public co p()
  {
    return q();
  }
  
  public co q()
  {
    return r;
  }
  
  public LocationService r()
  {
    return k;
  }
  
  public com.yelp.android.services.backgroundlocation.a s()
  {
    return x;
  }
  
  public void startActivity(Intent paramIntent)
  {
    com.yelp.android.util.h.a(paramIntent);
    super.startActivity(paramIntent);
  }
  
  public Debug t()
  {
    return z;
  }
  
  public final HttpClient u()
  {
    if (a != null) {
      return a;
    }
    return com.yelp.android.services.c.a(this, z, n);
  }
  
  public void v()
  {
    P();
  }
  
  public void x()
  {
    if (G != null)
    {
      G.a(true);
      G.a(null);
    }
    G = new com.yelp.android.appdata.webrequests.l(N);
    G.f(new Void[0]);
  }
  
  public e y()
  {
    return A;
  }
  
  public void z()
  {
    if ((l.ac()) && (l.ad()))
    {
      l.s();
      l.j(false);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.AppData
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */