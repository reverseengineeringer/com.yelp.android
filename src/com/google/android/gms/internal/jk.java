package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.zza.zzb;

public final class jk
  implements jj
{
  public PendingResult<Status> a(GoogleApiClient paramGoogleApiClient)
  {
    paramGoogleApiClient.zzb(new jl.a(paramGoogleApiClient)
    {
      protected void a(jm paramAnonymousjm)
        throws RemoteException
      {
        ((jo)paramAnonymousjm.zzqJ()).a(new jk.a(this));
      }
    });
  }
  
  private static class a
    extends jh
  {
    private final zza.zzb<Status> a;
    
    public a(zza.zzb<Status> paramzzb)
    {
      a = paramzzb;
    }
    
    public void a(int paramInt)
      throws RemoteException
    {
      a.zzs(new Status(paramInt));
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */