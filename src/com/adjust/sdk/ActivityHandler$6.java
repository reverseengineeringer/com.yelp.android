package com.adjust.sdk;

class ActivityHandler$6
  implements Runnable
{
  ActivityHandler$6(ActivityHandler paramActivityHandler, AdjustEvent paramAdjustEvent) {}
  
  public void run()
  {
    if (ActivityHandler.access$1000(this$0) == null)
    {
      ActivityHandler.access$500(this$0).warn("Event triggered before first application launch.\nThis will trigger the SDK start and an install without user interaction.\nPlease check https://github.com/adjust/android_sdk#can-i-trigger-an-event-at-application-launch for more information.", new Object[0]);
      ActivityHandler.access$600(this$0);
    }
    ActivityHandler.access$1100(this$0, val$event);
  }
}

/* Location:
 * Qualified Name:     com.adjust.sdk.ActivityHandler.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */