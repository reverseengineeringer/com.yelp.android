package com.brightcove.player.view;

import com.brightcove.player.event.Default;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;

class BrightcoveVideoView$11
  implements EventListener
{
  BrightcoveVideoView$11(BrightcoveVideoView paramBrightcoveVideoView) {}
  
  @Default
  public void processEvent(Event paramEvent)
  {
    BrightcoveVideoView.access$802(this$0, true);
    if (BrightcoveVideoView.access$900(this$0))
    {
      BrightcoveVideoView.access$902(this$0, false);
      this$0.eventEmitter.emit("play");
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.view.BrightcoveVideoView.11
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */