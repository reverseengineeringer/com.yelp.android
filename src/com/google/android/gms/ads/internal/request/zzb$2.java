package com.google.android.gms.ads.internal.request;

import android.os.Handler;
import com.google.android.gms.internal.hd;
import com.google.android.gms.internal.hu;

class zzb$2
  implements Runnable
{
  zzb$2(zzb paramzzb, hu paramhu) {}
  
  public void run()
  {
    synchronized (zzb.a(b))
    {
      b.a = b.a(bb).j, a);
      if (b.a == null)
      {
        zzb.a(b, 0, "Could not start the ad request service.");
        hd.a.removeCallbacks(zzb.c(b));
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.request.zzb.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */