package com.ooyala.android;

class AuthHeartbeat$AuthHeartbeatTimerTask$1
  implements Runnable
{
  AuthHeartbeat$AuthHeartbeatTimerTask$1(AuthHeartbeat.AuthHeartbeatTimerTask paramAuthHeartbeatTimerTask, OoyalaException paramOoyalaException) {}
  
  public void run()
  {
    AuthHeartbeat.access$100(this$1.this$0).onAuthHeartbeatError(val$e);
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.AuthHeartbeat.AuthHeartbeatTimerTask.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */