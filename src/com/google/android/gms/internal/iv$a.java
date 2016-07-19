package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.appdatasearch.a;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.internal.zza.zza;

abstract class iv$a<T extends Result>
  extends zza.zza<T, iu>
{
  public iv$a(GoogleApiClient paramGoogleApiClient)
  {
    super(a.a, paramGoogleApiClient);
  }
  
  protected abstract void a(ir paramir)
    throws RemoteException;
  
  protected final void a(iu paramiu)
    throws RemoteException
  {
    a(paramiu.a());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.iv.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */