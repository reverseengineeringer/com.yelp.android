package com.google.android.gms.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesClient.ConnectionCallbacks;
import com.google.android.gms.common.GooglePlayServicesClient.OnConnectionFailedListener;

public class ou
  implements GooglePlayServicesClient.ConnectionCallbacks, GooglePlayServicesClient.OnConnectionFailedListener
{
  private ox amU;
  private final op.a ane;
  private boolean anf;
  
  public ou(op.a parama)
  {
    ane = parama;
    amU = null;
    anf = true;
  }
  
  public void T(boolean paramBoolean)
  {
    anf = paramBoolean;
  }
  
  public void a(ox paramox)
  {
    amU = paramox;
  }
  
  public void onConnected(Bundle paramBundle)
  {
    amU.U(false);
    if ((anf) && (ane != null)) {
      ane.on();
    }
    anf = false;
  }
  
  public void onConnectionFailed(ConnectionResult paramConnectionResult)
  {
    amU.U(true);
    if ((anf) && (ane != null))
    {
      if (!paramConnectionResult.hasResolution()) {
        break label48;
      }
      ane.d(paramConnectionResult.getResolution());
    }
    for (;;)
    {
      anf = false;
      return;
      label48:
      ane.oo();
    }
  }
  
  public void onDisconnected()
  {
    amU.U(true);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ou
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */