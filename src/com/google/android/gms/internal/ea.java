package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.dynamic.d;
import com.yelp.android.bc.e;
import com.yelp.android.bc.i;
import com.yelp.android.bc.j;
import com.yelp.android.bc.k;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.json.JSONObject;

@fv
public final class ea
  extends dt.a
{
  private final com.yelp.android.bc.b a;
  private eb b;
  
  public ea(com.yelp.android.bc.b paramb)
  {
    a = paramb;
  }
  
  private Bundle a(String paramString1, int paramInt, String paramString2)
    throws RemoteException
  {
    com.google.android.gms.ads.internal.util.client.b.d("Server parameters: " + paramString1);
    Bundle localBundle;
    try
    {
      localBundle = new Bundle();
      if (paramString1 != null)
      {
        paramString1 = new JSONObject(paramString1);
        localBundle = new Bundle();
        Iterator localIterator = paramString1.keys();
        while (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          localBundle.putString(str, paramString1.getString(str));
        }
      }
      if (!(a instanceof AdMobAdapter)) {
        break label138;
      }
    }
    catch (Throwable paramString1)
    {
      com.google.android.gms.ads.internal.util.client.b.d("Could not get Server Parameters Bundle.", paramString1);
      throw new RemoteException();
    }
    localBundle.putString("adJson", paramString2);
    localBundle.putInt("tagForChildDirectedTreatment", paramInt);
    label138:
    return localBundle;
  }
  
  public com.google.android.gms.dynamic.c a()
    throws RemoteException
  {
    if (!(a instanceof com.yelp.android.bc.c))
    {
      com.google.android.gms.ads.internal.util.client.b.d("MediationAdapter is not a MediationBannerAdapter: " + a.getClass().getCanonicalName());
      throw new RemoteException();
    }
    try
    {
      com.google.android.gms.dynamic.c localc = d.a(((com.yelp.android.bc.c)a).d());
      return localc;
    }
    catch (Throwable localThrowable)
    {
      com.google.android.gms.ads.internal.util.client.b.d("Could not get banner view from adapter.", localThrowable);
      throw new RemoteException();
    }
  }
  
  public void a(AdRequestParcel paramAdRequestParcel, String paramString)
    throws RemoteException
  {
    a(paramAdRequestParcel, paramString, null);
  }
  
  public void a(AdRequestParcel paramAdRequestParcel, String paramString1, String paramString2)
    throws RemoteException
  {
    if (!(a instanceof com.yelp.android.bf.a))
    {
      com.google.android.gms.ads.internal.util.client.b.d("MediationAdapter is not a MediationRewardedVideoAdAdapter: " + a.getClass().getCanonicalName());
      throw new RemoteException();
    }
    com.google.android.gms.ads.internal.util.client.b.a("Requesting rewarded video ad from adapter.");
    for (;;)
    {
      try
      {
        com.yelp.android.bf.a locala = (com.yelp.android.bf.a)a;
        if (e == null) {
          break label213;
        }
        localObject1 = new HashSet(e);
        Object localObject2;
        if (b == -1L)
        {
          localObject2 = null;
          localObject2 = new dz((Date)localObject2, d, (Set)localObject1, k, f, g, r);
          if (m != null)
          {
            localObject1 = m.getBundle(locala.getClass().getName());
            locala.a((com.yelp.android.bc.a)localObject2, a(paramString1, g, paramString2), (Bundle)localObject1);
          }
        }
        else
        {
          localObject2 = new Date(b);
          continue;
        }
        localObject1 = null;
      }
      catch (Throwable paramAdRequestParcel)
      {
        com.google.android.gms.ads.internal.util.client.b.d("Could not load rewarded video ad from adapter.", paramAdRequestParcel);
        throw new RemoteException();
      }
      continue;
      label213:
      Object localObject1 = null;
    }
  }
  
  public void a(com.google.android.gms.dynamic.c paramc, AdRequestParcel paramAdRequestParcel, String paramString1, com.google.android.gms.ads.internal.reward.mediation.client.a parama, String paramString2)
    throws RemoteException
  {
    if (!(a instanceof com.yelp.android.bf.a))
    {
      com.google.android.gms.ads.internal.util.client.b.d("MediationAdapter is not a MediationRewardedVideoAdAdapter: " + a.getClass().getCanonicalName());
      throw new RemoteException();
    }
    com.google.android.gms.ads.internal.util.client.b.a("Initialize rewarded video adapter.");
    for (;;)
    {
      try
      {
        com.yelp.android.bf.a locala = (com.yelp.android.bf.a)a;
        if (e == null) {
          break label231;
        }
        localObject1 = new HashSet(e);
        Object localObject2;
        if (b == -1L)
        {
          localObject2 = null;
          localObject2 = new dz((Date)localObject2, d, (Set)localObject1, k, f, g, r);
          if (m != null)
          {
            localObject1 = m.getBundle(locala.getClass().getName());
            locala.a((Context)d.a(paramc), (com.yelp.android.bc.a)localObject2, paramString1, new com.google.android.gms.ads.internal.reward.mediation.client.b(parama), a(paramString2, g, null), (Bundle)localObject1);
          }
        }
        else
        {
          localObject2 = new Date(b);
          continue;
        }
        localObject1 = null;
      }
      catch (Throwable paramc)
      {
        com.google.android.gms.ads.internal.util.client.b.d("Could not initialize rewarded video adapter.", paramc);
        throw new RemoteException();
      }
      continue;
      label231:
      Object localObject1 = null;
    }
  }
  
  public void a(com.google.android.gms.dynamic.c paramc, AdRequestParcel paramAdRequestParcel, String paramString, du paramdu)
    throws RemoteException
  {
    a(paramc, paramAdRequestParcel, paramString, null, paramdu);
  }
  
  public void a(com.google.android.gms.dynamic.c paramc, AdRequestParcel paramAdRequestParcel, String paramString1, String paramString2, du paramdu)
    throws RemoteException
  {
    if (!(a instanceof e))
    {
      com.google.android.gms.ads.internal.util.client.b.d("MediationAdapter is not a MediationInterstitialAdapter: " + a.getClass().getCanonicalName());
      throw new RemoteException();
    }
    com.google.android.gms.ads.internal.util.client.b.a("Requesting interstitial ad from adapter.");
    for (;;)
    {
      try
      {
        e locale = (e)a;
        if (e == null) {
          break label230;
        }
        localObject1 = new HashSet(e);
        Object localObject2;
        if (b == -1L)
        {
          localObject2 = null;
          localObject2 = new dz((Date)localObject2, d, (Set)localObject1, k, f, g, r);
          if (m != null)
          {
            localObject1 = m.getBundle(locale.getClass().getName());
            locale.a((Context)d.a(paramc), new eb(paramdu), a(paramString1, g, paramString2), (com.yelp.android.bc.a)localObject2, (Bundle)localObject1);
          }
        }
        else
        {
          localObject2 = new Date(b);
          continue;
        }
        localObject1 = null;
      }
      catch (Throwable paramc)
      {
        com.google.android.gms.ads.internal.util.client.b.d("Could not request interstitial ad from adapter.", paramc);
        throw new RemoteException();
      }
      continue;
      label230:
      Object localObject1 = null;
    }
  }
  
  public void a(com.google.android.gms.dynamic.c paramc, AdRequestParcel paramAdRequestParcel, String paramString1, String paramString2, du paramdu, NativeAdOptionsParcel paramNativeAdOptionsParcel, List<String> paramList)
    throws RemoteException
  {
    if (!(a instanceof com.yelp.android.bc.g))
    {
      com.google.android.gms.ads.internal.util.client.b.d("MediationAdapter is not a MediationNativeAdapter: " + a.getClass().getCanonicalName());
      throw new RemoteException();
    }
    for (;;)
    {
      try
      {
        com.yelp.android.bc.g localg = (com.yelp.android.bc.g)a;
        if (e == null) {
          break label237;
        }
        localHashSet = new HashSet(e);
        Date localDate;
        if (b == -1L)
        {
          localDate = null;
          paramList = new ee(localDate, d, localHashSet, k, f, g, paramNativeAdOptionsParcel, paramList, r);
          if (m != null)
          {
            paramNativeAdOptionsParcel = m.getBundle(localg.getClass().getName());
            b = new eb(paramdu);
            localg.a((Context)d.a(paramc), b, a(paramString1, g, paramString2), paramList, paramNativeAdOptionsParcel);
          }
        }
        else
        {
          localDate = new Date(b);
          continue;
        }
        paramNativeAdOptionsParcel = null;
      }
      catch (Throwable paramc)
      {
        com.google.android.gms.ads.internal.util.client.b.d("Could not request native ad from adapter.", paramc);
        throw new RemoteException();
      }
      continue;
      label237:
      HashSet localHashSet = null;
    }
  }
  
  public void a(com.google.android.gms.dynamic.c paramc, AdSizeParcel paramAdSizeParcel, AdRequestParcel paramAdRequestParcel, String paramString, du paramdu)
    throws RemoteException
  {
    a(paramc, paramAdSizeParcel, paramAdRequestParcel, paramString, null, paramdu);
  }
  
  public void a(com.google.android.gms.dynamic.c paramc, AdSizeParcel paramAdSizeParcel, AdRequestParcel paramAdRequestParcel, String paramString1, String paramString2, du paramdu)
    throws RemoteException
  {
    if (!(a instanceof com.yelp.android.bc.c))
    {
      com.google.android.gms.ads.internal.util.client.b.d("MediationAdapter is not a MediationBannerAdapter: " + a.getClass().getCanonicalName());
      throw new RemoteException();
    }
    com.google.android.gms.ads.internal.util.client.b.a("Requesting banner ad from adapter.");
    for (;;)
    {
      try
      {
        com.yelp.android.bc.c localc = (com.yelp.android.bc.c)a;
        if (e == null) {
          break label247;
        }
        localObject1 = new HashSet(e);
        Object localObject2;
        if (b == -1L)
        {
          localObject2 = null;
          localObject2 = new dz((Date)localObject2, d, (Set)localObject1, k, f, g, r);
          if (m != null)
          {
            localObject1 = m.getBundle(localc.getClass().getName());
            localc.a((Context)d.a(paramc), new eb(paramdu), a(paramString1, g, paramString2), com.google.android.gms.ads.g.a(f, c, b), (com.yelp.android.bc.a)localObject2, (Bundle)localObject1);
          }
        }
        else
        {
          localObject2 = new Date(b);
          continue;
        }
        localObject1 = null;
      }
      catch (Throwable paramc)
      {
        com.google.android.gms.ads.internal.util.client.b.d("Could not request banner ad from adapter.", paramc);
        throw new RemoteException();
      }
      continue;
      label247:
      Object localObject1 = null;
    }
  }
  
  public void b()
    throws RemoteException
  {
    if (!(a instanceof e))
    {
      com.google.android.gms.ads.internal.util.client.b.d("MediationAdapter is not a MediationInterstitialAdapter: " + a.getClass().getCanonicalName());
      throw new RemoteException();
    }
    com.google.android.gms.ads.internal.util.client.b.a("Showing interstitial from adapter.");
    try
    {
      ((e)a).e();
      return;
    }
    catch (Throwable localThrowable)
    {
      com.google.android.gms.ads.internal.util.client.b.d("Could not show interstitial from adapter.", localThrowable);
      throw new RemoteException();
    }
  }
  
  public void c()
    throws RemoteException
  {
    try
    {
      a.a();
      return;
    }
    catch (Throwable localThrowable)
    {
      com.google.android.gms.ads.internal.util.client.b.d("Could not destroy adapter.", localThrowable);
      throw new RemoteException();
    }
  }
  
  public void d()
    throws RemoteException
  {
    try
    {
      a.b();
      return;
    }
    catch (Throwable localThrowable)
    {
      com.google.android.gms.ads.internal.util.client.b.d("Could not pause adapter.", localThrowable);
      throw new RemoteException();
    }
  }
  
  public void e()
    throws RemoteException
  {
    try
    {
      a.c();
      return;
    }
    catch (Throwable localThrowable)
    {
      com.google.android.gms.ads.internal.util.client.b.d("Could not resume adapter.", localThrowable);
      throw new RemoteException();
    }
  }
  
  public void f()
    throws RemoteException
  {
    if (!(a instanceof com.yelp.android.bf.a))
    {
      com.google.android.gms.ads.internal.util.client.b.d("MediationAdapter is not a MediationRewardedVideoAdAdapter: " + a.getClass().getCanonicalName());
      throw new RemoteException();
    }
    com.google.android.gms.ads.internal.util.client.b.a("Show rewarded video ad from adapter.");
    try
    {
      ((com.yelp.android.bf.a)a).g();
      return;
    }
    catch (Throwable localThrowable)
    {
      com.google.android.gms.ads.internal.util.client.b.d("Could not show rewarded video ad from adapter.", localThrowable);
      throw new RemoteException();
    }
  }
  
  public boolean g()
    throws RemoteException
  {
    if (!(a instanceof com.yelp.android.bf.a))
    {
      com.google.android.gms.ads.internal.util.client.b.d("MediationAdapter is not a MediationRewardedVideoAdAdapter: " + a.getClass().getCanonicalName());
      throw new RemoteException();
    }
    com.google.android.gms.ads.internal.util.client.b.a("Check if adapter is initialized.");
    try
    {
      boolean bool = ((com.yelp.android.bf.a)a).h();
      return bool;
    }
    catch (Throwable localThrowable)
    {
      com.google.android.gms.ads.internal.util.client.b.d("Could not check if adapter is initialized.", localThrowable);
      throw new RemoteException();
    }
  }
  
  public dx h()
  {
    i locali = b.a();
    if ((locali instanceof j)) {
      return new ec((j)locali);
    }
    return null;
  }
  
  public dy i()
  {
    i locali = b.a();
    if ((locali instanceof k)) {
      return new ed((k)locali);
    }
    return null;
  }
  
  public Bundle j()
  {
    if (!(a instanceof il))
    {
      com.google.android.gms.ads.internal.util.client.b.d("MediationAdapter is not a v2 MediationBannerAdapter: " + a.getClass().getCanonicalName());
      return new Bundle();
    }
    return ((il)a).e();
  }
  
  public Bundle k()
  {
    if (!(a instanceof im))
    {
      com.google.android.gms.ads.internal.util.client.b.d("MediationAdapter is not a v2 MediationInterstitialAdapter: " + a.getClass().getCanonicalName());
      return new Bundle();
    }
    return ((im)a).f();
  }
  
  public Bundle l()
  {
    return new Bundle();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ea
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */