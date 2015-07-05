package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.common.ConnectionResult;

public final class jl$h
  extends jl<T>.b<Boolean>
{
  public final Bundle MV;
  public final IBinder MW;
  public final int statusCode;
  
  public jl$h(jl paramjl, int paramInt, IBinder paramIBinder, Bundle paramBundle)
  {
    super(paramjl, Boolean.valueOf(true));
    statusCode = paramInt;
    MW = paramIBinder;
    MV = paramBundle;
  }
  
  protected void b(Boolean paramBoolean)
  {
    if (paramBoolean == null)
    {
      jl.a(MQ, 1, null);
      return;
    }
    switch (statusCode)
    {
    default: 
      if (MV == null) {
        break;
      }
    }
    for (paramBoolean = (PendingIntent)MV.getParcelable("pendingIntent");; paramBoolean = null)
    {
      if (jl.c(MQ) != null)
      {
        jn.J(jl.d(MQ)).b(MQ.bK(), jl.c(MQ));
        jl.a(MQ, null);
      }
      jl.a(MQ, 1, null);
      jl.a(MQ).b(new ConnectionResult(statusCode, paramBoolean));
      return;
      try
      {
        paramBoolean = MW.getInterfaceDescriptor();
        if (MQ.bL().equals(paramBoolean))
        {
          paramBoolean = MQ.l(MW);
          if (paramBoolean != null)
          {
            jl.a(MQ, 3, paramBoolean);
            jl.a(MQ).dU();
            return;
          }
        }
      }
      catch (RemoteException paramBoolean)
      {
        jn.J(jl.d(MQ)).b(MQ.bK(), jl.c(MQ));
        jl.a(MQ, null);
        jl.a(MQ, 1, null);
        jl.a(MQ).b(new ConnectionResult(8, null));
        return;
      }
      jl.a(MQ, 1, null);
      throw new IllegalStateException("A fatal developer error has occurred. Check the logs for further information.");
    }
  }
  
  protected void hx() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jl.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */