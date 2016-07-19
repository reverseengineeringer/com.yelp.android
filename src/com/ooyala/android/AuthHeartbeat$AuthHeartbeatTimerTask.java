package com.ooyala.android;

import android.os.Handler;
import java.util.TimerTask;

class AuthHeartbeat$AuthHeartbeatTimerTask
  extends TimerTask
{
  AuthHeartbeat$AuthHeartbeatTimerTask(AuthHeartbeat paramAuthHeartbeat) {}
  
  private void sendError(final OoyalaException paramOoyalaException)
  {
    AuthHeartbeat.access$200(this$0).post(new Runnable()
    {
      public void run()
      {
        AuthHeartbeat.access$100(this$0).onAuthHeartbeatError(paramOoyalaException);
      }
    });
  }
  
  private void tryHeartbeat(int paramInt)
  {
    OoyalaException localOoyalaException1 = null;
    try
    {
      if (!AuthHeartbeat.access$000(this$0).authorizeHeartbeat()) {
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

/* Location:
 * Qualified Name:     com.ooyala.android.AuthHeartbeat.AuthHeartbeatTimerTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */