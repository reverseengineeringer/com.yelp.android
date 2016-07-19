package com.google.android.gms.ads.internal.purchase;

import android.content.Intent;
import android.os.RemoteException;
import com.google.android.gms.internal.fd;
import com.google.android.gms.internal.gz;

class c$1
  implements Runnable
{
  c$1(c paramc, f paramf, Intent paramIntent) {}
  
  public void run()
  {
    try
    {
      if (c.a(c).a(a.b, -1, b))
      {
        c.c(c).a(new g(c.b(c), a.c, true, -1, b, a));
        return;
      }
      c.c(c).a(new g(c.b(c), a.c, false, -1, b, a));
      return;
    }
    catch (RemoteException localRemoteException)
    {
      gz.d("Fail to verify and dispatch pending transaction");
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.purchase.c.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */