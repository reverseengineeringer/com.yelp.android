package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.appdatasearch.UsageInfo;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;

class iv$1
  extends iv.b<Status>
{
  iv$1(iv paramiv, GoogleApiClient paramGoogleApiClient, String paramString, UsageInfo[] paramArrayOfUsageInfo)
  {
    super(paramGoogleApiClient);
  }
  
  protected void a(ir paramir)
    throws RemoteException
  {
    paramir.a(new iv.c(this), a, b);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.iv.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */