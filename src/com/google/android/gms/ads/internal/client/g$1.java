package com.google.android.gms.ads.internal.client;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.client.b;

class g$1
  implements Runnable
{
  g$1(g paramg) {}
  
  public void run()
  {
    if (g.a(a) != null) {}
    try
    {
      g.a(a).a(1);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      b.d("Could not notify onAdFailedToLoad event.", localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.client.g.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */