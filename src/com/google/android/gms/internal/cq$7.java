package com.google.android.gms.internal;

import android.os.RemoteException;

class cq$7
  implements Runnable
{
  cq$7(cq paramcq, cq.a parama, cr paramcr) {}
  
  public void run()
  {
    try
    {
      a.a(b);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      gz.d("Could not propagate interstitial ad event.", localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cq.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */