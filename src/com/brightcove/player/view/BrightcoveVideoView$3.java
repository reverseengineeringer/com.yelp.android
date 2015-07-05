package com.brightcove.player.view;

import com.brightcove.player.event.Default;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;

class BrightcoveVideoView$3
  implements EventListener
{
  BrightcoveVideoView$3(BrightcoveVideoView paramBrightcoveVideoView) {}
  
  @Default
  public void processEvent(Event paramEvent)
  {
    this$0.eventEmitter.emit("stop");
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.view.BrightcoveVideoView.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */