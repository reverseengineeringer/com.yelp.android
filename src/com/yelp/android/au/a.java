package com.yelp.android.au;

import com.crashlytics.android.core.e;
import com.crashlytics.android.core.e.a;
import io.fabric.sdk.android.h;
import io.fabric.sdk.android.i;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;

public class a
  extends h<Void>
  implements i
{
  public final com.crashlytics.android.answers.a a;
  public final com.yelp.android.av.c b;
  public final e c;
  public final Collection<? extends h> d;
  
  public a()
  {
    this(new com.crashlytics.android.answers.a(), new com.yelp.android.av.c(), new e());
  }
  
  a(com.crashlytics.android.answers.a parama, com.yelp.android.av.c paramc, e parame)
  {
    a = parama;
    b = paramc;
    c = parame;
    d = Collections.unmodifiableCollection(Arrays.asList(new h[] { parama, paramc, parame }));
  }
  
  public static void a(int paramInt, String paramString1, String paramString2)
  {
    g();
    ec.a(paramInt, paramString1, paramString2);
  }
  
  public static void a(String paramString)
  {
    g();
    ec.a(paramString);
  }
  
  public static void a(String paramString1, String paramString2)
  {
    g();
    ec.a(paramString1, paramString2);
  }
  
  public static void a(String paramString, boolean paramBoolean)
  {
    g();
    ec.a(paramString, paramBoolean);
  }
  
  public static void a(Throwable paramThrowable)
  {
    g();
    ec.a(paramThrowable);
  }
  
  public static void b(String paramString)
  {
    g();
    ec.b(paramString);
  }
  
  public static a e()
  {
    return (a)io.fabric.sdk.android.c.a(a.class);
  }
  
  private static void g()
  {
    if (e() == null) {
      throw new IllegalStateException("Crashlytics must be initialized by calling Fabric.with(Context) prior to calling Crashlytics.getInstance()");
    }
  }
  
  public String a()
  {
    return "2.4.0.61";
  }
  
  public String b()
  {
    return "com.crashlytics.sdk.android:crashlytics";
  }
  
  public Collection<? extends h> c()
  {
    return d;
  }
  
  protected Void d()
  {
    return null;
  }
  
  public static class a
  {
    private com.crashlytics.android.answers.a a;
    private com.yelp.android.av.c b;
    private e c;
    private e.a d;
    
    public a a(e parame)
    {
      if (parame == null) {
        throw new NullPointerException("CrashlyticsCore Kit must not be null.");
      }
      if (c != null) {
        throw new IllegalStateException("CrashlyticsCore Kit already set.");
      }
      c = parame;
      return this;
    }
    
    public a a()
    {
      if (d != null)
      {
        if (c != null) {
          throw new IllegalStateException("Must not use Deprecated methods delay(), disabled(), listener(), pinningInfoProvider() with core()");
        }
        c = d.a();
      }
      if (a == null) {
        a = new com.crashlytics.android.answers.a();
      }
      if (b == null) {
        b = new com.yelp.android.av.c();
      }
      if (c == null) {
        c = new e();
      }
      return new a(a, b, c);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.au.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */