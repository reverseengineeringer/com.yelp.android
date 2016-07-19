package com.google.android.gms.internal;

import android.os.Handler;
import android.os.RemoteException;
import com.google.ads.AdRequest.ErrorCode;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.d;
import com.google.ads.mediation.e;
import com.google.ads.mediation.f;
import com.google.ads.mediation.g;
import com.google.ads.mediation.h;
import com.google.android.gms.ads.internal.client.v;
import com.google.android.gms.ads.internal.util.client.a;
import com.google.android.gms.ads.internal.util.client.b;

@fv
public final class eg<NETWORK_EXTRAS extends h, SERVER_PARAMETERS extends MediationServerParameters>
  implements e, g
{
  private final du a;
  
  public eg(du paramdu)
  {
    a = paramdu;
  }
  
  public void a(d<?, ?> paramd, final AdRequest.ErrorCode paramErrorCode)
  {
    b.a("Adapter called onFailedToReceiveAd with error. " + paramErrorCode);
    if (!v.a().b())
    {
      b.d("onFailedToReceiveAd must be called on the main UI thread.");
      a.a.post(new Runnable()
      {
        public void run()
        {
          try
          {
            eg.a(eg.this).a(eh.a(paramErrorCode));
            return;
          }
          catch (RemoteException localRemoteException)
          {
            b.d("Could not call onAdFailedToLoad.", localRemoteException);
          }
        }
      });
      return;
    }
    try
    {
      a.a(eh.a(paramErrorCode));
      return;
    }
    catch (RemoteException paramd)
    {
      b.d("Could not call onAdFailedToLoad.", paramd);
    }
  }
  
  public void a(f<?, ?> paramf, final AdRequest.ErrorCode paramErrorCode)
  {
    b.a("Adapter called onFailedToReceiveAd with error " + paramErrorCode + ".");
    if (!v.a().b())
    {
      b.d("onFailedToReceiveAd must be called on the main UI thread.");
      a.a.post(new Runnable()
      {
        public void run()
        {
          try
          {
            eg.a(eg.this).a(eh.a(paramErrorCode));
            return;
          }
          catch (RemoteException localRemoteException)
          {
            b.d("Could not call onAdFailedToLoad.", localRemoteException);
          }
        }
      });
      return;
    }
    try
    {
      a.a(eh.a(paramErrorCode));
      return;
    }
    catch (RemoteException paramf)
    {
      b.d("Could not call onAdFailedToLoad.", paramf);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.eg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */