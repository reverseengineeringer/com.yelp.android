package com.brightcove.player.view;

import com.brightcove.player.event.Default;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.model.Video;
import java.util.ArrayList;
import java.util.Map;

class BrightcoveVideoView$6
  implements EventListener
{
  BrightcoveVideoView$6(BrightcoveVideoView paramBrightcoveVideoView) {}
  
  @Default
  public void processEvent(Event paramEvent)
  {
    this$0.onPrepared();
    this$0.attachMediaController();
    paramEvent = (Video)properties.get("video");
    if ((paramEvent != null) && (!paramEvent.equals(BrightcoveVideoView.access$200(this$0))) && (BrightcoveVideoView.access$300(this$0).indexOf(paramEvent) >= 0)) {
      BrightcoveVideoView.access$408(this$0);
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.view.BrightcoveVideoView.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */