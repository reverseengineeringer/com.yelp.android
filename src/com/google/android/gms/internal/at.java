package com.google.android.gms.internal;

import com.google.android.gms.ads.AdListener;

@ey
public final class at
  extends bc.a
{
  private final AdListener ob;
  
  public at(AdListener paramAdListener)
  {
    ob = paramAdListener;
  }
  
  public void onAdClosed()
  {
    ob.onAdClosed();
  }
  
  public void onAdFailedToLoad(int paramInt)
  {
    ob.onAdFailedToLoad(paramInt);
  }
  
  public void onAdLeftApplication()
  {
    ob.onAdLeftApplication();
  }
  
  public void onAdLoaded()
  {
    ob.onAdLoaded();
  }
  
  public void onAdOpened()
  {
    ob.onAdOpened();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.at
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */