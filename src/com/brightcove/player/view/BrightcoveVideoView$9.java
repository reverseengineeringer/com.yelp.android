package com.brightcove.player.view;

import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;

class BrightcoveVideoView$9
  implements EventListener
{
  BrightcoveVideoView$9(BrightcoveVideoView paramBrightcoveVideoView) {}
  
  public void processEvent(Event paramEvent)
  {
    int i = paramEvent.getIntegerProperty("seekPosition");
    if (i > -1) {
      this$0.playheadPosition = i;
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.view.BrightcoveVideoView.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */