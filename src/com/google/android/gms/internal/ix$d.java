package com.google.android.gms.internal;

import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.clearcut.LogEventParcelable;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;

final class ix$d
  extends ix.c<Status>
{
  private final LogEventParcelable b;
  
  ix$d(ix paramix, LogEventParcelable paramLogEventParcelable, GoogleApiClient paramGoogleApiClient)
  {
    super(paramGoogleApiClient);
    b = paramLogEventParcelable;
  }
  
  protected Status a(Status paramStatus)
  {
    return paramStatus;
  }
  
  protected void a(iy paramiy)
    throws RemoteException
  {
    iz.a local1 = new iz.a()
    {
      public void a(Status paramAnonymousStatus)
      {
        zza(paramAnonymousStatus);
      }
    };
    try
    {
      ix.a(b);
      paramiy.a(local1, b);
      return;
    }
    catch (Throwable paramiy)
    {
      Log.e("ClearcutLoggerApiImpl", "MessageNanoProducer " + b.f.toString() + " threw: " + paramiy.toString());
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof d)) {
      return false;
    }
    paramObject = (d)paramObject;
    return b.equals(b);
  }
  
  public String toString()
  {
    return "MethodImpl(" + b + ")";
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ix.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */