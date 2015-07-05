package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.doubleclick.PublisherInterstitialAd;
import com.google.android.gms.ads.doubleclick.b;
import com.google.android.gms.ads.purchase.InAppPurchaseListener;
import com.google.android.gms.ads.purchase.PlayStorePurchaseListener;

public class bi
{
  private final Context mContext;
  private final cx oH = new cx();
  private final ax oI;
  private bd oJ;
  private String oK;
  private InAppPurchaseListener oM;
  private PlayStorePurchaseListener oN;
  private b oO;
  private PublisherInterstitialAd oP;
  private AdListener ob;
  private AppEventListener os;
  private String ou;
  
  public bi(Context paramContext)
  {
    this(paramContext, ax.bg(), null);
  }
  
  public bi(Context paramContext, PublisherInterstitialAd paramPublisherInterstitialAd)
  {
    this(paramContext, ax.bg(), paramPublisherInterstitialAd);
  }
  
  public bi(Context paramContext, ax paramax, PublisherInterstitialAd paramPublisherInterstitialAd)
  {
    mContext = paramContext;
    oI = paramax;
    oP = paramPublisherInterstitialAd;
  }
  
  private void v(String paramString)
  {
    if (ou == null) {
      w(paramString);
    }
    oJ = au.a(mContext, new ay(), ou, oH);
    if (ob != null) {
      oJ.a(new at(ob));
    }
    if (os != null) {
      oJ.a(new ba(os));
    }
    if (oM != null) {
      oJ.a(new es(oM));
    }
    if (oN != null) {
      oJ.a(new ew(oN), oK);
    }
    if (oO != null) {
      oJ.a(new bs(oO));
    }
  }
  
  private void w(String paramString)
  {
    if (oJ == null) {
      throw new IllegalStateException("The ad unit ID must be set on InterstitialAd before " + paramString + " is called.");
    }
  }
  
  public void a(bg parambg)
  {
    try
    {
      if (oJ == null) {
        v("loadAd");
      }
      if (oJ.a(oI.a(mContext, parambg))) {
        oH.d(parambg.bj());
      }
      return;
    }
    catch (RemoteException parambg)
    {
      gr.d("Failed to load ad.", parambg);
    }
  }
  
  public AdListener getAdListener()
  {
    return ob;
  }
  
  public String getAdUnitId()
  {
    return ou;
  }
  
  public AppEventListener getAppEventListener()
  {
    return os;
  }
  
  public InAppPurchaseListener getInAppPurchaseListener()
  {
    return oM;
  }
  
  public String getMediationAdapterClassName()
  {
    try
    {
      if (oJ != null)
      {
        String str = oJ.getMediationAdapterClassName();
        return str;
      }
    }
    catch (RemoteException localRemoteException)
    {
      gr.d("Failed to get the mediation adapter class name.", localRemoteException);
    }
    return null;
  }
  
  public boolean isLoaded()
  {
    try
    {
      if (oJ == null) {
        return false;
      }
      boolean bool = oJ.isReady();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      gr.d("Failed to check if ad is ready.", localRemoteException);
    }
    return false;
  }
  
  public void setAdListener(AdListener paramAdListener)
  {
    try
    {
      ob = paramAdListener;
      bd localbd;
      if (oJ != null)
      {
        localbd = oJ;
        if (paramAdListener == null) {
          break label38;
        }
      }
      label38:
      for (paramAdListener = new at(paramAdListener);; paramAdListener = null)
      {
        localbd.a(paramAdListener);
        return;
      }
      return;
    }
    catch (RemoteException paramAdListener)
    {
      gr.d("Failed to set the AdListener.", paramAdListener);
    }
  }
  
  public void setAdUnitId(String paramString)
  {
    if (ou != null) {
      throw new IllegalStateException("The ad unit ID can only be set once on InterstitialAd.");
    }
    ou = paramString;
  }
  
  public void setAppEventListener(AppEventListener paramAppEventListener)
  {
    try
    {
      os = paramAppEventListener;
      bd localbd;
      if (oJ != null)
      {
        localbd = oJ;
        if (paramAppEventListener == null) {
          break label38;
        }
      }
      label38:
      for (paramAppEventListener = new ba(paramAppEventListener);; paramAppEventListener = null)
      {
        localbd.a(paramAppEventListener);
        return;
      }
      return;
    }
    catch (RemoteException paramAppEventListener)
    {
      gr.d("Failed to set the AppEventListener.", paramAppEventListener);
    }
  }
  
  public void setInAppPurchaseListener(InAppPurchaseListener paramInAppPurchaseListener)
  {
    if (oN != null) {
      throw new IllegalStateException("Play store purchase parameter has already been set.");
    }
    try
    {
      oM = paramInAppPurchaseListener;
      bd localbd;
      if (oJ != null)
      {
        localbd = oJ;
        if (paramInAppPurchaseListener == null) {
          break label55;
        }
      }
      label55:
      for (paramInAppPurchaseListener = new es(paramInAppPurchaseListener);; paramInAppPurchaseListener = null)
      {
        localbd.a(paramInAppPurchaseListener);
        return;
      }
      return;
    }
    catch (RemoteException paramInAppPurchaseListener)
    {
      gr.d("Failed to set the InAppPurchaseListener.", paramInAppPurchaseListener);
    }
  }
  
  public void setPlayStorePurchaseParams(PlayStorePurchaseListener paramPlayStorePurchaseListener, String paramString)
  {
    try
    {
      oN = paramPlayStorePurchaseListener;
      bd localbd;
      if (oJ != null)
      {
        localbd = oJ;
        if (paramPlayStorePurchaseListener == null) {
          break label39;
        }
      }
      label39:
      for (paramPlayStorePurchaseListener = new ew(paramPlayStorePurchaseListener);; paramPlayStorePurchaseListener = null)
      {
        localbd.a(paramPlayStorePurchaseListener, paramString);
        return;
      }
      return;
    }
    catch (RemoteException paramPlayStorePurchaseListener)
    {
      gr.d("Failed to set the play store purchase parameter.", paramPlayStorePurchaseListener);
    }
  }
  
  public void show()
  {
    try
    {
      w("show");
      oJ.showInterstitial();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      gr.d("Failed to show interstitial.", localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.bi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */