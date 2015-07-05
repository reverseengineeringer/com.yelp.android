package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;

@ey
public class fg
  extends jl<fl>
{
  final int qg;
  
  public fg(Context paramContext, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener, int paramInt)
  {
    super(paramContext, paramContext.getMainLooper(), paramConnectionCallbacks, paramOnConnectionFailedListener, new String[0]);
    qg = paramInt;
  }
  
  protected fl B(IBinder paramIBinder)
  {
    return fl.a.C(paramIBinder);
  }
  
  protected void a(jt paramjt, jl.e parame)
  {
    Bundle localBundle = new Bundle();
    paramjt.g(parame, qg, getContext().getPackageName(), localBundle);
  }
  
  protected String bK()
  {
    return "com.google.android.gms.ads.service.START";
  }
  
  protected String bL()
  {
    return "com.google.android.gms.ads.internal.request.IAdRequestService";
  }
  
  public fl cL()
  {
    return (fl)super.hw();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */