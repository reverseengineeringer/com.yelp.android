package com.kahuna.sdk;

import java.util.Timer;
import java.util.TimerTask;

class l$a
  extends Timer
{
  private long b = -1L;
  
  private l$a(l paraml) {}
  
  public long a()
  {
    return b;
  }
  
  public void schedule(TimerTask paramTimerTask, long paramLong)
  {
    b = (System.currentTimeMillis() + paramLong);
    super.schedule(paramTimerTask, paramLong);
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.l.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */