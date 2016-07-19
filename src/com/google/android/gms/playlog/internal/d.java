package com.google.android.gms.playlog.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.internal.lc.a;

public class d
  implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener
{
  private final lc.a a;
  private f b;
  private boolean c;
  
  public d(lc.a parama)
  {
    a = parama;
    b = null;
    c = true;
  }
  
  public void a(f paramf)
  {
    b = paramf;
  }
  
  public void a(boolean paramBoolean)
  {
    c = paramBoolean;
  }
  
  public void onConnected(Bundle paramBundle)
  {
    b.a(false);
    if ((c) && (a != null)) {
      a.b();
    }
    c = false;
  }
  
  public void onConnectionFailed(ConnectionResult paramConnectionResult)
  {
    b.a(true);
    if ((c) && (a != null))
    {
      if (!paramConnectionResult.hasResolution()) {
        break label48;
      }
      a.a(paramConnectionResult.getResolution());
    }
    for (;;)
    {
      c = false;
      return;
      label48:
      a.c();
    }
  }
  
  public void onConnectionSuspended(int paramInt)
  {
    b.a(true);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.playlog.internal.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */