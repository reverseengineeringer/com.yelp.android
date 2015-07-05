package com.brightcove.player.view;

import com.brightcove.player.event.Default;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.model.Video;
import com.brightcove.player.util.EventUtil;
import java.util.Map;
import java.util.UUID;

class BrightcoveVideoView$17
  implements EventListener
{
  BrightcoveVideoView$17(BrightcoveVideoView paramBrightcoveVideoView, UUID paramUUID, int paramInt) {}
  
  @Default
  public void processEvent(Event paramEvent)
  {
    if (properties.get("uuid").equals(val$uniqueKey))
    {
      this$0.resetMetaData();
      BrightcoveVideoView.access$402(this$0, val$index);
      paramEvent = (Video)properties.get("nextVideo");
      if (paramEvent != null) {
        EventUtil.emit(this$0.eventEmitter, "setVideo", paramEvent);
      }
    }
    else
    {
      return;
    }
    this$0.eventEmitter.emit("setSource");
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.view.BrightcoveVideoView.17
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */