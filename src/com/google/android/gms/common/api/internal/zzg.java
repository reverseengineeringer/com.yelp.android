package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import android.os.DeadObjectException;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class zzg
  implements zzk
{
  private final zzl zzahj;
  private boolean zzahk = false;
  
  public zzg(zzl paramzzl)
  {
    zzahj = paramzzl;
  }
  
  private <A extends Api.zzb> void zza(zzj.zze<A> paramzze)
    throws DeadObjectException
  {
    zzahj.zzagW.zzb(paramzze);
    Api.zzb localzzb = zzahj.zzagW.zza(paramzze.zzoR());
    if ((!localzzb.isConnected()) && (zzahj.zzaio.containsKey(paramzze.zzoR())))
    {
      paramzze.zzw(new Status(17));
      return;
    }
    paramzze.zzb(localzzb);
  }
  
  public void begin() {}
  
  public void connect()
  {
    if (zzahk)
    {
      zzahk = false;
      zzahj.zza(new zzl.zza(this)
      {
        public void zzpt()
        {
          zzazzais.zzi(null);
        }
      });
    }
  }
  
  public boolean disconnect()
  {
    if (zzahk) {
      return false;
    }
    if (zzahj.zzagW.zzpG())
    {
      zzahk = true;
      Iterator localIterator = zzahj.zzagW.zzaia.iterator();
      while (localIterator.hasNext()) {
        ((zzx)localIterator.next()).zzpU();
      }
      return false;
    }
    zzahj.zzh(null);
    return true;
  }
  
  public void onConnected(Bundle paramBundle) {}
  
  public void onConnectionSuspended(int paramInt)
  {
    zzahj.zzh(null);
    zzahj.zzais.zzc(paramInt, zzahk);
  }
  
  public <A extends Api.zzb, R extends Result, T extends zza.zza<R, A>> T zza(T paramT)
  {
    return zzb(paramT);
  }
  
  public void zza(ConnectionResult paramConnectionResult, Api<?> paramApi, int paramInt) {}
  
  public <A extends Api.zzb, T extends zza.zza<? extends Result, A>> T zzb(T paramT)
  {
    try
    {
      zza(paramT);
      return paramT;
    }
    catch (DeadObjectException localDeadObjectException)
    {
      zzahj.zza(new zzl.zza(this)
      {
        public void zzpt()
        {
          onConnectionSuspended(1);
        }
      });
    }
    return paramT;
  }
  
  void zzps()
  {
    if (zzahk)
    {
      zzahk = false;
      zzahj.zzagW.zzaa(false);
      disconnect();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.internal.zzg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */