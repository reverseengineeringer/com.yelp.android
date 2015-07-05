package com.google.android.gms.internal;

import com.google.android.gms.ads.purchase.PlayStorePurchaseListener;

@ey
public final class ew
  extends er.a
{
  private final PlayStorePurchaseListener oN;
  
  public ew(PlayStorePurchaseListener paramPlayStorePurchaseListener)
  {
    oN = paramPlayStorePurchaseListener;
  }
  
  public void a(eq parameq)
  {
    oN.onInAppPurchaseFinished(new eu(parameq));
  }
  
  public boolean isValidPurchase(String paramString)
  {
    return oN.isValidPurchase(paramString);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ew
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */