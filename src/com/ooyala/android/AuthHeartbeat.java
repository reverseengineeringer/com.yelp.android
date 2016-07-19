package com.ooyala.android;

import android.os.Handler;
import java.util.Timer;
import java.util.TimerTask;

class AuthHeartbeat
{
  private PlayerAPIClient _apiClient;
  private OnAuthHeartbeatErrorListener _authHeartbeatErrorListener;
  private Handler _handler = new Handler();
  private Timer _timer = new Timer("AuthHeartbeat");
  
  public AuthHeartbeat(PlayerAPIClient paramPlayerAPIClient)
  {
    _apiClient = paramPlayerAPIClient;
  }
  
  public void setAuthHeartbeatErrorListener(OnAuthHeartbeatErrorListener paramOnAuthHeartbeatErrorListener)
  {
    _authHeartbeatErrorListener = paramOnAuthHeartbeatErrorListener;
  }
  
  public void start()
  {
    stop();
    _timer = new Timer("AuthHeartbeat");
    _timer.schedule(new AuthHeartbeatTimerTask(), 0L);
    _timer.scheduleAtFixedRate(new AuthHeartbeatTimerTask(), 0L, _apiClient.getHeartbeatInterval() * 1000);
  }
  
  public void stop()
  {
    if (_timer != null) {
      _timer.cancel();
    }
    _timer = null;
  }
  
  class AuthHeartbeatTimerTask
    extends TimerTask
  {
    AuthHeartbeatTimerTask() {}
    
    private void sendError(final OoyalaException paramOoyalaException)
    {
      _handler.post(new Runnable()
      {
        public void run()
        {
          _authHeartbeatErrorListener.onAuthHeartbeatError(paramOoyalaException);
        }
      });
    }
    
    private void tryHeartbeat(int paramInt)
    {
      OoyalaException localOoyalaException1 = null;
      try
      {
        if (!_apiClient.authorizeHeartbeat()) {
          localOoyalaException1 = new OoyalaException(OoyalaException.OoyalaErrorCode.ERROR_AUTHORIZATION_HEARTBEAT_FAILED, "Unauthorized");
        }
        if (localOoyalaException1 != null)
        {
          if (paramInt > 0) {
            tryHeartbeat(paramInt - 1);
          }
        }
        else {
          return;
        }
        sendError(localOoyalaException1);
        return;
      }
      catch (OoyalaException localOoyalaException2)
      {
        for (;;) {}
      }
    }
    
    public void run()
    {
      tryHeartbeat(3);
    }
  }
  
  public static abstract interface OnAuthHeartbeatErrorListener
  {
    public abstract void onAuthHeartbeatError(OoyalaException paramOoyalaException);
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.AuthHeartbeat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */