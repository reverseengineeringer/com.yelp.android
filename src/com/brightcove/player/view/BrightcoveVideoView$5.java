package com.brightcove.player.view;

import android.util.Log;
import com.brightcove.player.event.Default;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;

class BrightcoveVideoView$5
  implements EventListener
{
  BrightcoveVideoView$5(BrightcoveVideoView paramBrightcoveVideoView) {}
  
  @Default
  public void processEvent(Event paramEvent)
  {
    int i = paramEvent.getIntegerProperty("duration");
    if (i > -1)
    {
      Log.d(BrightcoveVideoView.access$100(), String.format("Changing duration to %d.", new Object[] { Integer.valueOf(i) }));
      this$0.duration = i;
    }
    i = paramEvent.getIntegerProperty("playheadPosition");
    if (i > -1)
    {
      Log.d(BrightcoveVideoView.access$100(), String.format("Changing playheadPosition to %d.", new Object[] { Integer.valueOf(i) }));
      this$0.playheadPosition = i;
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.view.BrightcoveVideoView.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */