package com.google.android.gms.ads.internal;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.formats.e;
import com.google.android.gms.internal.bn;
import com.google.android.gms.internal.gz;

class q$3
  implements Runnable
{
  q$3(q paramq, e parame) {}
  
  public void run()
  {
    try
    {
      b.f.t.a(a);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      gz.d("Could not call OnContentAdLoadedListener.onContentAdLoaded().", localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.q.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */