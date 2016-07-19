package com.google.android.gms.measurement.internal;

import android.app.Application;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.jt;
import com.google.android.gms.internal.kz.b;
import com.google.android.gms.internal.la.a;
import com.google.android.gms.internal.la.b;
import com.google.android.gms.internal.la.d;
import com.google.android.gms.internal.la.e;
import com.google.android.gms.internal.la.g;
import com.google.android.gms.measurement.AppMeasurementReceiver;
import com.google.android.gms.measurement.AppMeasurementService;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

public class ag
{
  private static b a;
  private static volatile ag b;
  private final Context c;
  private final n d;
  private final ad e;
  private final z f;
  private final af g;
  private final e h;
  private final ae i;
  private final com.google.android.gms.measurement.a j;
  private final k k;
  private final o l;
  private final aa m;
  private final jt n;
  private final d o;
  private final q p;
  private final c q;
  private final x r;
  private final ab s;
  private final h t;
  private final m u;
  private final boolean v;
  private Boolean w;
  private List<Long> x;
  private int y;
  private int z;
  
  ag(b paramb)
  {
    zzx.zzz(paramb);
    c = a;
    n = paramb.l(this);
    d = paramb.a(this);
    Object localObject = paramb.b(this);
    ((ad)localObject).H();
    e = ((ad)localObject);
    localObject = paramb.c(this);
    ((z)localObject).H();
    f = ((z)localObject);
    f().x().a("App measurement is starting up, version", Long.valueOf(d().M()));
    f().x().a("To enable debug logging run: adb shell setprop log.tag.GMPM VERBOSE");
    f().y().a("Debug logging enabled");
    k = paramb.i(this);
    localObject = paramb.n(this);
    ((q)localObject).H();
    p = ((q)localObject);
    localObject = paramb.o(this);
    ((x)localObject).H();
    r = ((x)localObject);
    localObject = paramb.j(this);
    ((o)localObject).H();
    l = ((o)localObject);
    localObject = paramb.r(this);
    ((m)localObject).H();
    u = ((m)localObject);
    localObject = paramb.k(this);
    ((aa)localObject).H();
    m = ((aa)localObject);
    localObject = paramb.m(this);
    ((d)localObject).H();
    o = ((d)localObject);
    localObject = paramb.h(this);
    ((c)localObject).H();
    q = ((c)localObject);
    localObject = paramb.q(this);
    ((h)localObject).H();
    t = ((h)localObject);
    s = paramb.p(this);
    j = paramb.g(this);
    localObject = paramb.e(this);
    ((e)localObject).H();
    h = ((e)localObject);
    localObject = paramb.f(this);
    ((ae)localObject).H();
    i = ((ae)localObject);
    paramb = paramb.d(this);
    paramb.H();
    g = paramb;
    if (y != z) {
      f().b().a("Not all components initialized", Integer.valueOf(y), Integer.valueOf(z));
    }
    v = true;
    if ((!d.N()) && (!y()))
    {
      if (!(c.getApplicationContext() instanceof Application)) {
        break label423;
      }
      if (Build.VERSION.SDK_INT < 14) {
        break label407;
      }
      l().b();
    }
    for (;;)
    {
      g.a(new Runnable()
      {
        public void run()
        {
          c();
        }
      });
      return;
      label407:
      f().y().a("Not tracking deep linking pre-ICS");
      continue;
      label423:
      f().c().a("Application context is not an Application");
    }
  }
  
  private boolean D()
  {
    x();
    return x != null;
  }
  
  private boolean E()
  {
    x();
    a();
    return (n().C()) || (!TextUtils.isEmpty(n().x()));
  }
  
  private void F()
  {
    x();
    a();
    if ((!b()) || (!E()))
    {
      u().b();
      v().b();
      return;
    }
    long l2 = G();
    if (l2 == 0L)
    {
      u().b();
      v().b();
      return;
    }
    if (!o().b())
    {
      u().a();
      v().b();
      return;
    }
    long l3 = ee.a();
    long l4 = d().X();
    long l1 = l2;
    if (!m().a(l3, l4)) {
      l1 = Math.max(l2, l3 + l4);
    }
    u().b();
    l1 -= q().a();
    if (l1 <= 0L)
    {
      v().a(1L);
      return;
    }
    f().z().a("Upload scheduled in approximately ms", Long.valueOf(l1));
    v().a(l1);
  }
  
  private long G()
  {
    long l5 = q().a();
    long l1 = d().aa();
    long l2 = d().Y();
    long l6 = ec.a();
    long l4 = ed.a();
    long l3 = Math.max(n().A(), n().B());
    if (l3 == 0L) {
      l2 = 0L;
    }
    do
    {
      do
      {
        return l2;
        l3 = l5 - Math.abs(l3 - l5);
        l6 = Math.abs(l6 - l5);
        l4 = l5 - Math.abs(l4 - l5);
        l5 = Math.max(l5 - l6, l4);
        l1 += l3;
        if (!m().a(l5, l2)) {
          l1 = l5 + l2;
        }
        l2 = l1;
      } while (l4 == 0L);
      l2 = l1;
    } while (l4 < l3);
    int i1 = 0;
    for (;;)
    {
      if (i1 >= d().ac()) {
        break label223;
      }
      l1 += (1 << i1) * d().ab();
      l2 = l1;
      if (l1 > l4) {
        break;
      }
      i1 += 1;
    }
    label223:
    return 0L;
  }
  
  /* Error */
  public static ag a(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic 75	com/google/android/gms/common/internal/zzx:zzz	(Ljava/lang/Object;)Ljava/lang/Object;
    //   4: pop
    //   5: aload_0
    //   6: invokevirtual 279	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   9: invokestatic 75	com/google/android/gms/common/internal/zzx:zzz	(Ljava/lang/Object;)Ljava/lang/Object;
    //   12: pop
    //   13: getstatic 420	com/google/android/gms/measurement/internal/ag:b	Lcom/google/android/gms/measurement/internal/ag;
    //   16: ifnonnull +32 -> 48
    //   19: ldc 2
    //   21: monitorenter
    //   22: getstatic 420	com/google/android/gms/measurement/internal/ag:b	Lcom/google/android/gms/measurement/internal/ag;
    //   25: ifnonnull +20 -> 45
    //   28: getstatic 422	com/google/android/gms/measurement/internal/ag:a	Lcom/google/android/gms/measurement/internal/b;
    //   31: ifnull +21 -> 52
    //   34: getstatic 422	com/google/android/gms/measurement/internal/ag:a	Lcom/google/android/gms/measurement/internal/b;
    //   37: astore_0
    //   38: aload_0
    //   39: invokevirtual 425	com/google/android/gms/measurement/internal/b:a	()Lcom/google/android/gms/measurement/internal/ag;
    //   42: putstatic 420	com/google/android/gms/measurement/internal/ag:b	Lcom/google/android/gms/measurement/internal/ag;
    //   45: ldc 2
    //   47: monitorexit
    //   48: getstatic 420	com/google/android/gms/measurement/internal/ag:b	Lcom/google/android/gms/measurement/internal/ag;
    //   51: areturn
    //   52: new 77	com/google/android/gms/measurement/internal/b
    //   55: dup
    //   56: aload_0
    //   57: invokespecial 428	com/google/android/gms/measurement/internal/b:<init>	(Landroid/content/Context;)V
    //   60: astore_0
    //   61: goto -23 -> 38
    //   64: astore_0
    //   65: ldc 2
    //   67: monitorexit
    //   68: aload_0
    //   69: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	70	0	paramContext	Context
    // Exception table:
    //   from	to	target	type
    //   22	38	64	finally
    //   38	45	64	finally
    //   45	48	64	finally
    //   52	61	64	finally
    //   65	68	64	finally
  }
  
  private void a(int paramInt, Throwable paramThrowable, byte[] paramArrayOfByte)
  {
    int i1 = 0;
    x();
    a();
    byte[] arrayOfByte = paramArrayOfByte;
    if (paramArrayOfByte == null) {
      arrayOfByte = new byte[0];
    }
    paramArrayOfByte = x;
    x = null;
    if (((paramInt == 200) || (paramInt == 204)) && (paramThrowable == null))
    {
      ec.a(q().a());
      ed.a(0L);
      F();
      f().z().a("Successful upload. Got network response. code, size", Integer.valueOf(paramInt), Integer.valueOf(arrayOfByte.length));
      n().b();
      try
      {
        paramThrowable = paramArrayOfByte.iterator();
        while (paramThrowable.hasNext())
        {
          paramArrayOfByte = (Long)paramThrowable.next();
          n().a(paramArrayOfByte.longValue());
        }
      }
      finally
      {
        n().v();
      }
      n().v();
      if ((o().b()) && (E()))
      {
        B();
        return;
      }
      F();
      return;
    }
    f().z().a("Network upload failed. Will retry later. code, error", Integer.valueOf(paramInt), paramThrowable);
    ed.a(q().a());
    if ((paramInt == 503) || (paramInt == 429)) {
      i1 = 1;
    }
    if (i1 != 0) {
      ee.a(q().a());
    }
    F();
  }
  
  private void a(Bundle paramBundle, int paramInt)
  {
    if (paramBundle.getLong("_err") == 0L) {
      paramBundle.putLong("_err", paramInt);
    }
  }
  
  private void a(ai paramai)
  {
    if (paramai == null) {
      throw new IllegalStateException("Component not created");
    }
  }
  
  private void a(String paramString, int paramInt, Throwable paramThrowable, byte[] paramArrayOfByte)
  {
    int i2 = 0;
    x();
    a();
    zzx.zzcM(paramString);
    byte[] arrayOfByte = paramArrayOfByte;
    if (paramArrayOfByte == null) {
      arrayOfByte = new byte[0];
    }
    n().b();
    label106:
    int i1;
    for (;;)
    {
      try
      {
        paramArrayOfByte = n().b(paramString);
        if ((paramInt == 200) || (paramInt == 204)) {
          break;
        }
        boolean bool;
        if (paramInt == 304)
        {
          break;
          if (j().a(paramString) == null)
          {
            bool = j().a(paramString, null);
            if (bool) {}
          }
        }
        else
        {
          i1 = 0;
          break label378;
          label112:
          bool = j().a(paramString, arrayOfByte);
          if (!bool) {
            return;
          }
        }
        paramArrayOfByte.f(q().a());
        n().a(paramArrayOfByte);
        if (paramInt == 404)
        {
          f().c().a("Config not found. Using empty config");
          if ((o().b()) && (E()))
          {
            B();
            label201:
            n().c();
          }
        }
        else
        {
          f().z().a("Successfully fetched config. Got network response. code, size", Integer.valueOf(paramInt), Integer.valueOf(arrayOfByte.length));
          continue;
        }
        F();
      }
      finally
      {
        n().v();
      }
    }
    label259:
    paramArrayOfByte.g(q().a());
    n().a(paramArrayOfByte);
    f().z().a("Fetching config failed. code, error", Integer.valueOf(paramInt), paramThrowable);
    ed.a(q().a());
    if (paramInt != 503)
    {
      i1 = i2;
      if (paramInt == 429) {}
    }
    for (;;)
    {
      if (i1 != 0) {
        ee.a(q().a());
      }
      F();
      break label201;
      if (paramThrowable != null) {
        break label106;
      }
      i1 = 1;
      label378:
      if ((i1 == 0) && (paramInt != 404)) {
        break label259;
      }
      if (paramInt == 404) {
        break;
      }
      if (paramInt != 304) {
        break label112;
      }
      break;
      i1 = 1;
    }
  }
  
  private void a(List<Long> paramList)
  {
    if (!paramList.isEmpty()) {}
    for (boolean bool = true;; bool = false)
    {
      zzx.zzac(bool);
      if (x == null) {
        break;
      }
      f().b().a("Set uploading progress before finishing the previous upload");
      return;
    }
    x = new ArrayList(paramList);
  }
  
  private boolean a(String paramString, long paramLong)
  {
    n().b();
    for (;;)
    {
      int i1;
      int i2;
      long l1;
      try
      {
        a locala = new a(null);
        n().a(paramString, paramLong, locala);
        if (locala.a()) {
          break label588;
        }
        la.e locale = a;
        b = new la.b[c.size()];
        i1 = 0;
        i2 = 0;
        if (i2 < c.size())
        {
          if (j().b(a.o, c.get(i2)).b))
          {
            f().z().a("Dropping blacklisted raw event", c.get(i2)).b);
            break label610;
          }
          b[i1] = ((la.b)c.get(i2));
          i1 += 1;
          break label610;
        }
        if (i1 < c.size()) {
          b = ((la.b[])Arrays.copyOf(b, i1));
        }
        A = a(a.o, a.c, b);
        e = b[0].c;
        f = b[0].c;
        i1 = 1;
        if (i1 < b.length)
        {
          paramString = b[i1];
          if (c.longValue() < e.longValue()) {
            e = c;
          }
          if (c.longValue() <= f.longValue()) {
            break label619;
          }
          f = c;
          break label619;
        }
        String str = a.o;
        a locala1 = n().b(str);
        if (locala1 == null)
        {
          f().b().a("Bundling raw events w/o app info");
          x = f().A();
          n().a(locale);
          n().a(b);
          n().f(str);
          n().c();
          return true;
        }
        paramLong = locala1.g();
        if (paramLong != 0L)
        {
          paramString = Long.valueOf(paramLong);
          h = paramString;
          l1 = locala1.f();
          if (l1 != 0L) {
            break label604;
          }
          if (paramLong == 0L) {
            break label583;
          }
          paramString = Long.valueOf(paramLong);
          g = paramString;
          locala1.p();
          w = Integer.valueOf((int)locala1.m());
          locala1.a(e.longValue());
          locala1.b(f.longValue());
          n().a(locala1);
          continue;
        }
        paramString = null;
      }
      finally
      {
        n().v();
      }
      continue;
      label583:
      paramString = null;
      continue;
      label588:
      n().c();
      n().v();
      return false;
      label604:
      paramLong = l1;
      continue;
      label610:
      i2 += 1;
      continue;
      label619:
      i1 += 1;
    }
  }
  
  private la.a[] a(String paramString, la.g[] paramArrayOfg, la.b[] paramArrayOfb)
  {
    zzx.zzcM(paramString);
    return w().a(paramString, paramArrayOfb, paramArrayOfg);
  }
  
  private void b(aj paramaj)
  {
    if (paramaj == null) {
      throw new IllegalStateException("Component not created");
    }
    if (!paramaj.E()) {
      throw new IllegalStateException("Component not initialized");
    }
  }
  
  private void c(AppMetadata paramAppMetadata)
  {
    int i3 = 1;
    x();
    a();
    zzx.zzz(paramAppMetadata);
    zzx.zzcM(b);
    a locala2 = n().b(b);
    String str = e().b(b);
    int i1 = 0;
    a locala1;
    if (locala2 == null)
    {
      locala1 = new a(this, b);
      locala1.a(e().b());
      locala1.c(str);
      i1 = 1;
      int i2 = i1;
      if (!TextUtils.isEmpty(c))
      {
        i2 = i1;
        if (!c.equals(locala1.d()))
        {
          locala1.b(c);
          i2 = 1;
        }
      }
      i1 = i2;
      if (f != 0L)
      {
        i1 = i2;
        if (f != locala1.j())
        {
          locala1.c(f);
          i1 = 1;
        }
      }
      i2 = i1;
      if (!TextUtils.isEmpty(d))
      {
        i2 = i1;
        if (!d.equals(locala1.h()))
        {
          locala1.d(d);
          i2 = 1;
        }
      }
      i1 = i2;
      if (!TextUtils.isEmpty(e))
      {
        i1 = i2;
        if (!e.equals(locala1.i()))
        {
          locala1.e(e);
          i1 = 1;
        }
      }
      if (g != locala1.k())
      {
        locala1.d(g);
        i1 = 1;
      }
      if (i == locala1.l()) {
        break label356;
      }
      locala1.a(i);
      i1 = i3;
    }
    label356:
    for (;;)
    {
      if (i1 != 0) {
        n().a(locala1);
      }
      return;
      locala1 = locala2;
      if (str.equals(locala2.e())) {
        break;
      }
      locala2.c(str);
      locala2.a(e().b());
      i1 = 1;
      locala1 = locala2;
      break;
    }
  }
  
  void A()
  {
    if (d().N()) {
      throw new IllegalStateException("Unexpected call on package side");
    }
  }
  
  public void B()
  {
    Object localObject4 = null;
    int i2 = 0;
    x();
    a();
    if (!d().N())
    {
      localObject1 = e().v();
      if (localObject1 == null) {
        f().c().a("Upload data called on the client side before use of service was decided");
      }
    }
    long l1;
    String str;
    int i1;
    do
    {
      return;
      if (((Boolean)localObject1).booleanValue())
      {
        f().b().a("Upload called in the client side when service should be used");
        return;
      }
      if (D())
      {
        f().c().a("Uploading requested multiple times");
        return;
      }
      if (!o().b())
      {
        f().c().a("Network not connected, ignoring upload request");
        F();
        return;
      }
      l1 = q().a();
      a(l1 - d().W());
      long l2 = ec.a();
      if (l2 != 0L) {
        f().y().a("Uploading events. Elapsed time since last upload attempt (ms)", Long.valueOf(Math.abs(l1 - l2)));
      }
      str = n().x();
      if (TextUtils.isEmpty(str)) {
        break;
      }
      i1 = d().c(str);
      int i3 = d().d(str);
      localObject4 = n().a(str, i1, i3);
    } while (((List)localObject4).isEmpty());
    Object localObject1 = ((List)localObject4).iterator();
    Object localObject5;
    do
    {
      if (!((Iterator)localObject1).hasNext()) {
        break;
      }
      localObject5 = (la.e)nextfirst;
    } while (TextUtils.isEmpty(s));
    Object localObject3;
    for (localObject1 = s;; localObject3 = null)
    {
      if (localObject1 != null)
      {
        i1 = 0;
        if (i1 < ((List)localObject4).size())
        {
          localObject5 = (la.e)getfirst;
          if (TextUtils.isEmpty(s)) {}
          while (s.equals(localObject1))
          {
            i1 += 1;
            break;
          }
        }
      }
      for (localObject1 = ((List)localObject4).subList(0, i1);; localObject3 = localObject4)
      {
        localObject5 = new la.d();
        a = new la.e[((List)localObject1).size()];
        localObject4 = new ArrayList(((List)localObject1).size());
        i1 = i2;
        while (i1 < a.length)
        {
          a[i1] = ((la.e)getfirst);
          ((List)localObject4).add(getsecond);
          a[i1].r = Long.valueOf(d().M());
          a[i1].d = Long.valueOf(l1);
          a[i1].z = Boolean.valueOf(d().N());
          i1 += 1;
        }
        if (f().a(2)) {}
        for (localObject1 = k.b((la.d)localObject5);; localObject3 = null)
        {
          Object localObject7 = m().a((la.d)localObject5);
          Object localObject6 = d().V();
          try
          {
            URL localURL = new URL((String)localObject6);
            a((List)localObject4);
            ed.a(l1);
            localObject4 = "?";
            if (a.length > 0) {
              localObject4 = a[0].o;
            }
            f().z().a("Uploading data. app, uncompressed size, data", localObject4, Integer.valueOf(localObject7.length), localObject1);
            o().a(str, localURL, (byte[])localObject7, null, new aa.a()
            {
              public void a(String paramAnonymousString, int paramAnonymousInt, Throwable paramAnonymousThrowable, byte[] paramAnonymousArrayOfByte)
              {
                ag.a(ag.this, paramAnonymousInt, paramAnonymousThrowable, paramAnonymousArrayOfByte);
              }
            });
            return;
          }
          catch (MalformedURLException localMalformedURLException1)
          {
            f().b().a("Failed to parse upload URL. Not uploading", localObject6);
            return;
          }
          localObject5 = n().b(l1 - d().W());
          if (TextUtils.isEmpty((CharSequence)localObject5)) {
            break;
          }
          Object localObject2 = n().b((String)localObject5);
          if (localObject2 == null) {
            break;
          }
          str = d().a(((a)localObject2).d(), ((a)localObject2).c());
          try
          {
            localObject6 = new URL(str);
            f().z().a("Fetching remote configuration", ((a)localObject2).b());
            localObject7 = j().a(((a)localObject2).b());
            localObject2 = localObject4;
            if (localObject7 != null)
            {
              localObject2 = localObject4;
              if (a != null)
              {
                localObject2 = new com.yelp.android.g.a();
                ((Map)localObject2).put("Config-Version", String.valueOf(a));
              }
            }
            o().a((String)localObject5, (URL)localObject6, (Map)localObject2, new aa.a()
            {
              public void a(String paramAnonymousString, int paramAnonymousInt, Throwable paramAnonymousThrowable, byte[] paramAnonymousArrayOfByte)
              {
                ag.a(ag.this, paramAnonymousString, paramAnonymousInt, paramAnonymousThrowable, paramAnonymousArrayOfByte);
              }
            });
            return;
          }
          catch (MalformedURLException localMalformedURLException2)
          {
            f().b().a("Failed to parse config URL. Not fetching", str);
            return;
          }
        }
      }
    }
  }
  
  void C()
  {
    z += 1;
  }
  
  void a()
  {
    if (!v) {
      throw new IllegalStateException("AppMeasurement is not initialized");
    }
  }
  
  void a(AppMetadata paramAppMetadata)
  {
    x();
    a();
    zzx.zzcM(b);
    c(paramAppMetadata);
  }
  
  void a(EventParcel paramEventParcel, AppMetadata paramAppMetadata)
  {
    long l1 = System.nanoTime();
    x();
    a();
    String str = b;
    zzx.zzcM(str);
    if (TextUtils.isEmpty(c)) {
      return;
    }
    if (!i)
    {
      c(paramAppMetadata);
      return;
    }
    if (j().b(str, b))
    {
      f().z().a("Dropping blacklisted event", b);
      return;
    }
    if (f().a(2)) {
      f().z().a("Logging event", paramEventParcel);
    }
    n().b();
    Bundle localBundle;
    boolean bool2;
    boolean bool3;
    for (;;)
    {
      try
      {
        localBundle = c.b();
        c(paramAppMetadata);
        j localj;
        if (("_iap".equals(b)) || ("ecommerce_purchase".equals(b)))
        {
          localObject = localBundle.getString("currency");
          l2 = localBundle.getLong("value");
          if ((!TextUtils.isEmpty((CharSequence)localObject)) && (l2 > 0L))
          {
            localObject = ((String)localObject).toUpperCase(Locale.US);
            if (((String)localObject).matches("[A-Z]{3}"))
            {
              localObject = "_ltv_" + (String)localObject;
              localj = n().c(str, (String)localObject);
              if ((localj != null) && ((d instanceof Long))) {
                continue;
              }
              n().a(str, d().b(str) - 1);
              localObject = new j(str, (String)localObject, q().a(), Long.valueOf(l2));
              n().a((j)localObject);
            }
          }
        }
        bool2 = k.a(b);
        bool3 = k.a(localBundle);
        localObject = n();
        l2 = z();
        boolean bool1;
        if ((bool2) && (bool3))
        {
          bool1 = true;
          localObject = ((o)localObject).a(l2, str, bool2, bool1);
          l2 = b - d().B();
          if (l2 <= 0L) {
            break;
          }
          if (l2 % 1000L == 1L) {
            f().c().a("Data loss. Too many events logged. count", Long.valueOf(b));
          }
          n().c();
          return;
          long l3 = ((Long)d).longValue();
          localObject = new j(str, (String)localObject, q().a(), Long.valueOf(l2 + l3));
        }
        else
        {
          bool1 = false;
        }
      }
      finally
      {
        n().v();
      }
    }
    if (bool2)
    {
      l2 = a - d().C();
      if (l2 > 0L)
      {
        a(str, 2);
        if (l2 % 1000L == 1L) {
          f().c().a("Data loss. Too many public events logged. count", Long.valueOf(a));
        }
        n().c();
        n().v();
        return;
      }
    }
    if ((bool2) && (bool3) && (c - d().D() > 0L))
    {
      localBundle.remove("_c");
      a(localBundle, 4);
    }
    long l2 = n().c(str);
    if (l2 > 0L) {
      f().c().a("Data lost. Too many events stored on disk, deleted", Long.valueOf(l2));
    }
    paramEventParcel = new r(this, d, str, b, e, 0L, localBundle);
    Object localObject = n().a(str, b);
    if (localObject == null) {
      if (n().g(str) >= d().A())
      {
        f().c().a("Too many event names used, ignoring event. name, supported count", b, Integer.valueOf(d().A()));
        a(str, 1);
        n().v();
        return;
      }
    }
    for (localObject = new s(str, b, 0L, 0L, d);; localObject = ((s)localObject).a(d))
    {
      n().a((s)localObject);
      a(paramEventParcel, paramAppMetadata);
      n().c();
      if (f().a(2)) {
        f().z().a("Event recorded", paramEventParcel);
      }
      n().v();
      F();
      f().z().a("Background event processing time, ms", Long.valueOf((System.nanoTime() - l1 + 500000L) / 1000000L));
      return;
      paramEventParcel = paramEventParcel.a(this, e);
    }
  }
  
  void a(EventParcel paramEventParcel, String paramString)
  {
    a locala = n().b(paramString);
    if ((locala == null) || (TextUtils.isEmpty(locala.h())))
    {
      f().y().a("No app data available; dropping event", paramString);
      return;
    }
    try
    {
      String str = pgetPackageManagergetPackageInfo0versionName;
      if ((locala.h() != null) && (!locala.h().equals(str)))
      {
        f().c().a("App version does not match; dropping event", paramString);
        return;
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      f().c().a("Could not find package", paramString);
      a(paramEventParcel, new AppMetadata(paramString, locala.d(), locala.h(), locala.i(), locala.j(), locala.k(), null, locala.l(), false));
    }
  }
  
  /* Error */
  void a(UserAttributeParcel paramUserAttributeParcel, AppMetadata paramAppMetadata)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 307	com/google/android/gms/measurement/internal/ag:x	()V
    //   4: aload_0
    //   5: invokevirtual 312	com/google/android/gms/measurement/internal/ag:a	()V
    //   8: aload_2
    //   9: getfield 658	com/google/android/gms/measurement/internal/AppMetadata:c	Ljava/lang/String;
    //   12: invokestatic 327	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   15: ifeq +4 -> 19
    //   18: return
    //   19: aload_2
    //   20: getfield 695	com/google/android/gms/measurement/internal/AppMetadata:i	Z
    //   23: ifne +9 -> 32
    //   26: aload_0
    //   27: aload_2
    //   28: invokespecial 843	com/google/android/gms/measurement/internal/ag:c	(Lcom/google/android/gms/measurement/internal/AppMetadata;)V
    //   31: return
    //   32: aload_0
    //   33: invokevirtual 366	com/google/android/gms/measurement/internal/ag:m	()Lcom/google/android/gms/measurement/internal/k;
    //   36: aload_1
    //   37: getfield 1043	com/google/android/gms/measurement/internal/UserAttributeParcel:b	Ljava/lang/String;
    //   40: invokevirtual 1044	com/google/android/gms/measurement/internal/k:c	(Ljava/lang/String;)V
    //   43: aload_0
    //   44: invokevirtual 366	com/google/android/gms/measurement/internal/ag:m	()Lcom/google/android/gms/measurement/internal/k;
    //   47: aload_1
    //   48: getfield 1043	com/google/android/gms/measurement/internal/UserAttributeParcel:b	Ljava/lang/String;
    //   51: aload_1
    //   52: invokevirtual 1046	com/google/android/gms/measurement/internal/UserAttributeParcel:a	()Ljava/lang/Object;
    //   55: invokevirtual 1049	com/google/android/gms/measurement/internal/k:c	(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    //   58: astore 4
    //   60: aload 4
    //   62: ifnull -44 -> 18
    //   65: new 908	com/google/android/gms/measurement/internal/j
    //   68: dup
    //   69: aload_2
    //   70: getfield 646	com/google/android/gms/measurement/internal/AppMetadata:b	Ljava/lang/String;
    //   73: aload_1
    //   74: getfield 1043	com/google/android/gms/measurement/internal/UserAttributeParcel:b	Ljava/lang/String;
    //   77: aload_1
    //   78: getfield 1050	com/google/android/gms/measurement/internal/UserAttributeParcel:c	J
    //   81: aload 4
    //   83: invokespecial 918	com/google/android/gms/measurement/internal/j:<init>	(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V
    //   86: astore_1
    //   87: aload_0
    //   88: invokevirtual 112	com/google/android/gms/measurement/internal/ag:f	()Lcom/google/android/gms/measurement/internal/z;
    //   91: invokevirtual 144	com/google/android/gms/measurement/internal/z:y	()Lcom/google/android/gms/measurement/internal/z$a;
    //   94: ldc_w 1052
    //   97: aload_1
    //   98: getfield 1053	com/google/android/gms/measurement/internal/j:b	Ljava/lang/String;
    //   101: aload 4
    //   103: invokevirtual 265	com/google/android/gms/measurement/internal/z$a:a	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   106: aload_0
    //   107: invokevirtual 315	com/google/android/gms/measurement/internal/ag:n	()Lcom/google/android/gms/measurement/internal/o;
    //   110: invokevirtual 435	com/google/android/gms/measurement/internal/o:b	()V
    //   113: aload_0
    //   114: aload_2
    //   115: invokespecial 843	com/google/android/gms/measurement/internal/ag:c	(Lcom/google/android/gms/measurement/internal/AppMetadata;)V
    //   118: aload_0
    //   119: invokevirtual 315	com/google/android/gms/measurement/internal/ag:n	()Lcom/google/android/gms/measurement/internal/o;
    //   122: aload_1
    //   123: invokevirtual 921	com/google/android/gms/measurement/internal/o:a	(Lcom/google/android/gms/measurement/internal/j;)Z
    //   126: istore_3
    //   127: aload_0
    //   128: invokevirtual 315	com/google/android/gms/measurement/internal/ag:n	()Lcom/google/android/gms/measurement/internal/o;
    //   131: invokevirtual 458	com/google/android/gms/measurement/internal/o:c	()V
    //   134: iload_3
    //   135: ifeq +32 -> 167
    //   138: aload_0
    //   139: invokevirtual 112	com/google/android/gms/measurement/internal/ag:f	()Lcom/google/android/gms/measurement/internal/z;
    //   142: invokevirtual 144	com/google/android/gms/measurement/internal/z:y	()Lcom/google/android/gms/measurement/internal/z$a;
    //   145: ldc_w 1055
    //   148: aload_1
    //   149: getfield 1053	com/google/android/gms/measurement/internal/j:b	Ljava/lang/String;
    //   152: aload_1
    //   153: getfield 910	com/google/android/gms/measurement/internal/j:d	Ljava/lang/Object;
    //   156: invokevirtual 265	com/google/android/gms/measurement/internal/z$a:a	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   159: aload_0
    //   160: invokevirtual 315	com/google/android/gms/measurement/internal/ag:n	()Lcom/google/android/gms/measurement/internal/o;
    //   163: invokevirtual 456	com/google/android/gms/measurement/internal/o:v	()V
    //   166: return
    //   167: aload_0
    //   168: invokevirtual 112	com/google/android/gms/measurement/internal/ag:f	()Lcom/google/android/gms/measurement/internal/z;
    //   171: invokevirtual 1057	com/google/android/gms/measurement/internal/z:w	()Lcom/google/android/gms/measurement/internal/z$a;
    //   174: ldc_w 1059
    //   177: aload_1
    //   178: getfield 1053	com/google/android/gms/measurement/internal/j:b	Ljava/lang/String;
    //   181: aload_1
    //   182: getfield 910	com/google/android/gms/measurement/internal/j:d	Ljava/lang/Object;
    //   185: invokevirtual 265	com/google/android/gms/measurement/internal/z$a:a	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   188: goto -29 -> 159
    //   191: astore_1
    //   192: aload_0
    //   193: invokevirtual 315	com/google/android/gms/measurement/internal/ag:n	()Lcom/google/android/gms/measurement/internal/o;
    //   196: invokevirtual 456	com/google/android/gms/measurement/internal/o:v	()V
    //   199: aload_1
    //   200: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	201	0	this	ag
    //   0	201	1	paramUserAttributeParcel	UserAttributeParcel
    //   0	201	2	paramAppMetadata	AppMetadata
    //   126	9	3	bool	boolean
    //   58	44	4	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   113	134	191	finally
    //   138	159	191	finally
    //   167	188	191	finally
  }
  
  void a(aj paramaj)
  {
    y += 1;
  }
  
  void a(r paramr, AppMetadata paramAppMetadata)
  {
    x();
    a();
    zzx.zzz(paramr);
    zzx.zzz(paramAppMetadata);
    zzx.zzcM(a);
    zzx.zzac(a.equals(b));
    la.e locale = new la.e();
    a = Integer.valueOf(1);
    i = "android";
    o = b;
    n = e;
    p = d;
    q = Long.valueOf(f);
    y = c;
    if (g == 0L) {}
    for (Object localObject = null;; localObject = Long.valueOf(g))
    {
      v = ((Long)localObject);
      localObject = e().a(b);
      if ((localObject != null) && (first != null) && (second != null))
      {
        s = ((String)first);
        t = ((Boolean)second);
      }
      k = s().b();
      j = s().c();
      m = Integer.valueOf((int)s().v());
      l = s().w();
      r = null;
      d = null;
      e = null;
      f = null;
      a locala = n().b(b);
      localObject = locala;
      if (locala == null)
      {
        localObject = new a(this, b);
        ((a)localObject).a(e().b());
        ((a)localObject).b(c);
        ((a)localObject).c(e().b(b));
        ((a)localObject).e(0L);
        ((a)localObject).a(0L);
        ((a)localObject).b(0L);
        ((a)localObject).d(d);
        ((a)localObject).e(e);
        ((a)localObject).c(f);
        ((a)localObject).d(g);
        ((a)localObject).a(i);
        n().a((a)localObject);
      }
      u = ((a)localObject).c();
      paramAppMetadata = n().a(b);
      c = new la.g[paramAppMetadata.size()];
      int i1 = 0;
      while (i1 < paramAppMetadata.size())
      {
        localObject = new la.g();
        c[i1] = localObject;
        b = getb;
        a = Long.valueOf(getc);
        m().a((la.g)localObject, getd);
        i1 += 1;
      }
    }
    try
    {
      long l1 = n().b(locale);
      n().a(paramr, l1);
      return;
    }
    catch (IOException paramr)
    {
      f().b().a("Data loss. Failed to insert raw event metadata", paramr);
    }
  }
  
  void a(String paramString, int paramInt) {}
  
  public void a(boolean paramBoolean)
  {
    F();
  }
  
  boolean a(long paramLong)
  {
    return a(null, paramLong);
  }
  
  /* Error */
  public void b(AppMetadata paramAppMetadata)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 307	com/google/android/gms/measurement/internal/ag:x	()V
    //   4: aload_0
    //   5: invokevirtual 312	com/google/android/gms/measurement/internal/ag:a	()V
    //   8: aload_1
    //   9: invokestatic 75	com/google/android/gms/common/internal/zzx:zzz	(Ljava/lang/Object;)Ljava/lang/Object;
    //   12: pop
    //   13: aload_1
    //   14: getfield 646	com/google/android/gms/measurement/internal/AppMetadata:b	Ljava/lang/String;
    //   17: invokestatic 493	com/google/android/gms/common/internal/zzx:zzcM	(Ljava/lang/String;)Ljava/lang/String;
    //   20: pop
    //   21: aload_1
    //   22: getfield 658	com/google/android/gms/measurement/internal/AppMetadata:c	Ljava/lang/String;
    //   25: invokestatic 327	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   28: ifeq +4 -> 32
    //   31: return
    //   32: aload_1
    //   33: getfield 695	com/google/android/gms/measurement/internal/AppMetadata:i	Z
    //   36: ifne +9 -> 45
    //   39: aload_0
    //   40: aload_1
    //   41: invokespecial 843	com/google/android/gms/measurement/internal/ag:c	(Lcom/google/android/gms/measurement/internal/AppMetadata;)V
    //   44: return
    //   45: aload_0
    //   46: invokevirtual 380	com/google/android/gms/measurement/internal/ag:q	()Lcom/google/android/gms/internal/jt;
    //   49: invokeinterface 383 1 0
    //   54: lstore_2
    //   55: aload_0
    //   56: invokevirtual 315	com/google/android/gms/measurement/internal/ag:n	()Lcom/google/android/gms/measurement/internal/o;
    //   59: invokevirtual 435	com/google/android/gms/measurement/internal/o:b	()V
    //   62: aload_0
    //   63: invokevirtual 315	com/google/android/gms/measurement/internal/ag:n	()Lcom/google/android/gms/measurement/internal/o;
    //   66: aload_1
    //   67: getfield 646	com/google/android/gms/measurement/internal/AppMetadata:b	Ljava/lang/String;
    //   70: invokevirtual 496	com/google/android/gms/measurement/internal/o:b	(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/a;
    //   73: astore 4
    //   75: aload 4
    //   77: ifnull +76 -> 153
    //   80: aload 4
    //   82: invokevirtual 679	com/google/android/gms/measurement/internal/a:h	()Ljava/lang/String;
    //   85: ifnull +68 -> 153
    //   88: aload 4
    //   90: invokevirtual 679	com/google/android/gms/measurement/internal/a:h	()Ljava/lang/String;
    //   93: aload_1
    //   94: getfield 677	com/google/android/gms/measurement/internal/AppMetadata:d	Ljava/lang/String;
    //   97: invokevirtual 666	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   100: ifne +53 -> 153
    //   103: new 467	android/os/Bundle
    //   106: dup
    //   107: invokespecial 1129	android/os/Bundle:<init>	()V
    //   110: astore 5
    //   112: aload 5
    //   114: ldc_w 1131
    //   117: aload 4
    //   119: invokevirtual 679	com/google/android/gms/measurement/internal/a:h	()Ljava/lang/String;
    //   122: invokevirtual 1135	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   125: aload_0
    //   126: new 851	com/google/android/gms/measurement/internal/EventParcel
    //   129: dup
    //   130: ldc_w 1137
    //   133: new 861	com/google/android/gms/measurement/internal/EventParams
    //   136: dup
    //   137: aload 5
    //   139: invokespecial 1140	com/google/android/gms/measurement/internal/EventParams:<init>	(Landroid/os/Bundle;)V
    //   142: ldc_w 1142
    //   145: lload_2
    //   146: invokespecial 1145	com/google/android/gms/measurement/internal/EventParcel:<init>	(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/EventParams;Ljava/lang/String;J)V
    //   149: aload_1
    //   150: invokevirtual 1039	com/google/android/gms/measurement/internal/ag:a	(Lcom/google/android/gms/measurement/internal/EventParcel;Lcom/google/android/gms/measurement/internal/AppMetadata;)V
    //   153: aload_0
    //   154: aload_1
    //   155: invokespecial 843	com/google/android/gms/measurement/internal/ag:c	(Lcom/google/android/gms/measurement/internal/AppMetadata;)V
    //   158: aload_0
    //   159: invokevirtual 315	com/google/android/gms/measurement/internal/ag:n	()Lcom/google/android/gms/measurement/internal/o;
    //   162: aload_1
    //   163: getfield 646	com/google/android/gms/measurement/internal/AppMetadata:b	Ljava/lang/String;
    //   166: ldc_w 1147
    //   169: invokevirtual 974	com/google/android/gms/measurement/internal/o:a	(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/s;
    //   172: ifnonnull +97 -> 269
    //   175: aload_0
    //   176: new 1042	com/google/android/gms/measurement/internal/UserAttributeParcel
    //   179: dup
    //   180: ldc_w 1149
    //   183: lload_2
    //   184: lload_2
    //   185: ldc2_w 1150
    //   188: ldiv
    //   189: lconst_1
    //   190: ladd
    //   191: ldc2_w 1150
    //   194: lmul
    //   195: invokestatic 132	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   198: ldc_w 1142
    //   201: invokespecial 1154	com/google/android/gms/measurement/internal/UserAttributeParcel:<init>	(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V
    //   204: aload_1
    //   205: invokevirtual 1156	com/google/android/gms/measurement/internal/ag:a	(Lcom/google/android/gms/measurement/internal/UserAttributeParcel;Lcom/google/android/gms/measurement/internal/AppMetadata;)V
    //   208: new 467	android/os/Bundle
    //   211: dup
    //   212: invokespecial 1129	android/os/Bundle:<init>	()V
    //   215: astore 4
    //   217: aload 4
    //   219: ldc_w 953
    //   222: lconst_1
    //   223: invokevirtual 475	android/os/Bundle:putLong	(Ljava/lang/String;J)V
    //   226: aload_0
    //   227: new 851	com/google/android/gms/measurement/internal/EventParcel
    //   230: dup
    //   231: ldc_w 1147
    //   234: new 861	com/google/android/gms/measurement/internal/EventParams
    //   237: dup
    //   238: aload 4
    //   240: invokespecial 1140	com/google/android/gms/measurement/internal/EventParams:<init>	(Landroid/os/Bundle;)V
    //   243: ldc_w 1142
    //   246: lload_2
    //   247: invokespecial 1145	com/google/android/gms/measurement/internal/EventParcel:<init>	(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/EventParams;Ljava/lang/String;J)V
    //   250: aload_1
    //   251: invokevirtual 1039	com/google/android/gms/measurement/internal/ag:a	(Lcom/google/android/gms/measurement/internal/EventParcel;Lcom/google/android/gms/measurement/internal/AppMetadata;)V
    //   254: aload_0
    //   255: invokevirtual 315	com/google/android/gms/measurement/internal/ag:n	()Lcom/google/android/gms/measurement/internal/o;
    //   258: invokevirtual 458	com/google/android/gms/measurement/internal/o:c	()V
    //   261: aload_0
    //   262: invokevirtual 315	com/google/android/gms/measurement/internal/ag:n	()Lcom/google/android/gms/measurement/internal/o;
    //   265: invokevirtual 456	com/google/android/gms/measurement/internal/o:v	()V
    //   268: return
    //   269: aload_1
    //   270: getfield 1158	com/google/android/gms/measurement/internal/AppMetadata:j	Z
    //   273: ifeq -19 -> 254
    //   276: aload_0
    //   277: new 851	com/google/android/gms/measurement/internal/EventParcel
    //   280: dup
    //   281: ldc_w 1160
    //   284: new 861	com/google/android/gms/measurement/internal/EventParams
    //   287: dup
    //   288: new 467	android/os/Bundle
    //   291: dup
    //   292: invokespecial 1129	android/os/Bundle:<init>	()V
    //   295: invokespecial 1140	com/google/android/gms/measurement/internal/EventParams:<init>	(Landroid/os/Bundle;)V
    //   298: ldc_w 1142
    //   301: lload_2
    //   302: invokespecial 1145	com/google/android/gms/measurement/internal/EventParcel:<init>	(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/EventParams;Ljava/lang/String;J)V
    //   305: aload_1
    //   306: invokevirtual 1039	com/google/android/gms/measurement/internal/ag:a	(Lcom/google/android/gms/measurement/internal/EventParcel;Lcom/google/android/gms/measurement/internal/AppMetadata;)V
    //   309: goto -55 -> 254
    //   312: astore_1
    //   313: aload_0
    //   314: invokevirtual 315	com/google/android/gms/measurement/internal/ag:n	()Lcom/google/android/gms/measurement/internal/o;
    //   317: invokevirtual 456	com/google/android/gms/measurement/internal/o:v	()V
    //   320: aload_1
    //   321: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	322	0	this	ag
    //   0	322	1	paramAppMetadata	AppMetadata
    //   54	248	2	l1	long
    //   73	166	4	localObject	Object
    //   110	28	5	localBundle	Bundle
    // Exception table:
    //   from	to	target	type
    //   62	75	312	finally
    //   80	153	312	finally
    //   153	254	312	finally
    //   254	261	312	finally
    //   269	309	312	finally
  }
  
  void b(UserAttributeParcel paramUserAttributeParcel, AppMetadata paramAppMetadata)
  {
    x();
    a();
    if (TextUtils.isEmpty(c)) {
      return;
    }
    if (!i)
    {
      c(paramAppMetadata);
      return;
    }
    f().y().a("Removing user property", b);
    n().b();
    try
    {
      c(paramAppMetadata);
      n().b(b, b);
      n().c();
      f().y().a("User property removed", b);
      return;
    }
    finally
    {
      n().v();
    }
  }
  
  protected boolean b()
  {
    boolean bool2 = true;
    a();
    x();
    if (w == null)
    {
      if ((!m().f("android.permission.INTERNET")) || (!m().f("android.permission.ACCESS_NETWORK_STATE")) || (!AppMeasurementReceiver.a(p())) || (!AppMeasurementService.a(p()))) {
        break label124;
      }
      bool1 = true;
      w = Boolean.valueOf(bool1);
      if ((w.booleanValue()) && (!d().N())) {
        if (TextUtils.isEmpty(t().c())) {
          break label129;
        }
      }
    }
    label124:
    label129:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      w = Boolean.valueOf(bool1);
      return w.booleanValue();
      bool1 = false;
      break;
    }
  }
  
  protected void c()
  {
    x();
    if ((y()) && ((!g.E()) || (g.F())))
    {
      f().b().a("Scheduler shutting down before Scion.start() called");
      return;
    }
    n().y();
    if (!b()) {
      if (e().w())
      {
        if (!m().f("android.permission.INTERNET")) {
          f().b().a("App is missing INTERNET permission");
        }
        if (!m().f("android.permission.ACCESS_NETWORK_STATE")) {
          f().b().a("App is missing ACCESS_NETWORK_STATE permission");
        }
        if (!AppMeasurementReceiver.a(p())) {
          f().b().a("AppMeasurementReceiver not registered/enabled");
        }
        if (!AppMeasurementService.a(p())) {
          f().b().a("AppMeasurementService not registered/enabled");
        }
        f().b().a("Uploading is not possible. App measurement disabled");
      }
    }
    for (;;)
    {
      F();
      return;
      if ((!d().N()) && (!y()) && (!TextUtils.isEmpty(t().c()))) {
        l().c();
      }
    }
  }
  
  public n d()
  {
    return d;
  }
  
  public ad e()
  {
    a(e);
    return e;
  }
  
  public z f()
  {
    b(f);
    return f;
  }
  
  public z g()
  {
    if ((f != null) && (f.E())) {
      return f;
    }
    return null;
  }
  
  public af h()
  {
    b(g);
    return g;
  }
  
  public e i()
  {
    b(h);
    return h;
  }
  
  public ae j()
  {
    b(i);
    return i;
  }
  
  af k()
  {
    return g;
  }
  
  public c l()
  {
    b(q);
    return q;
  }
  
  public k m()
  {
    a(k);
    return k;
  }
  
  public o n()
  {
    b(l);
    return l;
  }
  
  public aa o()
  {
    b(m);
    return m;
  }
  
  public Context p()
  {
    return c;
  }
  
  public jt q()
  {
    return n;
  }
  
  public d r()
  {
    b(o);
    return o;
  }
  
  public q s()
  {
    b(p);
    return p;
  }
  
  public x t()
  {
    b(r);
    return r;
  }
  
  public ab u()
  {
    if (s == null) {
      throw new IllegalStateException("Network broadcast receiver not created");
    }
    return s;
  }
  
  public h v()
  {
    b(t);
    return t;
  }
  
  public m w()
  {
    b(u);
    return u;
  }
  
  public void x()
  {
    h().f();
  }
  
  protected boolean y()
  {
    return false;
  }
  
  long z()
  {
    return (q().a() + e().c()) / 1000L / 60L / 60L / 24L;
  }
  
  private class a
    implements o.b
  {
    la.e a;
    List<Long> b;
    List<la.b> c;
    long d;
    
    private a() {}
    
    private long a(la.b paramb)
    {
      return c.longValue() / 1000L / 60L / 60L;
    }
    
    public void a(la.e parame)
    {
      zzx.zzz(parame);
      a = parame;
    }
    
    boolean a()
    {
      return (c == null) || (c.isEmpty());
    }
    
    public boolean a(long paramLong, la.b paramb)
    {
      zzx.zzz(paramb);
      if (c == null) {
        c = new ArrayList();
      }
      if (b == null) {
        b = new ArrayList();
      }
      if ((c.size() > 0) && (a((la.b)c.get(0)) != a(paramb))) {
        return false;
      }
      long l = d + paramb.g();
      if (l >= d().T()) {
        return false;
      }
      d = l;
      c.add(paramb);
      b.add(Long.valueOf(paramLong));
      return c.size() < d().U();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.measurement.internal.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */