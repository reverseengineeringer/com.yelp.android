package com.google.android.gms.ads.internal;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.formats.f;
import com.google.android.gms.internal.bp;
import com.google.android.gms.internal.gr;
import com.google.android.gms.internal.gz;
import com.yelp.android.g.i;

class q$4
  implements Runnable
{
  q$4(q paramq, String paramString, gr paramgr) {}
  
  public void run()
  {
    try
    {
      ((bp)c.f.v.get(a)).a((f)b.B);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      gz.d("Could not call onCustomTemplateAdLoadedListener.onCustomTemplateAdLoaded().", localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.q.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */