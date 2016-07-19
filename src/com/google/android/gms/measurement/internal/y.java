package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.common.internal.zzj;

public class y
  extends zzj<w>
{
  public y(Context paramContext, Looper paramLooper, zzf paramzzf, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    super(paramContext, paramLooper, 93, paramzzf, paramConnectionCallbacks, paramOnConnectionFailedListener);
  }
  
  public w a(IBinder paramIBinder)
  {
    return w.a.a(paramIBinder);
  }
  
  protected String zzgu()
  {
    return "com.google.android.gms.measurement.START";
  }
  
  protected String zzgv()
  {
    return "com.google.android.gms.measurement.internal.IMeasurementService";
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.measurement.internal.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */