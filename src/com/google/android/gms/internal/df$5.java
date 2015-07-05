package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.ads.AdRequest.ErrorCode;

class df$5
  implements Runnable
{
  df$5(df paramdf, AdRequest.ErrorCode paramErrorCode) {}
  
  public void run()
  {
    try
    {
      df.a(qZ).onAdFailedToLoad(dg.a(ra));
      return;
    }
    catch (RemoteException localRemoteException)
    {
      gr.d("Could not call onAdFailedToLoad.", localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.df.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */