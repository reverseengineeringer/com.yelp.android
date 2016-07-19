package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.zza.zzb;

class jk$a
  extends jh
{
  private final zza.zzb<Status> a;
  
  public jk$a(zza.zzb<Status> paramzzb)
  {
    a = paramzzb;
  }
  
  public void a(int paramInt)
    throws RemoteException
  {
    a.zzs(new Status(paramInt));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jk.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */