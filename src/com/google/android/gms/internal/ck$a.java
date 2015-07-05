package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;

public final class ck$a
  implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener
{
  private final Object mH = new Object();
  private final ck.b qe;
  private final cl qf;
  
  public ck$a(Context paramContext, ck.b paramb)
  {
    this(paramContext, paramb, false);
  }
  
  ck$a(Context paramContext, ck.b paramb, boolean paramBoolean)
  {
    qe = paramb;
    qf = new cl(paramContext, this, this, 6587000);
    if (!paramBoolean) {
      qf.connect();
    }
  }
  
  public void onConnected(Bundle paramBundle)
  {
    paramBundle = bn.by();
    Object localObject2 = mH;
    for (;;)
    {
      try
      {
        Object localObject1 = qf.bM();
        if (localObject1 != null)
        {
          localObject1 = ((cm)localObject1).bN();
          continue;
        }
      }
      catch (IllegalStateException localIllegalStateException)
      {
        localIllegalStateException = localIllegalStateException;
        gr.d("Error when get Gservice values", localIllegalStateException);
        if ((qf.isConnected()) || (qf.isConnecting()))
        {
          qf.disconnect();
          continue;
        }
      }
      catch (RemoteException localRemoteException)
      {
        gr.d("Error when get Gservice values", localRemoteException);
        if ((qf.isConnected()) || (qf.isConnecting()))
        {
          qf.disconnect();
          continue;
        }
      }
      finally
      {
        if ((qf.isConnected()) || (qf.isConnecting())) {
          qf.disconnect();
        }
      }
      Bundle localBundle = paramBundle;
    }
  }
  
  public void onConnectionFailed(ConnectionResult paramConnectionResult)
  {
    qe.a(bn.by());
  }
  
  public void onConnectionSuspended(int paramInt)
  {
    gr.S("Disconnected from remote ad request service.");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ck.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */