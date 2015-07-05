package com.google.android.gms.location;

import com.google.android.gms.common.GooglePlayServicesClient;
import com.google.android.gms.common.GooglePlayServicesClient.ConnectionCallbacks;
import com.google.android.gms.common.GooglePlayServicesClient.OnConnectionFailedListener;
import com.google.android.gms.internal.nk;

@Deprecated
public class c
  implements GooglePlayServicesClient
{
  private final nk agq;
  
  public void connect()
  {
    agq.connect();
  }
  
  public void disconnect()
  {
    agq.disconnect();
  }
  
  public boolean isConnected()
  {
    return agq.isConnected();
  }
  
  public boolean isConnecting()
  {
    return agq.isConnecting();
  }
  
  public boolean isConnectionCallbacksRegistered(GooglePlayServicesClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    return agq.isConnectionCallbacksRegistered(paramConnectionCallbacks);
  }
  
  public boolean isConnectionFailedListenerRegistered(GooglePlayServicesClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    return agq.isConnectionFailedListenerRegistered(paramOnConnectionFailedListener);
  }
  
  public void registerConnectionCallbacks(GooglePlayServicesClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    agq.registerConnectionCallbacks(paramConnectionCallbacks);
  }
  
  public void registerConnectionFailedListener(GooglePlayServicesClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    agq.registerConnectionFailedListener(paramOnConnectionFailedListener);
  }
  
  public void unregisterConnectionCallbacks(GooglePlayServicesClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    agq.unregisterConnectionCallbacks(paramConnectionCallbacks);
  }
  
  public void unregisterConnectionFailedListener(GooglePlayServicesClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    agq.unregisterConnectionFailedListener(paramOnConnectionFailedListener);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */