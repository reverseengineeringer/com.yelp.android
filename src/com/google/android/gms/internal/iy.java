package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.clearcut.LogEventParcelable;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.common.internal.zzj;

public class iy
  extends zzj<ja>
{
  public iy(Context paramContext, Looper paramLooper, zzf paramzzf, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    super(paramContext, paramLooper, 40, paramzzf, paramConnectionCallbacks, paramOnConnectionFailedListener);
  }
  
  protected ja a(IBinder paramIBinder)
  {
    return ja.a.a(paramIBinder);
  }
  
  public void a(iz paramiz, LogEventParcelable paramLogEventParcelable)
    throws RemoteException
  {
    ((ja)zzqJ()).a(paramiz, paramLogEventParcelable);
  }
  
  protected String zzgu()
  {
    return "com.google.android.gms.clearcut.service.START";
  }
  
  protected String zzgv()
  {
    return "com.google.android.gms.clearcut.internal.IClearcutLoggerService";
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.iy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */