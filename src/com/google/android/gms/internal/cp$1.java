package com.google.android.gms.internal;

import android.os.RemoteException;

class cp$1
  implements Runnable
{
  cp$1(cp paramcp, cv paramcv) {}
  
  public void run()
  {
    try
    {
      ql.qQ.destroy();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      gr.d("Could not destroy mediation adapter.", localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cp.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */