package com.google.android.gms.location.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.common.internal.zzj;

public class b
  extends zzj<i>
{
  protected final p<i> a = new p()
  {
    public void a()
    {
      b.a(b.this);
    }
    
    public i b()
      throws DeadObjectException
    {
      return (i)zzqJ();
    }
  };
  private final String b;
  
  public b(Context paramContext, Looper paramLooper, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener, String paramString, zzf paramzzf)
  {
    super(paramContext, paramLooper, 23, paramzzf, paramConnectionCallbacks, paramOnConnectionFailedListener);
    b = paramString;
  }
  
  protected i a(IBinder paramIBinder)
  {
    return i.a.a(paramIBinder);
  }
  
  protected String zzgu()
  {
    return "com.google.android.location.internal.GoogleLocationManagerService.START";
  }
  
  protected String zzgv()
  {
    return "com.google.android.gms.location.internal.IGoogleLocationManagerService";
  }
  
  protected Bundle zzml()
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("client_name", b);
    return localBundle;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.internal.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */