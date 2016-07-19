package com.google.android.gms.common.api.internal;

import com.google.android.gms.signin.internal.SignInResponse;
import com.google.android.gms.signin.internal.b;
import java.lang.ref.WeakReference;

class zzh$zzd
  extends b
{
  private final WeakReference<zzh> zzahD;
  
  zzh$zzd(zzh paramzzh)
  {
    zzahD = new WeakReference(paramzzh);
  }
  
  public void zzb(final SignInResponse paramSignInResponse)
  {
    final zzh localzzh = (zzh)zzahD.get();
    if (localzzh == null) {
      return;
    }
    zzh.zzd(localzzh).zza(new zzl.zza(localzzh)
    {
      public void zzpt()
      {
        zzh.zza(localzzh, paramSignInResponse);
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.internal.zzh.zzd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */