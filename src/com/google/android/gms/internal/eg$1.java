package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.ads.AdRequest.ErrorCode;
import com.google.android.gms.ads.internal.util.client.b;

class eg$1
  implements Runnable
{
  eg$1(eg parameg, AdRequest.ErrorCode paramErrorCode) {}
  
  public void run()
  {
    try
    {
      eg.a(b).a(eh.a(a));
      return;
    }
    catch (RemoteException localRemoteException)
    {
      b.d("Could not call onAdFailedToLoad.", localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.eg.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */