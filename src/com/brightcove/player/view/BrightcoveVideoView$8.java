package com.brightcove.player.view;

import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;

class BrightcoveVideoView$8
  implements EventListener
{
  BrightcoveVideoView$8(BrightcoveVideoView paramBrightcoveVideoView) {}
  
  public void processEvent(Event paramEvent)
  {
    BrightcoveVideoView.access$702(this$0, paramEvent.getIntegerProperty("percentComplete"));
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.view.BrightcoveVideoView.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */