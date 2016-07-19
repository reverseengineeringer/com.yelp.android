package com.google.android.gms.ads.internal.client;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.client.b;

class f$a$1
  implements Runnable
{
  f$a$1(f.a parama) {}
  
  public void run()
  {
    if (f.a(a.a) != null) {}
    try
    {
      f.a(a.a).a(1);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      b.d("Could not notify onAdFailedToLoad event.", localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.client.f.a.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */