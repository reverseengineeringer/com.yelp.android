package com.crashlytics.android.internal;

import android.app.Activity;
import android.os.Looper;
import java.util.Collections;
import java.util.HashMap;
import java.util.UUID;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;

class n
  implements bk
{
  t a;
  private final String b;
  private final String c;
  private final String d;
  private final String e;
  private final String f;
  private final String g;
  private final String h;
  private final String i;
  private final ScheduledExecutorService j;
  
  public n(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, j paramj, bu parambu)
  {
    this(paramString1, paramString2, paramString3, paramString4, paramString5, paramString6, paramString7, paramj, bi.b("Crashlytics SAM"), parambu);
  }
  
  n(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, j paramj, ScheduledExecutorService paramScheduledExecutorService, bu parambu)
  {
    b = paramString1;
    c = paramString2;
    d = paramString3;
    e = paramString4;
    f = paramString5;
    g = paramString6;
    h = paramString7;
    i = UUID.randomUUID().toString();
    j = paramScheduledExecutorService;
    a = new i(paramScheduledExecutorService, paramj, parambu);
    paramj.a(this);
  }
  
  private void a(W paramW, Activity paramActivity, boolean paramBoolean)
  {
    a(u.a(b, i, c, d, e, f, g, h, paramW, Collections.singletonMap("activity", paramActivity.getClass().getName())), false);
  }
  
  private void a(u paramu, boolean paramBoolean)
  {
    a(new p(this, paramu, paramBoolean));
  }
  
  private void a(Runnable paramRunnable)
  {
    try
    {
      j.submit(paramRunnable);
      return;
    }
    catch (Exception paramRunnable)
    {
      bd.d("Crashlytics failed to submit analytics task");
    }
  }
  
  void a()
  {
    a(new s(this));
  }
  
  public final void a(Activity paramActivity)
  {
    a(W.a, paramActivity, false);
  }
  
  final void a(ak paramak, String paramString)
  {
    a(new q(this, paramak, paramString));
  }
  
  public final void a(String paramString)
  {
    if (Looper.myLooper() == Looper.getMainLooper()) {
      throw new IllegalStateException("onCrash called from main thread!!!");
    }
    paramString = new o(this, paramString);
    try
    {
      j.submit(paramString).get();
      return;
    }
    catch (Exception paramString)
    {
      bd.d("Crashlytics failed to run analytics task");
    }
  }
  
  public final void b()
  {
    a(u.a(b, i, c, d, e, f, g, h, W.j, new HashMap()), true);
  }
  
  public final void b(Activity paramActivity)
  {
    a(W.g, paramActivity, false);
  }
  
  public final void b(String paramString)
  {
    String str1 = b;
    String str2 = i;
    String str3 = c;
    String str4 = d;
    String str5 = e;
    String str6 = f;
    String str7 = g;
    String str8 = h;
    paramString = Collections.singletonMap("sessionId", paramString);
    a(u.a(str1, str2, str3, str4, str5, str6, str7, str8, W.h, paramString), false);
  }
  
  public final void c()
  {
    a(new r(this));
  }
  
  public final void c(Activity paramActivity)
  {
    a(W.e, paramActivity, false);
  }
  
  public final void d(Activity paramActivity)
  {
    a(W.c, paramActivity, false);
  }
  
  public final void e(Activity paramActivity)
  {
    a(W.d, paramActivity, false);
  }
  
  public final void f(Activity paramActivity)
  {
    a(W.b, paramActivity, false);
  }
  
  public final void g(Activity paramActivity)
  {
    a(W.f, paramActivity, false);
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.internal.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */