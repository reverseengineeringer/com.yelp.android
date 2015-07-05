package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.ads.purchase.InAppPurchase;

@ey
public class ev
  implements InAppPurchase
{
  private final em sP;
  
  public ev(em paramem)
  {
    sP = paramem;
  }
  
  public String getProductId()
  {
    try
    {
      String str = sP.getProductId();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      gr.d("Could not forward getProductId to InAppPurchase", localRemoteException);
    }
    return null;
  }
  
  public void recordPlayBillingResolution(int paramInt)
  {
    try
    {
      sP.recordPlayBillingResolution(paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      gr.d("Could not forward recordPlayBillingResolution to InAppPurchase", localRemoteException);
    }
  }
  
  public void recordResolution(int paramInt)
  {
    try
    {
      sP.recordResolution(paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      gr.d("Could not forward recordResolution to InAppPurchase", localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ev
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */