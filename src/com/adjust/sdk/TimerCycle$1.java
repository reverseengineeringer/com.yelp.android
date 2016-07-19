package com.adjust.sdk;

class TimerCycle$1
  implements Runnable
{
  TimerCycle$1(TimerCycle paramTimerCycle) {}
  
  public void run()
  {
    TimerCycle.access$100(this$0).verbose("%s fired", new Object[] { TimerCycle.access$000(this$0) });
    TimerCycle.access$200(this$0).run();
  }
}

/* Location:
 * Qualified Name:     com.adjust.sdk.TimerCycle.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */