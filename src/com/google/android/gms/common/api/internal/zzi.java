package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.Result;
import java.util.Collections;
import java.util.Queue;

public class zzi
  implements zzk
{
  private final zzl zzahj;
  
  public zzi(zzl paramzzl)
  {
    zzahj = paramzzl;
  }
  
  public void begin()
  {
    zzahj.zzpM();
    zzahj.zzagW.zzahU = Collections.emptySet();
  }
  
  public void connect()
  {
    zzahj.zzpK();
  }
  
  public boolean disconnect()
  {
    return true;
  }
  
  public void onConnected(Bundle paramBundle) {}
  
  public void onConnectionSuspended(int paramInt) {}
  
  public <A extends Api.zzb, R extends Result, T extends zza.zza<R, A>> T zza(T paramT)
  {
    zzahj.zzagW.zzahN.add(paramT);
    return paramT;
  }
  
  public void zza(ConnectionResult paramConnectionResult, Api<?> paramApi, int paramInt) {}
  
  public <A extends Api.zzb, T extends zza.zza<? extends Result, A>> T zzb(T paramT)
  {
    throw new IllegalStateException("GoogleApiClient is not connected yet.");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.internal.zzi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */