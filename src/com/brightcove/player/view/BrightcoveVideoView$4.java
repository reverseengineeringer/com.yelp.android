package com.brightcove.player.view;

import android.widget.MediaController;
import com.brightcove.player.event.Default;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;

class BrightcoveVideoView$4
  implements EventListener
{
  BrightcoveVideoView$4(BrightcoveVideoView paramBrightcoveVideoView) {}
  
  @Default
  public void processEvent(Event paramEvent)
  {
    this$0.duration = paramEvent.getIntegerProperty("duration");
    if ((this$0.brightcoveSurfaceView.isShown()) && (this$0.mediaController != null)) {
      this$0.mediaController.show();
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.view.BrightcoveVideoView.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */