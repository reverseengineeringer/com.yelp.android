package com.google.android.gms.ads.internal.client;

import android.os.Handler;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.client.a;
import com.google.android.gms.ads.internal.util.client.b;

class f$a
  extends z.a
{
  private f$a(f paramf) {}
  
  public void a(AdRequestParcel paramAdRequestParcel)
    throws RemoteException
  {
    b.b("This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date.");
    a.a.post(new Runnable()
    {
      public void run()
      {
        if (f.a(a) != null) {}
        try
        {
          f.a(a).a(1);
          return;
        }
        catch (RemoteException localRemoteException)
        {
          b.d("Could not notify onAdFailedToLoad event.", localRemoteException);
        }
      }
    });
  }
  
  public boolean a()
    throws RemoteException
  {
    return false;
  }
  
  public String b()
    throws RemoteException
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.client.f.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */