package com.yelp.android.cz;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import com.yelp.android.db.f;
import com.yelp.android.db.i;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import jp.line.android.sdk.activity.WebLoginActivity;
import jp.line.android.sdk.exception.LineSdkLoginError;
import jp.line.android.sdk.exception.LineSdkLoginException;
import jp.line.android.sdk.login.LineLoginFuture;
import jp.line.android.sdk.login.LineLoginFuture.ProgressOfLogin;

public final class b
  implements jp.line.android.sdk.login.a, jp.line.android.sdk.login.c
{
  d a;
  private final ExecutorService b = Executors.newCachedThreadPool();
  private List<jp.line.android.sdk.login.d> c;
  
  private final LineLoginFuture a(Activity paramActivity, boolean paramBoolean)
  {
    int i = 1;
    int j = 1;
    for (;;)
    {
      try
      {
        if (a == null) {
          break;
        }
        if (a.a() != paramBoolean) {
          break label168;
        }
        i = j;
        switch (1.a[a.d().ordinal()])
        {
        case 4: 
        case 7: 
          if (a != null) {
            break label179;
          }
          a = new d(paramBoolean);
          a.a(this);
          locald = a;
          label118:
          locald = a;
          if (i != 0) {
            b.execute(new f(paramActivity, locald));
          }
          return locald;
        }
      }
      finally {}
      a = null;
      i = j;
      continue;
      label168:
      a = null;
      i = j;
      continue;
      label179:
      locald = a;
    }
    d locald = g.a().b();
    if ((locald != null) && (locald.a() == paramBoolean)) {
      switch (1.a[locald.d().ordinal()])
      {
      }
    }
    for (;;)
    {
      if (a == null)
      {
        a = new d(paramBoolean);
        a.a(this);
        locald = a;
        break label118;
        a = locald;
        a.a(this);
        continue;
      }
      locald = a;
      break label118;
      i = 0;
      break;
    }
  }
  
  static void a(d paramd, Activity paramActivity)
  {
    try
    {
      switch (1.a[paramd.d().ordinal()])
      {
      case 1: 
      case 2: 
        paramd.a(LineLoginFuture.ProgressOfLogin.REQUESTED_OTP);
        g.a().a(paramd);
        jp.line.android.sdk.c.a().b().a(new d(paramActivity, paramd));
        return;
      }
    }
    catch (Throwable paramActivity)
    {
      paramd.a(paramActivity);
      return;
    }
    g.a().a(paramd);
    if (paramActivity == null)
    {
      paramd.a(new LineSdkLoginException(LineSdkLoginError.FAILED_START_LOGIN_ACTIVITY));
      return;
    }
    Object localObject1;
    if (!paramd.a())
    {
      localObject1 = jp.line.android.sdk.c.a().a();
      Object localObject2 = ((Context)localObject1).getPackageManager().getInstalledApplications(128).iterator();
      while (((Iterator)localObject2).hasNext()) {
        if ("jp.naver.line.android".equals(nextpackageName))
        {
          i = 1;
          if (i == 0) {
            break label401;
          }
          localObject2 = new Intent("jp.naver.line.android.intent.action.APPAUTH", null);
          if (((Context)localObject1).getPackageManager().queryIntentActivities((Intent)localObject2, 0).isEmpty()) {
            break label401;
          }
        }
      }
    }
    label401:
    for (int i = 1;; i = 0)
    {
      if (i != 0)
      {
        paramd.a(LineLoginFuture.ProgressOfLogin.STARTED_A2A_LOGIN);
        localObject1 = new Intent("jp.naver.line.android.intent.action.APPAUTH");
        ((Intent)localObject1).putExtra("channelId", String.valueOf(jp.line.android.sdk.c.a().d()));
        ((Intent)localObject1).putExtra("otpId", ea);
        ((Intent)localObject1).putExtra("appPackage", paramActivity.getPackageName());
        ((Intent)localObject1).putExtra("authScheme", jp.line.android.sdk.c.a().e());
        ((Intent)localObject1).addFlags(65536);
        try
        {
          paramActivity.startActivity((Intent)localObject1);
          return;
        }
        catch (Throwable paramActivity)
        {
          paramd.a(paramActivity);
          return;
        }
      }
      paramd.a(LineLoginFuture.ProgressOfLogin.STARTED_WEB_LOGIN);
      WebLoginActivity.a(paramActivity, paramd);
      return;
      paramd.a(LineLoginFuture.ProgressOfLogin.REQUESTED_ACCESS_TOKEN);
      g.a().a(paramd);
      jp.line.android.sdk.c.a().b().a(fa, eb, new c(paramd));
      return;
      return;
      i = 0;
      break;
    }
  }
  
  public final LineLoginFuture a(Activity paramActivity)
  {
    return a(paramActivity, false);
  }
  
  public final void a(com.yelp.android.db.a parama)
  {
    ArrayList localArrayList = null;
    try
    {
      if (c != null) {
        localArrayList = new ArrayList(c);
      }
      if ((localArrayList != null) && (localArrayList.size() > 0)) {
        b.execute(new a(localArrayList, parama));
      }
      return;
    }
    finally {}
  }
  
  public final void a(LineLoginFuture paramLineLoginFuture)
  {
    int j = 0;
    int k = 1;
    i = 1;
    paramLineLoginFuture = (d)paramLineLoginFuture;
    for (;;)
    {
      try
      {
        int m = 1.a[paramLineLoginFuture.d().ordinal()];
        switch (m)
        {
        case 4: 
        case 6: 
        case 7: 
        default: 
          i = 0;
        case 9: 
        case 10: 
          k = 0;
          j = i;
          i = k;
        }
      }
      catch (Throwable localThrowable2)
      {
        i = 0;
        continue;
      }
      if (i != 0) {
        a(paramLineLoginFuture, null);
      }
      if (j != 0)
      {
        g.a();
        g.c();
      }
      return;
      g.a().a(paramLineLoginFuture);
      i = 0;
      continue;
      try
      {
        g.a().a(paramLineLoginFuture);
        i = k;
      }
      catch (Throwable localThrowable1)
      {
        i = k;
      }
      continue;
      i = 0;
      j = 1;
    }
  }
  
  public final boolean a()
  {
    return a != null;
  }
  
  public final LineLoginFuture b()
  {
    int i = 0;
    int j = 0;
    d locald2 = a;
    d locald1 = locald2;
    if (locald2 == null) {
      i = j;
    }
    for (;;)
    {
      try
      {
        if (a == null)
        {
          a = g.a().b();
          i = j;
          if (a != null) {
            a.a(this);
          }
        }
        switch (1.a[a.d().ordinal()])
        {
        case 1: 
          locald1 = a;
          if (i != 0) {
            b.execute(new c(this, locald1));
          }
          return locald1;
        }
      }
      finally {}
      i = 1;
      continue;
      i = j;
    }
  }
  
  public final Future<?> c()
  {
    e locale = new e();
    b.execute(locale);
    return locale;
  }
  
  private static final class a
    implements Runnable
  {
    private List<jp.line.android.sdk.login.d> a;
    private com.yelp.android.db.a b;
    
    public a(List<jp.line.android.sdk.login.d> paramList, com.yelp.android.db.a parama)
    {
      a = paramList;
      b = parama;
    }
    
    public final void run()
    {
      Iterator localIterator = a.iterator();
      while (localIterator.hasNext())
      {
        jp.line.android.sdk.login.d locald = (jp.line.android.sdk.login.d)localIterator.next();
        com.yelp.android.db.a locala = b;
        try
        {
          locald.a(locala);
        }
        catch (Throwable localThrowable) {}
      }
    }
  }
  
  static class b
    implements Runnable, Future<Object>
  {
    private final CountDownLatch a = new CountDownLatch(1);
    private boolean b;
    private ExecutionException c;
    
    static com.yelp.android.db.a b()
    {
      com.yelp.android.db.a locala = com.yelp.android.cv.a.a().b();
      if (locala != null) {
        com.yelp.android.cv.a.a().c();
      }
      g.a();
      g.c();
      return locala;
    }
    
    void a()
      throws Exception
    {
      b();
    }
    
    public boolean cancel(boolean paramBoolean)
    {
      return false;
    }
    
    public Object get()
      throws InterruptedException, ExecutionException
    {
      a.await();
      if (c == null) {
        return null;
      }
      throw c;
    }
    
    public Object get(long paramLong, TimeUnit paramTimeUnit)
      throws InterruptedException, ExecutionException, TimeoutException
    {
      a.await(paramLong, paramTimeUnit);
      if (c == null) {
        return null;
      }
      throw c;
    }
    
    public boolean isCancelled()
    {
      return false;
    }
    
    public boolean isDone()
    {
      return b;
    }
    
    public void run()
    {
      try
      {
        a();
        return;
      }
      catch (Throwable localThrowable)
      {
        c = new ExecutionException(localThrowable);
        return;
      }
      finally
      {
        b = true;
        a.countDown();
      }
    }
  }
  
  private static final class c
    implements jp.line.android.sdk.api.c<com.yelp.android.db.a>
  {
    private final d a;
    
    c(d paramd)
    {
      a = paramd;
    }
    
    public final void a(jp.line.android.sdk.api.b<com.yelp.android.db.a> paramb)
    {
      for (;;)
      {
        try
        {
          switch (b.1.b[paramb.b().ordinal()])
          {
          case 1: 
            a.a(new LineSdkLoginException(LineSdkLoginError.UNKNOWN, "Unknown ApiReqeustFuture.status. status = " + paramb.b()));
            return;
          }
        }
        catch (Throwable paramb)
        {
          a.a(paramb);
          return;
        }
        a.a((com.yelp.android.db.a)paramb.c());
        return;
        a.h();
        return;
        a.a(paramb.d());
        return;
      }
    }
  }
  
  private static final class d
    implements jp.line.android.sdk.api.c<f>
  {
    private final WeakReference<Activity> a;
    private final d b;
    
    d(Activity paramActivity, d paramd)
    {
      a = new WeakReference(paramActivity);
      b = paramd;
    }
    
    public final void a(jp.line.android.sdk.api.b<f> paramb)
    {
      for (;;)
      {
        try
        {
          switch (b.1.b[paramb.b().ordinal()])
          {
          case 1: 
            b.a(new LineSdkLoginException(LineSdkLoginError.UNKNOWN, "Unknown ApiReqeustFuture.status. status = " + paramb.b()));
            return;
          }
        }
        catch (Throwable paramb)
        {
          b.a(paramb);
          return;
        }
        b.a((f)paramb.c());
        b.a(b, (Activity)a.get());
        return;
        b.h();
        return;
        b.a(paramb.d());
        return;
      }
    }
  }
  
  static final class e
    extends b.b
  {
    public final void a()
    {
      com.yelp.android.db.a locala = b.b.b();
      if (locala != null) {}
      try
      {
        jp.line.android.sdk.c.a().b().a(b, null);
        return;
      }
      catch (Throwable localThrowable) {}
    }
  }
  
  private static final class f
    implements Runnable
  {
    private final Activity a;
    private final d b;
    
    f(Activity paramActivity, d paramd)
    {
      a = paramActivity;
      b = paramd;
    }
    
    public final void run()
    {
      if (!b.a())
      {
        com.yelp.android.db.a locala = com.yelp.android.cv.a.a().b();
        if (locala != null)
        {
          b.a(locala);
          return;
        }
      }
      if ((a == null) && (b.d().flowNumber < GOT_REQUEST_TOKENflowNumber))
      {
        b.a(new LineSdkLoginException(LineSdkLoginError.FAILED_START_LOGIN_ACTIVITY, "activity is null"));
        return;
      }
      b.a(b, a);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.cz.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */