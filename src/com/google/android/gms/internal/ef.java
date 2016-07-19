package com.google.android.gms.internal;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.f;
import com.google.ads.mediation.h;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.reward.mediation.client.a;
import com.google.android.gms.ads.internal.util.client.b;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

@fv
public final class ef<NETWORK_EXTRAS extends h, SERVER_PARAMETERS extends MediationServerParameters>
  extends dt.a
{
  private final com.google.ads.mediation.c<NETWORK_EXTRAS, SERVER_PARAMETERS> a;
  private final NETWORK_EXTRAS b;
  
  public ef(com.google.ads.mediation.c<NETWORK_EXTRAS, SERVER_PARAMETERS> paramc, NETWORK_EXTRAS paramNETWORK_EXTRAS)
  {
    a = paramc;
    b = paramNETWORK_EXTRAS;
  }
  
  private SERVER_PARAMETERS a(String paramString1, int paramInt, String paramString2)
    throws RemoteException
  {
    if (paramString1 != null) {
      try
      {
        localObject = new JSONObject(paramString1);
        paramString2 = new HashMap(((JSONObject)localObject).length());
        Iterator localIterator = ((JSONObject)localObject).keys();
        for (;;)
        {
          paramString1 = paramString2;
          if (!localIterator.hasNext()) {
            break;
          }
          paramString1 = (String)localIterator.next();
          paramString2.put(paramString1, ((JSONObject)localObject).getString(paramString1));
        }
        paramString1 = new HashMap(0);
      }
      catch (Throwable paramString1)
      {
        b.d("Could not get MediationServerParameters.", paramString1);
        throw new RemoteException();
      }
    }
    Object localObject = a.c();
    paramString2 = null;
    if (localObject != null)
    {
      paramString2 = (MediationServerParameters)((Class)localObject).newInstance();
      paramString2.a(paramString1);
    }
    return paramString2;
  }
  
  public com.google.android.gms.dynamic.c a()
    throws RemoteException
  {
    if (!(a instanceof com.google.ads.mediation.d))
    {
      b.d("MediationAdapter is not a MediationBannerAdapter: " + a.getClass().getCanonicalName());
      throw new RemoteException();
    }
    try
    {
      com.google.android.gms.dynamic.c localc = com.google.android.gms.dynamic.d.a(((com.google.ads.mediation.d)a).d());
      return localc;
    }
    catch (Throwable localThrowable)
    {
      b.d("Could not get banner view from adapter.", localThrowable);
      throw new RemoteException();
    }
  }
  
  public void a(AdRequestParcel paramAdRequestParcel, String paramString) {}
  
  public void a(AdRequestParcel paramAdRequestParcel, String paramString1, String paramString2) {}
  
  public void a(com.google.android.gms.dynamic.c paramc, AdRequestParcel paramAdRequestParcel, String paramString1, a parama, String paramString2)
    throws RemoteException
  {}
  
  public void a(com.google.android.gms.dynamic.c paramc, AdRequestParcel paramAdRequestParcel, String paramString, du paramdu)
    throws RemoteException
  {
    a(paramc, paramAdRequestParcel, paramString, null, paramdu);
  }
  
  public void a(com.google.android.gms.dynamic.c paramc, AdRequestParcel paramAdRequestParcel, String paramString1, String paramString2, du paramdu)
    throws RemoteException
  {
    if (!(a instanceof f))
    {
      b.d("MediationAdapter is not a MediationInterstitialAdapter: " + a.getClass().getCanonicalName());
      throw new RemoteException();
    }
    b.a("Requesting interstitial ad from adapter.");
    try
    {
      ((f)a).a(new eg(paramdu), (Activity)com.google.android.gms.dynamic.d.a(paramc), a(paramString1, g, paramString2), eh.a(paramAdRequestParcel), b);
      return;
    }
    catch (Throwable paramc)
    {
      b.d("Could not request interstitial ad from adapter.", paramc);
      throw new RemoteException();
    }
  }
  
  public void a(com.google.android.gms.dynamic.c paramc, AdRequestParcel paramAdRequestParcel, String paramString1, String paramString2, du paramdu, NativeAdOptionsParcel paramNativeAdOptionsParcel, List<String> paramList) {}
  
  public void a(com.google.android.gms.dynamic.c paramc, AdSizeParcel paramAdSizeParcel, AdRequestParcel paramAdRequestParcel, String paramString, du paramdu)
    throws RemoteException
  {
    a(paramc, paramAdSizeParcel, paramAdRequestParcel, paramString, null, paramdu);
  }
  
  public void a(com.google.android.gms.dynamic.c paramc, AdSizeParcel paramAdSizeParcel, AdRequestParcel paramAdRequestParcel, String paramString1, String paramString2, du paramdu)
    throws RemoteException
  {
    if (!(a instanceof com.google.ads.mediation.d))
    {
      b.d("MediationAdapter is not a MediationBannerAdapter: " + a.getClass().getCanonicalName());
      throw new RemoteException();
    }
    b.a("Requesting banner ad from adapter.");
    try
    {
      ((com.google.ads.mediation.d)a).a(new eg(paramdu), (Activity)com.google.android.gms.dynamic.d.a(paramc), a(paramString1, g, paramString2), eh.a(paramAdSizeParcel), eh.a(paramAdRequestParcel), b);
      return;
    }
    catch (Throwable paramc)
    {
      b.d("Could not request banner ad from adapter.", paramc);
      throw new RemoteException();
    }
  }
  
  public void b()
    throws RemoteException
  {
    if (!(a instanceof f))
    {
      b.d("MediationAdapter is not a MediationInterstitialAdapter: " + a.getClass().getCanonicalName());
      throw new RemoteException();
    }
    b.a("Showing interstitial from adapter.");
    try
    {
      ((f)a).e();
      return;
    }
    catch (Throwable localThrowable)
    {
      b.d("Could not show interstitial from adapter.", localThrowable);
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
      b.d("Could not destroy adapter.", localThrowable);
      throw new RemoteException();
    }
  }
  
  public void d()
    throws RemoteException
  {
    throw new RemoteException();
  }
  
  public void e()
    throws RemoteException
  {
    throw new RemoteException();
  }
  
  public void f() {}
  
  public boolean g()
  {
    return true;
  }
  
  public dx h()
  {
    return null;
  }
  
  public dy i()
  {
    return null;
  }
  
  public Bundle j()
  {
    return new Bundle();
  }
  
  public Bundle k()
  {
    return new Bundle();
  }
  
  public Bundle l()
  {
    return new Bundle();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ef
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */