package com.brightcove.player.analytics;

import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;

class Analytics$3
  implements EventListener
{
  Analytics$3(Analytics paramAnalytics) {}
  
  public void processEvent(Event paramEvent)
  {
    if (Analytics.access$200(this$0) - Analytics.access$300(this$0) > 0) {
      Analytics.access$400(this$0, paramEvent, Analytics.access$300(this$0), Analytics.access$200(this$0));
    }
    Analytics.access$500(this$0, paramEvent, "video_impression", null);
    Analytics.access$302(this$0, Analytics.access$202(this$0, 0));
    Analytics.access$602(this$0, false);
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.analytics.Analytics.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */