package com.adjust.sdk;

class TimerOnce$1
  implements Runnable
{
  TimerOnce$1(TimerOnce paramTimerOnce) {}
  
  public void run()
  {
    TimerOnce.access$100(this$0).verbose("%s fired", new Object[] { TimerOnce.access$000(this$0) });
    TimerOnce.access$200(this$0).run();
    TimerOnce.access$302(this$0, null);
  }
}

/* Location:
 * Qualified Name:     com.adjust.sdk.TimerOnce.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */