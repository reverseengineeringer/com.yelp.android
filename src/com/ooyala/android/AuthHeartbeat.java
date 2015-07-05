package com.ooyala.android;

import android.os.Handler;
import java.util.Timer;

class AuthHeartbeat
{
  private PlayerAPIClient _apiClient;
  private AuthHeartbeat.OnAuthHeartbeatErrorListener _authHeartbeatErrorListener;
  private Handler _handler = new Handler();
  private Timer _timer = new Timer("AuthHeartbeat");
  
  public AuthHeartbeat(PlayerAPIClient paramPlayerAPIClient)
  {
    _apiClient = paramPlayerAPIClient;
  }
  
  public void setAuthHeartbeatErrorListener(AuthHeartbeat.OnAuthHeartbeatErrorListener paramOnAuthHeartbeatErrorListener)
  {
    _authHeartbeatErrorListener = paramOnAuthHeartbeatErrorListener;
  }
  
  public void start()
  {
    stop();
    _timer = new Timer("AuthHeartbeat");
    _timer.schedule(new AuthHeartbeat.AuthHeartbeatTimerTask(this), 0L);
    _timer.scheduleAtFixedRate(new AuthHeartbeat.AuthHeartbeatTimerTask(this), 0L, _apiClient.getHeartbeatInterval() * 1000);
  }
  
  public void stop()
  {
    if (_timer != null) {
      _timer.cancel();
    }
    _timer = null;
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.AuthHeartbeat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */