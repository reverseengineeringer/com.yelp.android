package com.google.android.gms.internal;

import android.os.RemoteException;

class dq$1
  implements Runnable
{
  dq$1(dq paramdq, dn paramdn) {}
  
  public void run()
  {
    try
    {
      a.c.c();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      gz.d("Could not destroy mediation adapter.", localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.dq.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */