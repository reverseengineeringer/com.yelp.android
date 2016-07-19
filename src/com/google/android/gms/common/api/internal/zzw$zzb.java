package com.google.android.gms.common.api.internal;

import android.content.IntentSender.SendIntentException;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.l;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.zzc;
import java.util.List;

class zzw$zzb
  implements Runnable
{
  private final int zzaiJ;
  private final ConnectionResult zzaiK;
  
  public zzw$zzb(zzw paramzzw, int paramInt, ConnectionResult paramConnectionResult)
  {
    zzaiJ = paramInt;
    zzaiK = paramConnectionResult;
  }
  
  public void run()
  {
    if ((!zzw.zza(zzaiI)) || (zzw.zzb(zzaiI))) {
      return;
    }
    zzw.zza(zzaiI, true);
    zzw.zza(zzaiI, zzaiJ);
    zzw.zza(zzaiI, zzaiK);
    if (zzaiK.hasResolution()) {
      try
      {
        int i = zzaiI.getActivity().getSupportFragmentManager().f().indexOf(zzaiI);
        zzaiK.startResolutionForResult(zzaiI.getActivity(), (i + 1 << 16) + 1);
        return;
      }
      catch (IntentSender.SendIntentException localSendIntentException)
      {
        zzaiI.zzpP();
        return;
      }
    }
    if (zzaiI.zzpQ().isUserResolvableError(zzaiK.getErrorCode()))
    {
      zzaiI.zzb(zzaiJ, zzaiK);
      return;
    }
    if (zzaiK.getErrorCode() == 18)
    {
      zzaiI.zzc(zzaiJ, zzaiK);
      return;
    }
    zzw.zza(zzaiI, zzaiJ, zzaiK);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.internal.zzw.zzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */