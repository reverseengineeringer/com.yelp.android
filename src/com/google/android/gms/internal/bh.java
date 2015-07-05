package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.doubleclick.b;
import com.google.android.gms.ads.purchase.InAppPurchaseListener;
import com.google.android.gms.ads.purchase.PlayStorePurchaseListener;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.e;

public final class bh
{
  private final cx oH = new cx();
  private final ax oI;
  private bd oJ;
  private String oK;
  private ViewGroup oL;
  private InAppPurchaseListener oM;
  private PlayStorePurchaseListener oN;
  private b oO;
  private AdListener ob;
  private AppEventListener os;
  private AdSize[] ot;
  private String ou;
  
  public bh(ViewGroup paramViewGroup)
  {
    this(paramViewGroup, null, false, ax.bg());
  }
  
  public bh(ViewGroup paramViewGroup, AttributeSet paramAttributeSet, boolean paramBoolean)
  {
    this(paramViewGroup, paramAttributeSet, paramBoolean, ax.bg());
  }
  
  bh(ViewGroup paramViewGroup, AttributeSet paramAttributeSet, boolean paramBoolean, ax paramax)
  {
    this(paramViewGroup, paramAttributeSet, paramBoolean, paramax, null);
  }
  
  bh(ViewGroup paramViewGroup, AttributeSet paramAttributeSet, boolean paramBoolean, ax paramax, bd parambd)
  {
    oL = paramViewGroup;
    oI = paramax;
    if (paramAttributeSet != null)
    {
      paramax = paramViewGroup.getContext();
      try
      {
        paramAttributeSet = new bb(paramax, paramAttributeSet);
        ot = paramAttributeSet.h(paramBoolean);
        ou = paramAttributeSet.getAdUnitId();
        if (paramViewGroup.isInEditMode())
        {
          gq.a(paramViewGroup, new ay(paramax, ot[0]), "Ads by Google");
          return;
        }
      }
      catch (IllegalArgumentException paramAttributeSet)
      {
        gq.a(paramViewGroup, new ay(paramax, AdSize.BANNER), paramAttributeSet.getMessage(), paramAttributeSet.getMessage());
        return;
      }
    }
    oJ = parambd;
  }
  
  private void bm()
  {
    try
    {
      d locald = oJ.ab();
      if (locald == null) {
        return;
      }
      oL.addView((View)e.f(locald));
      return;
    }
    catch (RemoteException localRemoteException)
    {
      gr.d("Failed to get an ad frame.", localRemoteException);
    }
  }
  
  private void bn()
  {
    if (((ot == null) || (ou == null)) && (oJ == null)) {
      throw new IllegalStateException("The ad size and ad unit ID must be set before loadAd is called.");
    }
    Context localContext = oL.getContext();
    oJ = au.a(localContext, new ay(localContext, ot), ou, oH);
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
    bm();
  }
  
  public void a(bg parambg)
  {
    try
    {
      if (oJ == null) {
        bn();
      }
      if (oJ.a(oI.a(oL.getContext(), parambg))) {
        oH.d(parambg.bj());
      }
      return;
    }
    catch (RemoteException parambg)
    {
      gr.d("Failed to load ad.", parambg);
    }
  }
  
  public void a(AdSize... paramVarArgs)
  {
    ot = paramVarArgs;
    try
    {
      if (oJ != null) {
        oJ.a(new ay(oL.getContext(), ot));
      }
      oL.requestLayout();
      return;
    }
    catch (RemoteException paramVarArgs)
    {
      for (;;)
      {
        gr.d("Failed to set the ad size.", paramVarArgs);
      }
    }
  }
  
  public void destroy()
  {
    try
    {
      if (oJ != null) {
        oJ.destroy();
      }
      return;
    }
    catch (RemoteException localRemoteException)
    {
      gr.d("Failed to destroy AdView.", localRemoteException);
    }
  }
  
  public AdListener getAdListener()
  {
    return ob;
  }
  
  public AdSize getAdSize()
  {
    try
    {
      if (oJ != null)
      {
        AdSize localAdSize = oJ.ac().bh();
        return localAdSize;
      }
    }
    catch (RemoteException localRemoteException)
    {
      gr.d("Failed to get the current AdSize.", localRemoteException);
      if (ot != null) {
        return ot[0];
      }
    }
    return null;
  }
  
  public AdSize[] getAdSizes()
  {
    return ot;
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
  
  public void pause()
  {
    try
    {
      if (oJ != null) {
        oJ.pause();
      }
      return;
    }
    catch (RemoteException localRemoteException)
    {
      gr.d("Failed to call pause.", localRemoteException);
    }
  }
  
  public void recordManualImpression()
  {
    try
    {
      if (oJ != null) {
        oJ.an();
      }
      return;
    }
    catch (RemoteException localRemoteException)
    {
      gr.d("Failed to record impression.", localRemoteException);
    }
  }
  
  public void resume()
  {
    try
    {
      if (oJ != null) {
        oJ.resume();
      }
      return;
    }
    catch (RemoteException localRemoteException)
    {
      gr.d("Failed to call resume.", localRemoteException);
    }
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
  
  public void setAdSizes(AdSize... paramVarArgs)
  {
    if (ot != null) {
      throw new IllegalStateException("The ad size can only be set once on AdView.");
    }
    a(paramVarArgs);
  }
  
  public void setAdUnitId(String paramString)
  {
    if (ou != null) {
      throw new IllegalStateException("The ad unit ID can only be set once on AdView.");
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
          break label56;
        }
      }
      label56:
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
    if (oM != null) {
      throw new IllegalStateException("InAppPurchaseListener has already been set.");
    }
    try
    {
      oN = paramPlayStorePurchaseListener;
      oK = paramString;
      bd localbd;
      if (oJ != null)
      {
        localbd = oJ;
        if (paramPlayStorePurchaseListener == null) {
          break label62;
        }
      }
      label62:
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
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.bh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */