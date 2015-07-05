package com.google.android.gms.internal;

import com.google.android.gms.ads.purchase.InAppPurchaseListener;

@ey
public final class es
  extends en.a
{
  private final InAppPurchaseListener oM;
  
  public es(InAppPurchaseListener paramInAppPurchaseListener)
  {
    oM = paramInAppPurchaseListener;
  }
  
  public void a(em paramem)
  {
    oM.onInAppPurchaseRequested(new ev(paramem));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.es
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */