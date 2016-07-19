package com.crashlytics.android.core;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.widget.ScrollView;
import android.widget.TextView;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.common.i.a;
import io.fabric.sdk.android.services.common.i.b;
import io.fabric.sdk.android.services.concurrency.Priority;
import io.fabric.sdk.android.services.concurrency.UnmetDependencyException;
import io.fabric.sdk.android.services.settings.o;
import io.fabric.sdk.android.services.settings.p;
import io.fabric.sdk.android.services.settings.q;
import io.fabric.sdk.android.services.settings.q.b;
import java.io.File;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@io.fabric.sdk.android.services.concurrency.b(a={com.yelp.android.aw.a.class})
public class e
  extends io.fabric.sdk.android.h<Void>
{
  private final long a = System.currentTimeMillis();
  private final ConcurrentHashMap<String, String> b = new ConcurrentHashMap();
  private File c;
  private g d;
  private i j;
  private String k = null;
  private String l = null;
  private String m = null;
  private String n;
  private String o;
  private String p;
  private String q;
  private String r;
  private float s;
  private boolean t;
  private final s u;
  private io.fabric.sdk.android.services.network.c v;
  private f w;
  private com.yelp.android.aw.a x;
  
  public e()
  {
    this(1.0F, null, null, false);
  }
  
  e(float paramFloat, g paramg, s params, boolean paramBoolean)
  {
    this(paramFloat, paramg, params, paramBoolean, io.fabric.sdk.android.services.common.l.a("Crashlytics Exception Handler"));
  }
  
  e(float paramFloat, g paramg, s params, boolean paramBoolean, ExecutorService paramExecutorService)
  {
    s = paramFloat;
    d = paramg;
    u = params;
    t = paramBoolean;
    w = new f(paramExecutorService);
  }
  
  private void G()
  {
    Object localObject = new io.fabric.sdk.android.services.concurrency.d()
    {
      public Void a()
        throws Exception
      {
        return c();
      }
      
      public Priority b()
      {
        return Priority.IMMEDIATE;
      }
    };
    Iterator localIterator = F().iterator();
    while (localIterator.hasNext()) {
      ((io.fabric.sdk.android.services.concurrency.d)localObject).a((io.fabric.sdk.android.services.concurrency.i)localIterator.next());
    }
    localObject = C().f().submit((Callable)localObject);
    io.fabric.sdk.android.c.h().a("Fabric", "Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously.");
    try
    {
      ((Future)localObject).get(4L, TimeUnit.SECONDS);
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      io.fabric.sdk.android.c.h().e("Fabric", "Crashlytics was interrupted during initialization.", localInterruptedException);
      return;
    }
    catch (ExecutionException localExecutionException)
    {
      io.fabric.sdk.android.c.h().e("Fabric", "Problem encountered during Crashlytics initialization.", localExecutionException);
      return;
    }
    catch (TimeoutException localTimeoutException)
    {
      io.fabric.sdk.android.c.h().e("Fabric", "Crashlytics timed out during initialization.", localTimeoutException);
    }
  }
  
  private int a(float paramFloat, int paramInt)
  {
    return (int)(paramInt * paramFloat);
  }
  
  private void a(Context paramContext, String paramString)
  {
    Object localObject;
    if (u != null)
    {
      localObject = new h(u);
      v = new io.fabric.sdk.android.services.network.b(io.fabric.sdk.android.c.h());
      v.a((io.fabric.sdk.android.services.network.e)localObject);
    }
    for (;;)
    {
      try
      {
        o = paramContext.getPackageName();
        p = A().h();
        io.fabric.sdk.android.c.h().a("Fabric", "Installer package name is: " + p);
        localObject = paramContext.getPackageManager().getPackageInfo(o, 0);
        q = Integer.toString(versionCode);
        if (versionName != null) {
          continue;
        }
        localObject = "0.0";
        r = ((String)localObject);
        n = CommonUtils.m(paramContext);
      }
      catch (Exception localException)
      {
        io.fabric.sdk.android.c.h().e("Fabric", "Error setting up app properties", localException);
        continue;
      }
      A().m();
      b(n, b(paramContext)).a(paramString, o);
      return;
      localObject = null;
      break;
      localObject = versionName;
    }
  }
  
  private boolean a(final Activity paramActivity, final o paramo)
  {
    final m localm = new m(paramActivity, paramo);
    final b localb = new b(null);
    paramActivity.runOnUiThread(new Runnable()
    {
      public void run()
      {
        AlertDialog.Builder localBuilder = new AlertDialog.Builder(paramActivity);
        Object localObject = new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            b.a(true);
            paramAnonymous2DialogInterface.dismiss();
          }
        };
        float f = paramActivitygetResourcesgetDisplayMetricsdensity;
        int i = e.a(e.this, f, 5);
        TextView localTextView = new TextView(paramActivity);
        localTextView.setAutoLinkMask(15);
        localTextView.setText(localm.b());
        localTextView.setTextAppearance(paramActivity, 16973892);
        localTextView.setPadding(i, i, i, i);
        localTextView.setFocusable(false);
        ScrollView localScrollView = new ScrollView(paramActivity);
        localScrollView.setPadding(e.a(e.this, f, 14), e.a(e.this, f, 2), e.a(e.this, f, 10), e.a(e.this, f, 12));
        localScrollView.addView(localTextView);
        localBuilder.setView(localScrollView).setTitle(localm.a()).setCancelable(false).setNeutralButton(localm.c(), (DialogInterface.OnClickListener)localObject);
        if (paramod)
        {
          localObject = new DialogInterface.OnClickListener()
          {
            public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
            {
              b.a(false);
              paramAnonymous2DialogInterface.dismiss();
            }
          };
          localBuilder.setNegativeButton(localm.e(), (DialogInterface.OnClickListener)localObject);
        }
        if (paramof)
        {
          localObject = new DialogInterface.OnClickListener()
          {
            public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
            {
              a(true);
              b.a(true);
              paramAnonymous2DialogInterface.dismiss();
            }
          };
          localBuilder.setPositiveButton(localm.d(), (DialogInterface.OnClickListener)localObject);
        }
        localBuilder.show();
      }
    });
    io.fabric.sdk.android.c.h().a("Fabric", "Waiting for user opt-in.");
    localb.b();
    return localb.a();
  }
  
  private void b(int paramInt, String paramString1, String paramString2)
  {
    if (t) {}
    while (!e("prior to logging messages.")) {
      return;
    }
    long l1 = System.currentTimeMillis();
    long l2 = a;
    j.a(l1 - l2, c(paramInt, paramString1, paramString2));
  }
  
  private boolean b(Context paramContext)
  {
    return CommonUtils.a(paramContext, "com.crashlytics.RequireBuildId", true);
  }
  
  private static String c(int paramInt, String paramString1, String paramString2)
  {
    return CommonUtils.b(paramInt) + "/" + paramString1 + " " + paramString2;
  }
  
  static void c(String paramString)
  {
    com.crashlytics.android.answers.a locala = (com.crashlytics.android.answers.a)io.fabric.sdk.android.c.a(com.crashlytics.android.answers.a.class);
    if (locala != null) {
      locala.a(new i.b(paramString));
    }
  }
  
  static void d(String paramString)
  {
    com.crashlytics.android.answers.a locala = (com.crashlytics.android.answers.a)io.fabric.sdk.android.c.a(com.crashlytics.android.answers.a.class);
    if (locala != null) {
      locala.a(new i.a(paramString));
    }
  }
  
  public static e e()
  {
    return (e)io.fabric.sdk.android.c.a(e.class);
  }
  
  private static boolean e(String paramString)
  {
    e locale = e();
    if ((locale == null) || (j == null))
    {
      io.fabric.sdk.android.c.h().e("Fabric", "Crashlytics must be initialized by calling Fabric.with(Context) " + paramString, null);
      return false;
    }
    return true;
  }
  
  private static String f(String paramString)
  {
    String str = paramString;
    if (paramString != null)
    {
      paramString = paramString.trim();
      str = paramString;
      if (paramString.length() > 1024) {
        str = paramString.substring(0, 1024);
      }
    }
    return str;
  }
  
  k a(io.fabric.sdk.android.services.settings.s params)
  {
    if (params != null) {
      return new l(this, l(), a.d, v);
    }
    return null;
  }
  
  public String a()
  {
    return "2.3.3.61";
  }
  
  public void a(int paramInt, String paramString1, String paramString2)
  {
    b(paramInt, paramString1, paramString2);
    io.fabric.sdk.android.c.h().a(paramInt, "" + paramString1, "" + paramString2, true);
  }
  
  public void a(String paramString)
  {
    b(3, "Fabric", paramString);
  }
  
  public void a(String paramString1, String paramString2)
  {
    if (t) {
      return;
    }
    if (paramString1 == null)
    {
      if ((B() != null) && (CommonUtils.i(B()))) {
        throw new IllegalArgumentException("Custom attribute key must not be null.");
      }
      io.fabric.sdk.android.c.h().e("Fabric", "Attempting to set custom attribute with null key, ignoring.", null);
      return;
    }
    String str = f(paramString1);
    if ((b.size() < 64) || (b.containsKey(str)))
    {
      if (paramString2 == null) {}
      for (paramString1 = "";; paramString1 = f(paramString2))
      {
        b.put(str, paramString1);
        j.a(b);
        return;
      }
    }
    io.fabric.sdk.android.c.h().a("Fabric", "Exceeded maximum number of custom attributes (64)");
  }
  
  public void a(String paramString, boolean paramBoolean)
  {
    a(paramString, Boolean.toString(paramBoolean));
  }
  
  public void a(Throwable paramThrowable)
  {
    if (t) {}
    while (!e("prior to logging exceptions.")) {
      return;
    }
    if (paramThrowable == null)
    {
      io.fabric.sdk.android.c.h().a(5, "Fabric", "Crashlytics is ignoring a request to log a null exception.");
      return;
    }
    j.a(Thread.currentThread(), paramThrowable);
  }
  
  @SuppressLint({"CommitPrefEdits"})
  void a(boolean paramBoolean)
  {
    com.yelp.android.cu.c localc = new com.yelp.android.cu.c(this);
    localc.a(localc.b().putBoolean("always_send_reports_opt_in", paramBoolean));
  }
  
  boolean a(Context paramContext)
  {
    if (t) {
      return false;
    }
    Object localObject = new io.fabric.sdk.android.services.common.g().a(paramContext);
    if (localObject == null) {
      return false;
    }
    io.fabric.sdk.android.c.h().c("Fabric", "Initializing Crashlytics " + a());
    c = new File(u(), "initialization_marker");
    for (;;)
    {
      try
      {
        a(paramContext, (String)localObject);
      }
      catch (CrashlyticsMissingDependencyException paramContext)
      {
        throw new UnmetDependencyException(paramContext);
        return true;
      }
      catch (Exception paramContext)
      {
        io.fabric.sdk.android.c.h().e("Fabric", "Crashlytics was not started due to an exception during initialization", paramContext);
        return false;
      }
      try
      {
        localObject = new w(B(), n, h());
        io.fabric.sdk.android.c.h().a("Fabric", "Installing exception handler...");
        j = new i(Thread.getDefaultUncaughtExceptionHandler(), d, w, A(), (w)localObject, this);
        bool = s();
      }
      catch (Exception localException2)
      {
        bool = false;
        continue;
      }
      try
      {
        j.b();
        Thread.setDefaultUncaughtExceptionHandler(j);
        io.fabric.sdk.android.c.h().a("Fabric", "Successfully installed exception handler.");
        if ((!bool) || (!CommonUtils.n(paramContext))) {
          continue;
        }
        G();
        return false;
      }
      catch (Exception localException1)
      {
        continue;
      }
      io.fabric.sdk.android.c.h().e("Fabric", "There was a problem installing the exception handler.", (Throwable)localObject);
    }
  }
  
  a b(String paramString, boolean paramBoolean)
  {
    return new a(paramString, paramBoolean);
  }
  
  public String b()
  {
    return "com.crashlytics.sdk.android.crashlytics-core";
  }
  
  public void b(String paramString)
  {
    if (t) {
      return;
    }
    k = f(paramString);
    j.a(k, m, l);
  }
  
  protected Void c()
  {
    q();
    j.g();
    int i2 = 1;
    i1 = 1;
    i = i2;
    for (;;)
    {
      try
      {
        Object localObject1 = q.a().b();
        if (localObject1 == null)
        {
          i = i2;
          io.fabric.sdk.android.c.h().d("Fabric", "Received null settings, skipping initialization!");
          return null;
        }
        i = i2;
        if (d.c)
        {
          i2 = 0;
          i1 = 0;
          i = i2;
          j.d();
          i = i2;
          localObject1 = a((io.fabric.sdk.android.services.settings.s)localObject1);
          if (localObject1 == null) {
            continue;
          }
          i = i2;
          new v((k)localObject1).a(s);
        }
      }
      catch (Exception localException1)
      {
        io.fabric.sdk.android.c.h().e("Fabric", "Error dealing with settings", localException1);
        i1 = i;
        continue;
      }
      finally
      {
        r();
      }
      if (i1 != 0) {}
      try
      {
        io.fabric.sdk.android.c.h().a("Fabric", "Crash reporting disabled.");
        r();
        return null;
      }
      catch (Exception localException2)
      {
        io.fabric.sdk.android.c.h().e("Fabric", "Problem encountered during Crashlytics initialization.", localException2);
        r();
        return null;
      }
      i = i2;
      io.fabric.sdk.android.c.h().d("Fabric", "Unable to create a call to upload reports.");
    }
  }
  
  protected boolean c_()
  {
    return a(super.B());
  }
  
  Map<String, String> g()
  {
    return Collections.unmodifiableMap(b);
  }
  
  String h()
  {
    return o;
  }
  
  String i()
  {
    return p;
  }
  
  String j()
  {
    return r;
  }
  
  String k()
  {
    return q;
  }
  
  String l()
  {
    return CommonUtils.b(B(), "com.crashlytics.ApiEndpoint");
  }
  
  i m()
  {
    return j;
  }
  
  String n()
  {
    if (A().a()) {
      return k;
    }
    return null;
  }
  
  String o()
  {
    if (A().a()) {
      return l;
    }
    return null;
  }
  
  String p()
  {
    if (A().a()) {
      return m;
    }
    return null;
  }
  
  void q()
  {
    w.a(new Callable()
    {
      public Void a()
        throws Exception
      {
        e.a(e.this).createNewFile();
        io.fabric.sdk.android.c.h().a("Fabric", "Initialization marker file created.");
        return null;
      }
    });
  }
  
  void r()
  {
    w.b(new Callable()
    {
      public Boolean a()
        throws Exception
      {
        try
        {
          boolean bool = e.a(e.this).delete();
          io.fabric.sdk.android.c.h().a("Fabric", "Initialization marker file removed: " + bool);
          return Boolean.valueOf(bool);
        }
        catch (Exception localException)
        {
          io.fabric.sdk.android.c.h().e("Fabric", "Problem encountered deleting Crashlytics initialization marker.", localException);
        }
        return Boolean.valueOf(false);
      }
    });
  }
  
  boolean s()
  {
    ((Boolean)w.a(new Callable()
    {
      public Boolean a()
        throws Exception
      {
        return Boolean.valueOf(e.a(e.this).exists());
      }
    })).booleanValue();
  }
  
  com.yelp.android.ax.d t()
  {
    com.yelp.android.ax.d locald = null;
    if (x != null) {
      locald = x.a();
    }
    return locald;
  }
  
  File u()
  {
    return new com.yelp.android.cu.a(this).a();
  }
  
  boolean v()
  {
    ((Boolean)q.a().a(new q.b()
    {
      public Boolean a(io.fabric.sdk.android.services.settings.s paramAnonymouss)
      {
        boolean bool = false;
        if (d.a)
        {
          if (!w()) {
            bool = true;
          }
          return Boolean.valueOf(bool);
        }
        return Boolean.valueOf(false);
      }
    }, Boolean.valueOf(false))).booleanValue();
  }
  
  boolean w()
  {
    return new com.yelp.android.cu.c(this).a().getBoolean("always_send_reports_opt_in", false);
  }
  
  boolean x()
  {
    ((Boolean)q.a().a(new q.b()
    {
      public Boolean a(io.fabric.sdk.android.services.settings.s paramAnonymouss)
      {
        boolean bool2 = true;
        Activity localActivity = C().b();
        boolean bool1 = bool2;
        if (localActivity != null)
        {
          bool1 = bool2;
          if (!localActivity.isFinishing())
          {
            bool1 = bool2;
            if (v()) {
              bool1 = e.a(e.this, localActivity, c);
            }
          }
        }
        return Boolean.valueOf(bool1);
      }
    }, Boolean.valueOf(true))).booleanValue();
  }
  
  p y()
  {
    io.fabric.sdk.android.services.settings.s locals = q.a().b();
    if (locals == null) {
      return null;
    }
    return b;
  }
  
  public static class a
  {
    private float a = -1.0F;
    private g b;
    private s c;
    private boolean d = false;
    
    public a a(boolean paramBoolean)
    {
      d = paramBoolean;
      return this;
    }
    
    public e a()
    {
      if (a < 0.0F) {
        a = 1.0F;
      }
      return new e(a, b, c, d);
    }
  }
  
  private class b
  {
    private boolean b = false;
    private final CountDownLatch c = new CountDownLatch(1);
    
    private b() {}
    
    void a(boolean paramBoolean)
    {
      b = paramBoolean;
      c.countDown();
    }
    
    boolean a()
    {
      return b;
    }
    
    void b()
    {
      try
      {
        c.await();
        return;
      }
      catch (InterruptedException localInterruptedException) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.core.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */