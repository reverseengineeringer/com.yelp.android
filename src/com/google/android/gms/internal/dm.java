package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.ads.mediation.AdUrlAdapter;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.formats.b;
import com.google.android.gms.ads.formats.b.a;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.dynamic.d;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

@fv
public final class dm
  implements dn.a
{
  private final String a;
  private final ds b;
  private final long c;
  private final dj d;
  private final di e;
  private final AdRequestParcel f;
  private final AdSizeParcel g;
  private final Context h;
  private final Object i = new Object();
  private final VersionInfoParcel j;
  private final boolean k;
  private final NativeAdOptionsParcel l;
  private final List<String> m;
  private final boolean n;
  private dt o;
  private int p = -2;
  private dw q;
  
  public dm(Context paramContext, String paramString, ds paramds, dj paramdj, di paramdi, AdRequestParcel paramAdRequestParcel, AdSizeParcel paramAdSizeParcel, VersionInfoParcel paramVersionInfoParcel, boolean paramBoolean1, boolean paramBoolean2, NativeAdOptionsParcel paramNativeAdOptionsParcel, List<String> paramList)
  {
    h = paramContext;
    b = paramds;
    e = paramdi;
    if ("com.google.ads.mediation.customevent.CustomEventAdapter".equals(paramString))
    {
      a = b();
      d = paramdj;
      if (b == -1L) {
        break label136;
      }
    }
    label136:
    for (long l1 = b;; l1 = 10000L)
    {
      c = l1;
      f = paramAdRequestParcel;
      g = paramAdSizeParcel;
      j = paramVersionInfoParcel;
      k = paramBoolean1;
      n = paramBoolean2;
      l = paramNativeAdOptionsParcel;
      m = paramList;
      return;
      a = paramString;
      break;
    }
  }
  
  private String a(String paramString)
  {
    if ((paramString == null) || (!e()) || (b(2))) {
      return paramString;
    }
    try
    {
      Object localObject = new JSONObject(paramString);
      ((JSONObject)localObject).remove("cpm_floor_cents");
      localObject = ((JSONObject)localObject).toString();
      return (String)localObject;
    }
    catch (JSONException localJSONException)
    {
      gz.d("Could not remove field. Returning the original value");
    }
    return paramString;
  }
  
  private void a(long paramLong1, long paramLong2, long paramLong3, long paramLong4)
  {
    for (;;)
    {
      if (p != -2) {
        return;
      }
      b(paramLong1, paramLong2, paramLong3, paramLong4);
    }
  }
  
  private void a(dl paramdl)
  {
    if ("com.google.ads.mediation.AdUrlAdapter".equals(a))
    {
      Bundle localBundle = f.m.getBundle(a);
      localObject = localBundle;
      if (localBundle == null) {
        localObject = new Bundle();
      }
      ((Bundle)localObject).putString("sdk_less_network_id", e.b);
      f.m.putBundle(a, (Bundle)localObject);
    }
    Object localObject = a(e.h);
    try
    {
      if (j.d < 4100000)
      {
        if (g.e)
        {
          o.a(d.a(h), f, (String)localObject, paramdl);
          return;
        }
        o.a(d.a(h), g, f, (String)localObject, paramdl);
        return;
      }
    }
    catch (RemoteException paramdl)
    {
      gz.d("Could not request ad from mediation adapter.", paramdl);
      a(5);
      return;
    }
    if (k)
    {
      o.a(d.a(h), f, (String)localObject, e.a, paramdl, l, m);
      return;
    }
    if (g.e)
    {
      o.a(d.a(h), f, (String)localObject, e.a, paramdl);
      return;
    }
    if (n)
    {
      if (e.k != null)
      {
        o.a(d.a(h), f, (String)localObject, e.a, paramdl, new NativeAdOptionsParcel(b(e.o)), e.n);
        return;
      }
      o.a(d.a(h), g, f, (String)localObject, e.a, paramdl);
      return;
    }
    o.a(d.a(h), g, f, (String)localObject, e.a, paramdl);
  }
  
  private static b b(String paramString)
  {
    b.a locala = new b.a();
    if (paramString == null) {
      return locala.a();
    }
    try
    {
      paramString = new JSONObject(paramString);
      locala.b(paramString.optBoolean("multiple_images", false));
      locala.a(paramString.optBoolean("only_urls", false));
      locala.a(c(paramString.optString("native_image_orientation", "any")));
      return locala.a();
    }
    catch (JSONException paramString)
    {
      for (;;)
      {
        gz.d("Exception occurred when creating native ad options", paramString);
      }
    }
  }
  
  private String b()
  {
    try
    {
      if (!TextUtils.isEmpty(e.e))
      {
        if (b.b(e.e)) {
          return "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter";
        }
        return "com.google.ads.mediation.customevent.CustomEventAdapter";
      }
    }
    catch (RemoteException localRemoteException)
    {
      gz.d("Fail to determine the custom event's version, assuming the old one.");
    }
    return "com.google.ads.mediation.customevent.CustomEventAdapter";
  }
  
  private void b(long paramLong1, long paramLong2, long paramLong3, long paramLong4)
  {
    long l1 = SystemClock.elapsedRealtime();
    paramLong1 = paramLong2 - (l1 - paramLong1);
    paramLong2 = paramLong4 - (l1 - paramLong3);
    if ((paramLong1 <= 0L) || (paramLong2 <= 0L))
    {
      gz.c("Timed out waiting for adapter.");
      p = 3;
      return;
    }
    try
    {
      i.wait(Math.min(paramLong1, paramLong2));
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      p = -1;
    }
  }
  
  private boolean b(int paramInt)
  {
    boolean bool = false;
    for (;;)
    {
      try
      {
        Bundle localBundle;
        if (k)
        {
          localBundle = o.l();
          if (localBundle != null)
          {
            if ((localBundle.getInt("capabilities", 0) & paramInt) == paramInt) {
              bool = true;
            }
          }
          else {
            return bool;
          }
        }
        else
        {
          if (g.e)
          {
            localBundle = o.k();
            continue;
          }
          localBundle = o.j();
          continue;
        }
        bool = false;
      }
      catch (RemoteException localRemoteException)
      {
        gz.d("Could not get adapter info. Returning false");
        return false;
      }
    }
  }
  
  private static int c(String paramString)
  {
    if ("landscape".equals(paramString)) {
      return 2;
    }
    if ("portrait".equals(paramString)) {
      return 1;
    }
    return 0;
  }
  
  private dw c()
  {
    if ((p != 0) || (!e())) {
      return null;
    }
    try
    {
      if ((b(4)) && (q != null) && (q.a() != 0))
      {
        dw localdw = q;
        return localdw;
      }
    }
    catch (RemoteException localRemoteException)
    {
      gz.d("Could not get cpm value from MediationResponseMetadata");
    }
    return c(f());
  }
  
  private static dw c(int paramInt)
  {
    new dw.a()
    {
      public int a()
        throws RemoteException
      {
        return a;
      }
    };
  }
  
  private dt d()
  {
    gz.c("Instantiating mediation adapter: " + a);
    if ((((Boolean)ao.av.c()).booleanValue()) && ("com.google.ads.mediation.admob.AdMobAdapter".equals(a))) {
      return new ea(new AdMobAdapter());
    }
    if ((((Boolean)ao.aw.c()).booleanValue()) && ("com.google.ads.mediation.AdUrlAdapter".equals(a))) {
      return new ea(new AdUrlAdapter());
    }
    try
    {
      dt localdt = b.a(a);
      return localdt;
    }
    catch (RemoteException localRemoteException)
    {
      gz.a("Could not instantiate mediation adapter: " + a, localRemoteException);
    }
    return null;
  }
  
  private boolean e()
  {
    return d.j != -1;
  }
  
  private int f()
  {
    int i2;
    if (e.h == null)
    {
      i2 = 0;
      return i2;
    }
    try
    {
      JSONObject localJSONObject = new JSONObject(e.h);
      if ("com.google.ads.mediation.admob.AdMobAdapter".equals(a)) {
        return localJSONObject.optInt("cpm_cents", 0);
      }
    }
    catch (JSONException localJSONException)
    {
      gz.d("Could not convert to json. Returning 0");
      return 0;
    }
    if (b(2)) {}
    for (int i1 = localJSONException.optInt("cpm_floor_cents", 0);; i1 = 0)
    {
      i2 = i1;
      if (i1 != 0) {
        break;
      }
      return localJSONException.optInt("penalized_average_cpm_cents", 0);
    }
  }
  
  public dn a(long paramLong1, long paramLong2)
  {
    synchronized (i)
    {
      long l1 = SystemClock.elapsedRealtime();
      final Object localObject2 = new dl();
      hd.a.post(new Runnable()
      {
        public void run()
        {
          synchronized (dm.a(dm.this))
          {
            if (dm.b(dm.this) != -2) {
              return;
            }
            dm.a(dm.this, dm.c(dm.this));
            if (dm.d(dm.this) == null)
            {
              a(4);
              return;
            }
          }
          if ((dm.e(dm.this)) && (!dm.a(dm.this, 1)))
          {
            gz.d("Ignoring adapter " + dm.f(dm.this) + " as delayed" + " impression is not supported");
            a(2);
            return;
          }
          localObject2.a(dm.this);
          dm.a(dm.this, localObject2);
        }
      });
      a(l1, c, paramLong1, paramLong2);
      localObject2 = new dn(e, o, a, (dl)localObject2, p, c());
      return (dn)localObject2;
    }
  }
  
  public void a()
  {
    synchronized (i)
    {
      try
      {
        if (o != null) {
          o.c();
        }
        p = -1;
        i.notify();
        return;
      }
      catch (RemoteException localRemoteException)
      {
        for (;;)
        {
          gz.d("Could not destroy mediation adapter.", localRemoteException);
        }
      }
    }
  }
  
  public void a(int paramInt)
  {
    synchronized (i)
    {
      p = paramInt;
      i.notify();
      return;
    }
  }
  
  public void a(int paramInt, dw paramdw)
  {
    synchronized (i)
    {
      p = paramInt;
      q = paramdw;
      i.notify();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.dm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */