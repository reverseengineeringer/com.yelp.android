package com.google.android.gms.ads.internal.request;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.ads.identifier.AdvertisingIdClient.Info;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.s;
import com.google.android.gms.ads.internal.util.client.a;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.internal.ah;
import com.google.android.gms.internal.ak;
import com.google.android.gms.internal.ao;
import com.google.android.gms.internal.bz;
import com.google.android.gms.internal.ca;
import com.google.android.gms.internal.ce;
import com.google.android.gms.internal.cy;
import com.google.android.gms.internal.db;
import com.google.android.gms.internal.db.b;
import com.google.android.gms.internal.db.d;
import com.google.android.gms.internal.dc;
import com.google.android.gms.internal.fv;
import com.google.android.gms.internal.fy;
import com.google.android.gms.internal.ge;
import com.google.android.gms.internal.gr.a;
import com.google.android.gms.internal.gy;
import com.google.android.gms.internal.gz;
import com.google.android.gms.internal.hd;
import com.google.android.gms.internal.hu.a;
import com.google.android.gms.internal.hu.c;
import com.google.android.gms.internal.ib;
import com.google.android.gms.internal.jt;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;
import org.json.JSONObject;

@fv
public class l
  extends gy
{
  static final long a = TimeUnit.SECONDS.toMillis(10L);
  private static final Object b = new Object();
  private static boolean c = false;
  private static db d = null;
  private static ca e = null;
  private static ce f = null;
  private static bz g = null;
  private final a.a h;
  private final AdRequestInfoParcel.a i;
  private final Object j = new Object();
  private final Context k;
  private db.d l;
  
  public l(Context paramContext, AdRequestInfoParcel.a parama, a.a arg3)
  {
    super(true);
    h = ???;
    k = paramContext;
    i = parama;
    synchronized (b)
    {
      if (!c)
      {
        f = new ce();
        e = new ca(paramContext.getApplicationContext(), j);
        g = new c();
        d = new db(k.getApplicationContext(), i.j, (String)ao.b.c(), new b(), new a());
        c = true;
      }
      return;
    }
  }
  
  private AdResponseParcel a(AdRequestInfoParcel paramAdRequestInfoParcel)
  {
    final Object localObject = UUID.randomUUID().toString();
    final JSONObject localJSONObject = a(paramAdRequestInfoParcel, (String)localObject);
    if (localJSONObject == null) {
      paramAdRequestInfoParcel = new AdResponseParcel(0);
    }
    for (;;)
    {
      return paramAdRequestInfoParcel;
      long l1 = s.i().b();
      Future localFuture = f.a((String)localObject);
      a.a.post(new Runnable()
      {
        public void run()
        {
          l.a(l.this, l.f().b());
          l.b(l.this).a(new hu.c()new hu.a
          {
            public void a(dc paramAnonymous2dc)
            {
              try
              {
                paramAnonymous2dc.a("AFMA_getAdapterLessMediationAd", a);
                return;
              }
              catch (Exception paramAnonymous2dc)
              {
                gz.b("Error requesting an ad url", paramAnonymous2dc);
                l.c().b(b);
              }
            }
          }, new hu.a()
          {
            public void a()
            {
              l.c().b(b);
            }
          });
        }
      });
      long l2 = a;
      long l3 = s.i().b();
      try
      {
        localObject = (JSONObject)localFuture.get(l2 - (l3 - l1), TimeUnit.MILLISECONDS);
        if (localObject == null) {
          return new AdResponseParcel(-1);
        }
      }
      catch (CancellationException paramAdRequestInfoParcel)
      {
        return new AdResponseParcel(-1);
      }
      catch (TimeoutException paramAdRequestInfoParcel)
      {
        return new AdResponseParcel(2);
      }
      catch (ExecutionException paramAdRequestInfoParcel)
      {
        return new AdResponseParcel(0);
        localObject = fy.a(k, paramAdRequestInfoParcel, ((JSONObject)localObject).toString());
        paramAdRequestInfoParcel = (AdRequestInfoParcel)localObject;
        if (e == -3) {
          continue;
        }
        paramAdRequestInfoParcel = (AdRequestInfoParcel)localObject;
        if (!TextUtils.isEmpty(c)) {
          continue;
        }
        return new AdResponseParcel(3);
      }
      catch (InterruptedException paramAdRequestInfoParcel)
      {
        for (;;) {}
      }
    }
  }
  
  private JSONObject a(AdRequestInfoParcel paramAdRequestInfoParcel, String paramString)
  {
    Bundle localBundle = c.c.getBundle("sdk_less_server_data");
    String str = c.c.getString("sdk_less_network_id");
    if (localBundle == null) {}
    JSONObject localJSONObject;
    do
    {
      return null;
      localJSONObject = fy.a(k, paramAdRequestInfoParcel, s.k().a(k), null, null, new ah((String)ao.b.c()), null, null, new ArrayList(), null);
    } while (localJSONObject == null);
    try
    {
      paramAdRequestInfoParcel = AdvertisingIdClient.getAdvertisingIdInfo(k);
      localHashMap = new HashMap();
      localHashMap.put("request_id", paramString);
      localHashMap.put("network_id", str);
      localHashMap.put("request_param", localJSONObject);
      localHashMap.put("data", localBundle);
      if (paramAdRequestInfoParcel != null)
      {
        localHashMap.put("adid", paramAdRequestInfoParcel.getId());
        if (!paramAdRequestInfoParcel.isLimitAdTrackingEnabled()) {
          break label211;
        }
        m = 1;
        localHashMap.put("lat", Integer.valueOf(m));
      }
    }
    catch (IOException paramAdRequestInfoParcel)
    {
      for (;;)
      {
        try
        {
          HashMap localHashMap;
          paramAdRequestInfoParcel = s.e().a(localHashMap);
          return paramAdRequestInfoParcel;
        }
        catch (JSONException paramAdRequestInfoParcel)
        {
          int m;
          return null;
        }
        paramAdRequestInfoParcel = paramAdRequestInfoParcel;
        gz.d("Cannot get advertising id info", paramAdRequestInfoParcel);
        paramAdRequestInfoParcel = null;
        continue;
        m = 0;
      }
    }
    catch (IllegalStateException paramAdRequestInfoParcel)
    {
      for (;;) {}
    }
    catch (GooglePlayServicesNotAvailableException paramAdRequestInfoParcel)
    {
      for (;;) {}
    }
    catch (GooglePlayServicesRepairableException paramAdRequestInfoParcel)
    {
      label211:
      for (;;) {}
    }
  }
  
  protected static void a(cy paramcy)
  {
    paramcy.a("/loadAd", f);
    paramcy.a("/fetchHttpRequest", e);
    paramcy.a("/invalidRequest", g);
  }
  
  protected static void b(cy paramcy)
  {
    paramcy.b("/loadAd", f);
    paramcy.b("/fetchHttpRequest", e);
    paramcy.b("/invalidRequest", g);
  }
  
  public void a()
  {
    gz.a("SdkLessAdLoaderBackgroundTask started.");
    final Object localObject = new AdRequestInfoParcel(i, null, -1L);
    AdResponseParcel localAdResponseParcel = a((AdRequestInfoParcel)localObject);
    long l1 = s.i().b();
    localObject = new gr.a((AdRequestInfoParcel)localObject, localAdResponseParcel, null, null, e, l1, n, null);
    a.a.post(new Runnable()
    {
      public void run()
      {
        l.a(l.this).a(localObject);
        if (l.b(l.this) != null)
        {
          l.b(l.this).a();
          l.a(l.this, null);
        }
      }
    });
  }
  
  public void b()
  {
    synchronized (j)
    {
      a.a.post(new Runnable()
      {
        public void run()
        {
          if (l.b(l.this) != null)
          {
            l.b(l.this).a();
            l.a(l.this, null);
          }
        }
      });
      return;
    }
  }
  
  public static class a
    implements db.b<cy>
  {
    public void a(cy paramcy)
    {
      l.b(paramcy);
    }
  }
  
  public static class b
    implements db.b<cy>
  {
    public void a(cy paramcy)
    {
      l.a(paramcy);
    }
  }
  
  public static class c
    implements bz
  {
    public void a(ib paramib, Map<String, String> paramMap)
    {
      paramib = (String)paramMap.get("request_id");
      paramMap = (String)paramMap.get("errors");
      gz.d("Invalid request: " + paramMap);
      l.c().b(paramib);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.request.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */