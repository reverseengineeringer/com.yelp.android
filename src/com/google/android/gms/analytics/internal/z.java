package com.google.android.gms.analytics.internal;

import android.content.Context;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.analytics.AnalyticsReceiver;
import com.google.android.gms.analytics.AnalyticsService;
import com.google.android.gms.analytics.CampaignTrackingReceiver;
import com.google.android.gms.analytics.CampaignTrackingService;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.ip;
import com.google.android.gms.internal.iq;
import com.google.android.gms.internal.jt;
import com.google.android.gms.internal.kp;
import com.google.android.gms.internal.kq;
import com.google.android.gms.measurement.d;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class z
  extends r
{
  private boolean a;
  private final x b;
  private final i c;
  private final h d;
  private final w e;
  private long f;
  private final af g;
  private final af h;
  private final k i;
  private long j;
  private boolean k;
  
  protected z(t paramt, u paramu)
  {
    super(paramt);
    zzx.zzz(paramu);
    f = Long.MIN_VALUE;
    d = paramu.k(paramt);
    b = paramu.m(paramt);
    c = paramu.n(paramt);
    e = paramu.o(paramt);
    i = new k(n());
    g = new af(paramt)
    {
      public void a()
      {
        z.a(z.this);
      }
    };
    h = new af(paramt)
    {
      public void a()
      {
        z.b(z.this);
      }
    };
  }
  
  private void K()
  {
    Context localContext = k().b();
    if (!AnalyticsReceiver.a(localContext)) {
      e("AnalyticsReceiver is not registered or is disabled. Register the receiver for reliable dispatching on non-Google Play devices. See http://goo.gl/8Rd3yj for instructions.");
    }
    do
    {
      while (!CampaignTrackingReceiver.a(localContext))
      {
        e("CampaignTrackingReceiver is not registered, not exported or is disabled. Installation campaign tracking is not possible. See http://goo.gl/8Rd3yj for instructions.");
        return;
        if (!AnalyticsService.a(localContext)) {
          f("AnalyticsService is not registered or is disabled. Analytics service at risk of not starting. See http://goo.gl/8Rd3yj for instructions.");
        }
      }
    } while (CampaignTrackingService.a(localContext));
    e("CampaignTrackingService is not registered or is disabled. Installation campaign tracking is not possible. See http://goo.gl/8Rd3yj for instructions.");
  }
  
  private void L()
  {
    a(new ai()
    {
      public void a(Throwable paramAnonymousThrowable)
      {
        H();
      }
    });
  }
  
  private void M()
  {
    try
    {
      b.i();
      H();
      h.a(q().C());
      return;
    }
    catch (SQLiteException localSQLiteException)
    {
      for (;;)
      {
        d("Failed to delete stale hits", localSQLiteException);
      }
    }
  }
  
  private boolean N()
  {
    if (k) {}
    while (((q().a()) && (!q().b())) || (I() <= 0L)) {
      return false;
    }
    return true;
  }
  
  private void O()
  {
    ah localah = u();
    if (!localah.b()) {}
    long l;
    do
    {
      do
      {
        return;
      } while (localah.c());
      l = G();
    } while ((l == 0L) || (Math.abs(n().a() - l) > q().k()));
    a("Dispatch alarm scheduled (ms)", Long.valueOf(q().j()));
    localah.d();
  }
  
  private void P()
  {
    O();
    long l2 = I();
    long l1 = w().d();
    if (l1 != 0L)
    {
      l1 = l2 - Math.abs(n().a() - l1);
      if (l1 <= 0L) {}
    }
    for (;;)
    {
      a("Dispatch scheduled (ms)", Long.valueOf(l1));
      if (!g.c()) {
        break;
      }
      l1 = Math.max(1L, l1 + g.b());
      g.b(l1);
      return;
      l1 = Math.min(q().h(), l2);
      continue;
      l1 = Math.min(q().h(), l2);
    }
    g.a(l1);
  }
  
  private void Q()
  {
    R();
    S();
  }
  
  private void R()
  {
    if (g.c()) {
      b("All hits dispatched or no network/service. Going to power save mode");
    }
    g.d();
  }
  
  private void S()
  {
    ah localah = u();
    if (localah.c()) {
      localah.e();
    }
  }
  
  private void a(v paramv, kq paramkq)
  {
    zzx.zzz(paramv);
    zzx.zzz(paramkq);
    Object localObject1 = new com.google.android.gms.analytics.h(k());
    ((com.google.android.gms.analytics.h)localObject1).a(paramv.c());
    ((com.google.android.gms.analytics.h)localObject1).c(paramv.d());
    localObject1 = ((com.google.android.gms.analytics.h)localObject1).l();
    iq localiq = (iq)((d)localObject1).b(iq.class);
    localiq.a("data");
    localiq.b(true);
    ((d)localObject1).a(paramkq);
    ip localip = (ip)((d)localObject1).b(ip.class);
    kp localkp = (kp)((d)localObject1).b(kp.class);
    Iterator localIterator = paramv.f().entrySet().iterator();
    while (localIterator.hasNext())
    {
      Object localObject2 = (Map.Entry)localIterator.next();
      String str = (String)((Map.Entry)localObject2).getKey();
      localObject2 = (String)((Map.Entry)localObject2).getValue();
      if ("an".equals(str)) {
        localkp.a((String)localObject2);
      } else if ("av".equals(str)) {
        localkp.b((String)localObject2);
      } else if ("aid".equals(str)) {
        localkp.c((String)localObject2);
      } else if ("aiid".equals(str)) {
        localkp.d((String)localObject2);
      } else if ("uid".equals(str)) {
        localiq.c((String)localObject2);
      } else {
        localip.a(str, (String)localObject2);
      }
    }
    b("Sending installation campaign to", paramv.c(), paramkq);
    ((d)localObject1).a(w().b());
    ((d)localObject1).e();
  }
  
  private boolean g(String paramString)
  {
    return o().checkCallingOrSelfPermission(paramString) == 0;
  }
  
  public void F()
  {
    com.google.android.gms.measurement.h.d();
    D();
    c("Sync dispatching local hits");
    long l = j;
    if (!q().a()) {
      g();
    }
    try
    {
      while (j()) {}
      w().e();
      H();
      if (j != l) {
        d.c();
      }
      return;
    }
    catch (Throwable localThrowable)
    {
      e("Sync local dispatch failed", localThrowable);
      H();
    }
  }
  
  public long G()
  {
    com.google.android.gms.measurement.h.d();
    D();
    try
    {
      long l = b.j();
      return l;
    }
    catch (SQLiteException localSQLiteException)
    {
      e("Failed to get min/max hit times from local store", localSQLiteException);
    }
    return 0L;
  }
  
  public void H()
  {
    k().s();
    D();
    if (!N())
    {
      d.b();
      Q();
      return;
    }
    if (b.h())
    {
      d.b();
      Q();
      return;
    }
    if (!((Boolean)ak.J.a()).booleanValue()) {
      d.a();
    }
    for (boolean bool = d.e(); bool; bool = true)
    {
      P();
      return;
    }
    Q();
    O();
  }
  
  public long I()
  {
    long l;
    if (f != Long.MIN_VALUE) {
      l = f;
    }
    do
    {
      return l;
      l = q().i();
    } while (!v().f());
    return v().g() * 1000L;
  }
  
  public void J()
  {
    D();
    m();
    k = true;
    e.e();
    H();
  }
  
  public long a(v paramv, boolean paramBoolean)
  {
    zzx.zzz(paramv);
    D();
    m();
    long l;
    for (;;)
    {
      try
      {
        b.b();
        b.a(paramv.a(), paramv.b());
        l = b.a(paramv.a(), paramv.b(), paramv.c());
        if (!paramBoolean)
        {
          paramv.a(l);
          b.a(paramv);
          b.c();
        }
      }
      catch (SQLiteException paramv)
      {
        paramv = paramv;
        e("Failed to update Analytics property", paramv);
        try
        {
          b.d();
          return -1L;
        }
        catch (SQLiteException paramv)
        {
          e("Failed to end transaction", paramv);
          return -1L;
        }
      }
      finally {}
      try
      {
        b.d();
        return l;
      }
      catch (SQLiteException paramv)
      {
        e("Failed to end transaction", paramv);
        return l;
      }
      paramv.a(1L + l);
    }
    try
    {
      b.d();
      throw paramv;
    }
    catch (SQLiteException localSQLiteException)
    {
      for (;;)
      {
        e("Failed to end transaction", localSQLiteException);
      }
    }
  }
  
  protected void a()
  {
    b.E();
    c.E();
    e.E();
  }
  
  public void a(long paramLong)
  {
    com.google.android.gms.measurement.h.d();
    D();
    long l = paramLong;
    if (paramLong < 0L) {
      l = 0L;
    }
    f = l;
    H();
  }
  
  public void a(ai paramai)
  {
    a(paramai, j);
  }
  
  public void a(final ai paramai, final long paramLong)
  {
    com.google.android.gms.measurement.h.d();
    D();
    long l1 = -1L;
    long l2 = w().d();
    if (l2 != 0L) {
      l1 = Math.abs(n().a() - l2);
    }
    b("Dispatching local hits. Elapsed time since last dispatch (ms)", Long.valueOf(l1));
    if (!q().a()) {
      g();
    }
    try
    {
      if (j())
      {
        r().a(new Runnable()
        {
          public void run()
          {
            a(paramai, paramLong);
          }
        });
        return;
      }
      w().e();
      H();
      if (paramai != null) {
        paramai.a(null);
      }
      if (j != paramLong)
      {
        d.c();
        return;
      }
    }
    catch (Throwable localThrowable)
    {
      e("Local dispatch failed", localThrowable);
      w().e();
      H();
      if (paramai != null) {
        paramai.a(localThrowable);
      }
    }
  }
  
  public void a(c paramc)
  {
    zzx.zzz(paramc);
    com.google.android.gms.measurement.h.d();
    D();
    if (k) {
      c("Hit delivery not possible. Missing network permissions. See http://goo.gl/8Rd3yj for instructions");
    }
    for (;;)
    {
      paramc = b(paramc);
      g();
      if (!e.a(paramc)) {
        break;
      }
      c("Hit sent to the device AnalyticsService for delivery");
      return;
      a("Delivering hit", paramc);
    }
    if (q().a())
    {
      p().a(paramc, "Service unavailable on package side");
      return;
    }
    try
    {
      b.a(paramc);
      H();
      return;
    }
    catch (SQLiteException localSQLiteException)
    {
      e("Delivery failed to save hit to a database", localSQLiteException);
      p().a(paramc, "deliver: failed to insert hit to database");
    }
  }
  
  protected void a(v paramv)
  {
    m();
    b("Sending first hit to property", paramv.c());
    if (w().c().a(q().F())) {}
    do
    {
      return;
      localObject = w().f();
    } while (TextUtils.isEmpty((CharSequence)localObject));
    Object localObject = n.a(p(), (String)localObject);
    b("Found relevant installation campaign", localObject);
    a(paramv, (kq)localObject);
  }
  
  public void a(String paramString)
  {
    zzx.zzcM(paramString);
    m();
    l();
    kq localkq = n.a(p(), paramString);
    if (localkq == null) {
      d("Parsing failed. Ignoring invalid campaign data", paramString);
    }
    for (;;)
    {
      return;
      String str = w().f();
      if (paramString.equals(str))
      {
        e("Ignoring duplicate install campaign");
        return;
      }
      if (!TextUtils.isEmpty(str))
      {
        d("Ignoring multiple install campaigns. original, new", str, paramString);
        return;
      }
      w().a(paramString);
      if (w().c().a(q().F()))
      {
        d("Campaign received too late, ignoring", localkq);
        return;
      }
      b("Received installation campaign", localkq);
      paramString = b.d(0L).iterator();
      while (paramString.hasNext()) {
        a((v)paramString.next(), localkq);
      }
    }
  }
  
  public void a(boolean paramBoolean)
  {
    H();
  }
  
  c b(c paramc)
  {
    if (!TextUtils.isEmpty(paramc.h())) {}
    do
    {
      return paramc;
      localObject2 = w().g().a();
    } while (localObject2 == null);
    Object localObject1 = (Long)second;
    Object localObject2 = (String)first;
    localObject1 = localObject1 + ":" + (String)localObject2;
    localObject2 = new HashMap(paramc.b());
    ((Map)localObject2).put("_m", localObject1);
    return c.a(this, paramc, (Map)localObject2);
  }
  
  void b()
  {
    D();
    if (!a) {}
    for (boolean bool = true;; bool = false)
    {
      zzx.zza(bool, "Analytics backend already started");
      a = true;
      if (!q().a()) {
        K();
      }
      r().a(new Runnable()
      {
        public void run()
        {
          c();
        }
      });
      return;
    }
  }
  
  protected void c()
  {
    D();
    w().b();
    if (!g("android.permission.ACCESS_NETWORK_STATE"))
    {
      f("Missing required android.permission.ACCESS_NETWORK_STATE. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions");
      J();
    }
    if (!g("android.permission.INTERNET"))
    {
      f("Missing required android.permission.INTERNET. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions");
      J();
    }
    if (AnalyticsService.a(o())) {
      b("AnalyticsService registered in the app manifest and enabled");
    }
    for (;;)
    {
      if ((!k) && (!q().a()) && (!b.h())) {
        g();
      }
      H();
      return;
      if (q().a()) {
        f("Device AnalyticsService not registered! Hits will not be delivered reliably.");
      } else {
        e("AnalyticsService not registered in the app manifest. Hits might not be delivered reliably. See http://goo.gl/8Rd3yj for instructions.");
      }
    }
  }
  
  void d()
  {
    m();
    j = n().a();
  }
  
  protected void e()
  {
    m();
    if (!q().a()) {
      i();
    }
  }
  
  public void f()
  {
    com.google.android.gms.measurement.h.d();
    D();
    b("Service disconnected");
  }
  
  protected void g()
  {
    if (k) {}
    do
    {
      long l;
      do
      {
        do
        {
          return;
        } while ((!q().c()) || (e.b()));
        l = q().x();
      } while (!i.a(l));
      i.a();
      b("Connecting to service");
    } while (!e.d());
    b("Connected to service");
    i.b();
    e();
  }
  
  public void h()
  {
    com.google.android.gms.measurement.h.d();
    D();
    if (!q().a()) {
      b("Delete all hits from local store");
    }
    try
    {
      b.e();
      b.f();
      H();
      g();
      if (e.c()) {
        b("Device service unavailable. Can't clear hits stored on the device service.");
      }
      return;
    }
    catch (SQLiteException localSQLiteException)
    {
      for (;;)
      {
        d("Failed to delete hits from store", localSQLiteException);
      }
    }
  }
  
  public void i()
  {
    com.google.android.gms.measurement.h.d();
    D();
    l();
    if (!q().c()) {
      e("Service client disabled. Can't dispatch local hits to device AnalyticsService");
    }
    if (!e.b()) {
      b("Service not connected");
    }
    while (b.h()) {
      return;
    }
    b("Dispatching local hits to device AnalyticsService");
    for (;;)
    {
      try
      {
        List localList = b.b(q().l());
        if (!localList.isEmpty()) {
          break label126;
        }
        H();
        return;
      }
      catch (SQLiteException localSQLiteException1)
      {
        e("Failed to read hits from store", localSQLiteException1);
        Q();
        return;
      }
      label107:
      Object localObject;
      localSQLiteException1.remove(localObject);
      try
      {
        b.c(((c)localObject).c());
        label126:
        if (!localSQLiteException1.isEmpty())
        {
          localObject = (c)localSQLiteException1.get(0);
          if (e.a((c)localObject)) {
            break label107;
          }
          H();
          return;
        }
      }
      catch (SQLiteException localSQLiteException2)
      {
        e("Failed to remove hit that was send for delivery", localSQLiteException2);
        Q();
      }
    }
  }
  
  protected boolean j()
  {
    int n = 1;
    com.google.android.gms.measurement.h.d();
    D();
    b("Dispatching a batch of local hits");
    int m;
    if ((!e.b()) && (!q().a()))
    {
      m = 1;
      if (c.b()) {
        break label70;
      }
    }
    for (;;)
    {
      if ((m == 0) || (n == 0)) {
        break label75;
      }
      b("No network or service available. Will retry later");
      return false;
      m = 0;
      break;
      label70:
      n = 0;
    }
    label75:
    long l3 = Math.max(q().l(), q().m());
    ArrayList localArrayList = new ArrayList();
    l1 = 0L;
    for (;;)
    {
      try
      {
        b.b();
        localArrayList.clear();
        try
        {
          localList = b.b(l3);
          if (localList.isEmpty())
          {
            b("Store is empty, nothing to dispatch");
            Q();
            try
            {
              b.c();
              b.d();
              return false;
            }
            catch (SQLiteException localSQLiteException1)
            {
              e("Failed to commit local dispatch transaction", localSQLiteException1);
              Q();
              return false;
            }
          }
          a("Hits loaded from store. count", Integer.valueOf(localList.size()));
          localObject2 = localList.iterator();
          if (((Iterator)localObject2).hasNext())
          {
            if (((c)((Iterator)localObject2).next()).c() != l1) {
              continue;
            }
            d("Database contains successfully uploaded hit", Long.valueOf(l1), Integer.valueOf(localList.size()));
            Q();
            try
            {
              b.c();
              b.d();
              return false;
            }
            catch (SQLiteException localSQLiteException2)
            {
              e("Failed to commit local dispatch transaction", localSQLiteException2);
              Q();
              return false;
            }
          }
          l2 = l1;
        }
        catch (SQLiteException localSQLiteException3)
        {
          d("Failed to read hits from persisted store", localSQLiteException3);
          Q();
          try
          {
            b.c();
            b.d();
            return false;
          }
          catch (SQLiteException localSQLiteException4)
          {
            e("Failed to commit local dispatch transaction", localSQLiteException4);
            Q();
            return false;
          }
          l2 = l1;
          if (!e.b()) {
            continue;
          }
        }
        if (q().a()) {
          continue;
        }
        b("Service connected, sending hits to the service");
        l2 = l1;
        if (localList.isEmpty()) {
          continue;
        }
        localObject2 = (c)localList.get(0);
        if (e.a((c)localObject2)) {
          continue;
        }
      }
      finally
      {
        long l2;
        try
        {
          List localList;
          Object localObject2;
          Iterator localIterator;
          b.c();
          b.d();
          throw ((Throwable)localObject1);
        }
        catch (SQLiteException localSQLiteException11)
        {
          e("Failed to commit local dispatch transaction", localSQLiteException11);
          Q();
          return false;
        }
        l1 = l2;
        continue;
      }
      l2 = l1;
      if (c.b())
      {
        localObject2 = c.a(localList);
        localIterator = ((List)localObject2).iterator();
        if (localIterator.hasNext())
        {
          l1 = Math.max(l1, ((Long)localIterator.next()).longValue());
          continue;
          l1 = Math.max(l1, ((c)localObject2).c());
          localList.remove(localObject2);
          b("Hit sent do device AnalyticsService for delivery", localObject2);
          try
          {
            b.c(((c)localObject2).c());
            localSQLiteException4.add(Long.valueOf(((c)localObject2).c()));
          }
          catch (SQLiteException localSQLiteException5)
          {
            e("Failed to remove hit that was send for delivery", localSQLiteException5);
            Q();
            try
            {
              b.c();
              b.d();
              return false;
            }
            catch (SQLiteException localSQLiteException6)
            {
              e("Failed to commit local dispatch transaction", localSQLiteException6);
              Q();
              return false;
            }
          }
        }
        localList.removeAll((Collection)localObject2);
      }
      try
      {
        b.a((List)localObject2);
        localSQLiteException6.addAll((Collection)localObject2);
        l2 = l1;
        boolean bool = localSQLiteException6.isEmpty();
        if (bool) {
          try
          {
            b.c();
            b.d();
            return false;
          }
          catch (SQLiteException localSQLiteException7)
          {
            e("Failed to commit local dispatch transaction", localSQLiteException7);
            Q();
            return false;
          }
        }
      }
      catch (SQLiteException localSQLiteException8)
      {
        e("Failed to remove successfully uploaded hits", localSQLiteException8);
        Q();
        try
        {
          b.c();
          b.d();
          return false;
        }
        catch (SQLiteException localSQLiteException9)
        {
          e("Failed to commit local dispatch transaction", localSQLiteException9);
          Q();
          return false;
        }
        try
        {
          b.c();
          b.d();
          l1 = l2;
        }
        catch (SQLiteException localSQLiteException10)
        {
          e("Failed to commit local dispatch transaction", localSQLiteException10);
          Q();
          return false;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */