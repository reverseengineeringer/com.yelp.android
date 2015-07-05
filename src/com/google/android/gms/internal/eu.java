package com.google.android.gms.internal;

import android.content.Intent;
import android.os.RemoteException;
import com.google.android.gms.ads.purchase.InAppPurchaseResult;

@ey
public class eu
  implements InAppPurchaseResult
{
  private final eq te;
  
  public eu(eq parameq)
  {
    te = parameq;
  }
  
  public void finishPurchase()
  {
    try
    {
      te.finishPurchase();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      gr.d("Could not forward finishPurchase to InAppPurchaseResult", localRemoteException);
    }
  }
  
  public String getProductId()
  {
    try
    {
      String str = te.getProductId();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      gr.d("Could not forward getProductId to InAppPurchaseResult", localRemoteException);
    }
    return null;
  }
  
  public Intent getPurchaseData()
  {
    try
    {
      Intent localIntent = te.getPurchaseData();
      return localIntent;
    }
    catch (RemoteException localRemoteException)
    {
      gr.d("Could not forward getPurchaseData to InAppPurchaseResult", localRemoteException);
    }
    return null;
  }
  
  public int getResultCode()
  {
    try
    {
      int i = te.getResultCode();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      gr.d("Could not forward getPurchaseData to InAppPurchaseResult", localRemoteException);
    }
    return 0;
  }
  
  public boolean isVerified()
  {
    try
    {
      boolean bool = te.isVerified();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      gr.d("Could not forward isVerified to InAppPurchaseResult", localRemoteException);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.eu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */