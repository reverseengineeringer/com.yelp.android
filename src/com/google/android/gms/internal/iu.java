package com.google.android.gms.internal;

import android.content.Context;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.common.internal.zzj;

public class iu
  extends zzj<ir>
{
  public iu(Context paramContext, Looper paramLooper, zzf paramzzf, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    super(paramContext, paramLooper, 19, paramzzf, paramConnectionCallbacks, paramOnConnectionFailedListener);
  }
  
  public ir a()
    throws DeadObjectException
  {
    return (ir)zzqJ();
  }
  
  protected ir a(IBinder paramIBinder)
  {
    return ir.a.a(paramIBinder);
  }
  
  protected String zzgu()
  {
    return "com.google.android.gms.icing.LIGHTWEIGHT_INDEX_SERVICE";
  }
  
  protected String zzgv()
  {
    return "com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearch";
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.iu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */