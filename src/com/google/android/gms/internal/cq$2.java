package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.ae;
import com.google.android.gms.ads.internal.client.ae.a;
import java.util.List;

class cq$2
  extends ae.a
{
  cq$2(cq paramcq) {}
  
  public void a(final String paramString1, final String paramString2)
    throws RemoteException
  {
    cq.a(a).add(new cq.a()
    {
      public void a(cr paramAnonymouscr)
        throws RemoteException
      {
        if (b != null) {
          b.a(paramString1, paramString2);
        }
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cq.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */