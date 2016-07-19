package com.google.android.gms.ads.internal;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.formats.d;
import com.google.android.gms.internal.bm;
import com.google.android.gms.internal.gz;

class q$2
  implements Runnable
{
  q$2(q paramq, d paramd) {}
  
  public void run()
  {
    try
    {
      b.f.s.a(a);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      gz.d("Could not call OnAppInstallAdLoadedListener.onAppInstallAdLoaded().", localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.q.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */