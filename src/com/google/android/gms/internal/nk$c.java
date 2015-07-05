package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.util.Log;
import com.google.android.gms.location.LocationStatusCodes;
import com.google.android.gms.location.c.b;

final class nk$c
  extends jl<ni>.b<c.b>
{
  private final int Iv;
  private final String[] aha;
  private final int ahf;
  private final PendingIntent mPendingIntent;
  
  public nk$c(nk paramnk, int paramInt1, c.b paramb, int paramInt2, PendingIntent paramPendingIntent)
  {
    super(paramnk, paramb);
    if (paramInt1 == 1) {}
    for (;;)
    {
      je.K(bool);
      ahf = paramInt1;
      Iv = LocationStatusCodes.eC(paramInt2);
      mPendingIntent = paramPendingIntent;
      aha = null;
      return;
      bool = false;
    }
  }
  
  public nk$c(nk paramnk, int paramInt1, c.b paramb, int paramInt2, String[] paramArrayOfString)
  {
    super(paramnk, paramb);
    if (paramInt1 == 2) {}
    for (boolean bool = true;; bool = false)
    {
      je.K(bool);
      ahf = paramInt1;
      Iv = LocationStatusCodes.eC(paramInt2);
      aha = paramArrayOfString;
      mPendingIntent = null;
      return;
    }
  }
  
  protected void a(c.b paramb)
  {
    if (paramb != null) {}
    switch (ahf)
    {
    default: 
      Log.wtf("LocationClientImpl", "Unsupported action: " + ahf);
      return;
    case 1: 
      paramb.a(Iv, mPendingIntent);
      return;
    }
    paramb.b(Iv, aha);
  }
  
  protected void hx() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.nk.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */