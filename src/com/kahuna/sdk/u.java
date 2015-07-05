package com.kahuna.sdk;

import java.util.Timer;
import java.util.TimerTask;

class u
  extends Timer
{
  private long b = -1L;
  
  private u(h paramh) {}
  
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
 * Qualified Name:     com.kahuna.sdk.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */