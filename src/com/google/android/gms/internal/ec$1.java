package com.google.android.gms.internal;

import android.content.Intent;
import android.os.RemoteException;

class ec$1
  implements Runnable
{
  ec$1(ec paramec, ef paramef, Intent paramIntent) {}
  
  public void run()
  {
    try
    {
      if (ec.a(sL).a(sJ.sU, -1, sK))
      {
        ec.c(sL).a(new eg(ec.b(sL), sJ.sV, true, -1, sK, sJ));
        return;
      }
      ec.c(sL).a(new eg(ec.b(sL), sJ.sV, false, -1, sK, sJ));
      return;
    }
    catch (RemoteException localRemoteException)
    {
      gr.W("Fail to verify and dispatch pending transaction");
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ec.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */