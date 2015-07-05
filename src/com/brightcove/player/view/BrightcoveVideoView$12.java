package com.brightcove.player.view;

import android.widget.MediaController;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;

class BrightcoveVideoView$12
  implements EventListener
{
  BrightcoveVideoView$12(BrightcoveVideoView paramBrightcoveVideoView) {}
  
  public void processEvent(Event paramEvent)
  {
    BrightcoveVideoView.access$600(this$0, true);
    if ((this$0.brightcoveSurfaceView.isShown()) && (this$0.mediaController != null)) {
      this$0.mediaController.show();
    }
    BrightcoveVideoView.access$1000(this$0);
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.view.BrightcoveVideoView.12
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */