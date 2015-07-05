package com.google.android.gms.internal;

import android.app.Activity;
import android.os.RemoteException;
import com.google.ads.mediation.MediationAdapter;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.NetworkExtras;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.e;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

@ey
public final class de<NETWORK_EXTRAS extends NetworkExtras, SERVER_PARAMETERS extends MediationServerParameters>
  extends cz.a
{
  private final MediationAdapter<NETWORK_EXTRAS, SERVER_PARAMETERS> qX;
  private final NETWORK_EXTRAS qY;
  
  public de(MediationAdapter<NETWORK_EXTRAS, SERVER_PARAMETERS> paramMediationAdapter, NETWORK_EXTRAS paramNETWORK_EXTRAS)
  {
    qX = paramMediationAdapter;
    qY = paramNETWORK_EXTRAS;
  }
  
  private SERVER_PARAMETERS b(String paramString1, int paramInt, String paramString2)
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
        gr.d("Could not get MediationServerParameters.", paramString1);
        throw new RemoteException();
      }
    }
    Object localObject = qX.getServerParametersType();
    paramString2 = null;
    if (localObject != null)
    {
      paramString2 = (MediationServerParameters)((Class)localObject).newInstance();
      paramString2.load(paramString1);
    }
    return paramString2;
  }
  
  public void a(d paramd, av paramav, String paramString, da paramda)
  {
    a(paramd, paramav, paramString, null, paramda);
  }
  
  public void a(d paramd, av paramav, String paramString1, String paramString2, da paramda)
  {
    if (!(qX instanceof MediationInterstitialAdapter))
    {
      gr.W("MediationAdapter is not a MediationInterstitialAdapter: " + qX.getClass().getCanonicalName());
      throw new RemoteException();
    }
    gr.S("Requesting interstitial ad from adapter.");
    try
    {
      ((MediationInterstitialAdapter)qX).requestInterstitialAd(new df(paramda), (Activity)e.f(paramd), b(paramString1, oh, paramString2), dg.d(paramav), qY);
      return;
    }
    catch (Throwable paramd)
    {
      gr.d("Could not request interstitial ad from adapter.", paramd);
      throw new RemoteException();
    }
  }
  
  public void a(d paramd, ay paramay, av paramav, String paramString, da paramda)
  {
    a(paramd, paramay, paramav, paramString, null, paramda);
  }
  
  public void a(d paramd, ay paramay, av paramav, String paramString1, String paramString2, da paramda)
  {
    if (!(qX instanceof MediationBannerAdapter))
    {
      gr.W("MediationAdapter is not a MediationBannerAdapter: " + qX.getClass().getCanonicalName());
      throw new RemoteException();
    }
    gr.S("Requesting banner ad from adapter.");
    try
    {
      ((MediationBannerAdapter)qX).requestBannerAd(new df(paramda), (Activity)e.f(paramd), b(paramString1, oh, paramString2), dg.b(paramay), dg.d(paramav), qY);
      return;
    }
    catch (Throwable paramd)
    {
      gr.d("Could not request banner ad from adapter.", paramd);
      throw new RemoteException();
    }
  }
  
  public void destroy()
  {
    try
    {
      qX.destroy();
      return;
    }
    catch (Throwable localThrowable)
    {
      gr.d("Could not destroy adapter.", localThrowable);
      throw new RemoteException();
    }
  }
  
  public d getView()
  {
    if (!(qX instanceof MediationBannerAdapter))
    {
      gr.W("MediationAdapter is not a MediationBannerAdapter: " + qX.getClass().getCanonicalName());
      throw new RemoteException();
    }
    try
    {
      d locald = e.k(((MediationBannerAdapter)qX).getBannerView());
      return locald;
    }
    catch (Throwable localThrowable)
    {
      gr.d("Could not get banner view from adapter.", localThrowable);
      throw new RemoteException();
    }
  }
  
  public void pause()
  {
    throw new RemoteException();
  }
  
  public void resume()
  {
    throw new RemoteException();
  }
  
  public void showInterstitial()
  {
    if (!(qX instanceof MediationInterstitialAdapter))
    {
      gr.W("MediationAdapter is not a MediationInterstitialAdapter: " + qX.getClass().getCanonicalName());
      throw new RemoteException();
    }
    gr.S("Showing interstitial from adapter.");
    try
    {
      ((MediationInterstitialAdapter)qX).showInterstitial();
      return;
    }
    catch (Throwable localThrowable)
    {
      gr.d("Could not show interstitial from adapter.", localThrowable);
      throw new RemoteException();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.de
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */