package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;

public class nc
  extends jl<ni>
{
  protected final np<ni> Ee = new nc.1(this);
  private final String agD;
  
  public nc(Context paramContext, Looper paramLooper, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener, String paramString)
  {
    super(paramContext, paramLooper, paramConnectionCallbacks, paramOnConnectionFailedListener, new String[0]);
    agD = paramString;
  }
  
  protected void a(jt paramjt, jl.e parame)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("client_name", agD);
    paramjt.e(parame, 6587000, getContext().getPackageName(), localBundle);
  }
  
  protected ni aM(IBinder paramIBinder)
  {
    return ni.a.aO(paramIBinder);
  }
  
  protected String bK()
  {
    return "com.google.android.location.internal.GoogleLocationManagerService.START";
  }
  
  protected String bL()
  {
    return "com.google.android.gms.location.internal.IGoogleLocationManagerService";
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.nc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */