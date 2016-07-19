package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.google.android.gms.ads.internal.request.j;
import com.google.android.gms.ads.internal.s;

class fx$7
  implements Runnable
{
  fx$7(fx paramfx, AdRequestInfoParcel paramAdRequestInfoParcel, j paramj) {}
  
  public void run()
  {
    try
    {
      AdResponseParcel localAdResponseParcel1 = c.a(a);
      localAdResponseParcel2 = localAdResponseParcel1;
      if (localAdResponseParcel1 == null) {
        localAdResponseParcel2 = new AdResponseParcel(0);
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        try
        {
          AdResponseParcel localAdResponseParcel2;
          b.a(localAdResponseParcel2);
          return;
        }
        catch (RemoteException localRemoteException)
        {
          Object localObject;
          gz.d("Fail to forward ad response.", localRemoteException);
        }
        localException = localException;
        s.h().a(localException, true);
        gz.d("Could not fetch ad response due to an Exception.", localException);
        localObject = null;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fx.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */