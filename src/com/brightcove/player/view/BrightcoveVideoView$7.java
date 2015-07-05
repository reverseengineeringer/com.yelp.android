package com.brightcove.player.view;

import android.media.MediaPlayer.OnCompletionListener;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;

class BrightcoveVideoView$7
  implements EventListener
{
  BrightcoveVideoView$7(BrightcoveVideoView paramBrightcoveVideoView) {}
  
  public void processEvent(Event paramEvent)
  {
    if (BrightcoveVideoView.access$500(this$0) != null) {
      BrightcoveVideoView.access$500(this$0).onCompletion(null);
    }
    this$0.playheadPosition = 0;
    BrightcoveVideoView.access$600(this$0, false);
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.view.BrightcoveVideoView.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */