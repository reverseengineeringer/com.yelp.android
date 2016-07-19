package com.google.android.gms.ads.internal.request;

import android.content.Context;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.common.internal.zzj;
import com.google.android.gms.internal.fv;

@fv
public class d
  extends zzj<i>
{
  final int a;
  
  public d(Context paramContext, Looper paramLooper, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener, int paramInt)
  {
    super(paramContext, paramLooper, 8, zzf.zzat(paramContext), paramConnectionCallbacks, paramOnConnectionFailedListener);
    a = paramInt;
  }
  
  public i a()
    throws DeadObjectException
  {
    return (i)super.zzqJ();
  }
  
  protected i a(IBinder paramIBinder)
  {
    return i.a.a(paramIBinder);
  }
  
  protected String zzgu()
  {
    return "com.google.android.gms.ads.service.START";
  }
  
  protected String zzgv()
  {
    return "com.google.android.gms.ads.internal.request.IAdRequestService";
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.request.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */