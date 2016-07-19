package com.google.android.gms.location.internal;

import android.app.PendingIntent;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.zza.zzb;
import com.google.android.gms.location.m;

final class l$b
  extends h.a
{
  private zza.zzb<Status> a;
  
  public l$b(zza.zzb<Status> paramzzb)
  {
    a = paramzzb;
  }
  
  private void a(int paramInt)
  {
    if (a == null)
    {
      Log.wtf("LocationClientImpl", "onRemoveGeofencesResult called multiple times");
      return;
    }
    Status localStatus = m.b(m.a(paramInt));
    a.zzs(localStatus);
    a = null;
  }
  
  public void a(int paramInt, PendingIntent paramPendingIntent)
  {
    a(paramInt);
  }
  
  public void a(int paramInt, String[] paramArrayOfString)
  {
    Log.wtf("LocationClientImpl", "Unexpected call to onAddGeofencesResult");
  }
  
  public void b(int paramInt, String[] paramArrayOfString)
  {
    a(paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.internal.l.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */