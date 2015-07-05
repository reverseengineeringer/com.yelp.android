package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.util.Log;
import com.google.android.gms.location.c.a;
import com.google.android.gms.location.c.b;

final class nk$b
  extends nh.a
{
  private c.a ahc;
  private c.b ahd;
  private nk ahe;
  
  public nk$b(c.a parama, nk paramnk)
  {
    ahc = parama;
    ahd = null;
    ahe = paramnk;
  }
  
  public nk$b(c.b paramb, nk paramnk)
  {
    ahd = paramb;
    ahc = null;
    ahe = paramnk;
  }
  
  public void a(int paramInt, PendingIntent paramPendingIntent)
  {
    if (ahe == null)
    {
      Log.wtf("LocationClientImpl", "onRemoveGeofencesByPendingIntentResult called multiple times");
      return;
    }
    nk localnk1 = ahe;
    nk localnk2 = ahe;
    localnk2.getClass();
    localnk1.a(new nk.c(localnk2, 1, ahd, paramInt, paramPendingIntent));
    ahe = null;
    ahc = null;
    ahd = null;
  }
  
  public void a(int paramInt, String[] paramArrayOfString)
  {
    if (ahe == null)
    {
      Log.wtf("LocationClientImpl", "onAddGeofenceResult called multiple times");
      return;
    }
    nk localnk1 = ahe;
    nk localnk2 = ahe;
    localnk2.getClass();
    localnk1.a(new nk.a(localnk2, ahc, paramInt, paramArrayOfString));
    ahe = null;
    ahc = null;
    ahd = null;
  }
  
  public void b(int paramInt, String[] paramArrayOfString)
  {
    if (ahe == null)
    {
      Log.wtf("LocationClientImpl", "onRemoveGeofencesByRequestIdsResult called multiple times");
      return;
    }
    nk localnk1 = ahe;
    nk localnk2 = ahe;
    localnk2.getClass();
    localnk1.a(new nk.c(localnk2, 2, ahd, paramInt, paramArrayOfString));
    ahe = null;
    ahc = null;
    ahd = null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.nk.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */