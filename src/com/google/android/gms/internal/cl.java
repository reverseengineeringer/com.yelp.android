package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;

@ey
public class cl
  extends jl<cm>
{
  final int qg;
  
  public cl(Context paramContext, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener, int paramInt)
  {
    super(paramContext, paramContext.getMainLooper(), paramConnectionCallbacks, paramOnConnectionFailedListener, new String[0]);
    qg = paramInt;
  }
  
  protected void a(jt paramjt, jl.e parame)
  {
    Bundle localBundle = new Bundle();
    paramjt.g(parame, qg, getContext().getPackageName(), localBundle);
  }
  
  protected String bK()
  {
    return "com.google.android.gms.ads.gservice.START";
  }
  
  protected String bL()
  {
    return "com.google.android.gms.ads.internal.gservice.IGservicesValueService";
  }
  
  public cm bM()
  {
    return (cm)super.hw();
  }
  
  protected cm k(IBinder paramIBinder)
  {
    return cm.a.m(paramIBinder);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */