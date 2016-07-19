package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient.zza;
import com.google.android.gms.common.zzc;
import com.google.android.gms.internal.lf;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

class zzh$zzb
  extends zzh.zzf
{
  private final Map<Api.zzb, GoogleApiClient.zza> zzahE;
  
  public zzh$zzb(Map<Api.zzb, GoogleApiClient.zza> paramMap)
  {
    super(paramMap, null);
    Map localMap;
    zzahE = localMap;
  }
  
  public void zzpt()
  {
    int i = zzh.zzb(zzahC).isGooglePlayServicesAvailable(zzh.zza(zzahC));
    final Object localObject;
    if (i != 0)
    {
      localObject = new ConnectionResult(i, null);
      zzh.zzd(zzahC).zza(new zzl.zza(zzahC)
      {
        public void zzpt()
        {
          zzh.zza(zzahC, localObject);
        }
      });
    }
    for (;;)
    {
      return;
      if (zzh.zze(zzahC)) {
        zzh.zzf(zzahC).b();
      }
      localObject = zzahE.keySet().iterator();
      while (((Iterator)localObject).hasNext())
      {
        Api.zzb localzzb = (Api.zzb)((Iterator)localObject).next();
        localzzb.zza((GoogleApiClient.zza)zzahE.get(localzzb));
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.internal.zzh.zzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */