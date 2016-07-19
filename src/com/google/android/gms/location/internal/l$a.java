package com.google.android.gms.location.internal;

import android.app.PendingIntent;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.zza.zzb;
import com.google.android.gms.location.m;

final class l$a
  extends h.a
{
  private zza.zzb<Status> a;
  
  public l$a(zza.zzb<Status> paramzzb)
  {
    a = paramzzb;
  }
  
  public void a(int paramInt, PendingIntent paramPendingIntent)
  {
    Log.wtf("LocationClientImpl", "Unexpected call to onRemoveGeofencesByPendingIntentResult");
  }
  
  public void a(int paramInt, String[] paramArrayOfString)
  {
    if (a == null)
    {
      Log.wtf("LocationClientImpl", "onAddGeofenceResult called multiple times");
      return;
    }
    paramArrayOfString = m.b(m.a(paramInt));
    a.zzs(paramArrayOfString);
    a = null;
  }
  
  public void b(int paramInt, String[] paramArrayOfString)
  {
    Log.wtf("LocationClientImpl", "Unexpected call to onRemoveGeofencesByRequestIdsResult");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.internal.l.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */