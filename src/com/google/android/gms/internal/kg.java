package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;

public class kg
  extends jl<ki>
{
  public kg(Context paramContext, Looper paramLooper, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener, String... paramVarArgs)
  {
    super(paramContext, paramLooper, paramConnectionCallbacks, paramOnConnectionFailedListener, paramVarArgs);
  }
  
  protected ki T(IBinder paramIBinder)
  {
    return ki.a.V(paramIBinder);
  }
  
  protected void a(jt paramjt, jl.e parame)
  {
    paramjt.j(parame, 6587000, getContext().getPackageName());
  }
  
  public String bK()
  {
    return "com.google.android.gms.common.service.START";
  }
  
  protected String bL()
  {
    return "com.google.android.gms.common.internal.service.ICommonService";
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.kg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */