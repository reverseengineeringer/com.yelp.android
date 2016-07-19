package com.google.android.gms.common.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.Api.zzd;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;

public class zzad<T extends IInterface>
  extends zzj<T>
{
  private final Api.zzd<T> zzamx;
  
  public zzad(Context paramContext, Looper paramLooper, int paramInt, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener, zzf paramzzf, Api.zzd paramzzd)
  {
    super(paramContext, paramLooper, paramInt, paramzzf, paramConnectionCallbacks, paramOnConnectionFailedListener);
    zzamx = paramzzd;
  }
  
  protected T zzW(IBinder paramIBinder)
  {
    return zzamx.zzW(paramIBinder);
  }
  
  protected void zzc(int paramInt, T paramT)
  {
    zzamx.zza(paramInt, paramT);
  }
  
  protected String zzgu()
  {
    return zzamx.zzgu();
  }
  
  protected String zzgv()
  {
    return zzamx.zzgv();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.zzad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */