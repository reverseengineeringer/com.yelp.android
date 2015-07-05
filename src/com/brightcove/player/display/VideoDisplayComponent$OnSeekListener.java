package com.brightcove.player.display;

import android.media.MediaPlayer;
import android.util.Log;
import com.brightcove.player.event.Default;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import java.util.Map;

public class VideoDisplayComponent$OnSeekListener
  implements EventListener
{
  protected VideoDisplayComponent$OnSeekListener(VideoDisplayComponent paramVideoDisplayComponent) {}
  
  @Default
  public void processEvent(Event paramEvent)
  {
    Log.v(VideoDisplayComponent.access$1200(), "OnSeekListener: mediaPlayer = " + VideoDisplayComponent.access$700(this$0));
    int i = -1;
    if (properties.containsKey("seekPosition")) {
      i = paramEvent.getIntegerProperty("seekPosition");
    }
    for (;;)
    {
      Log.v(VideoDisplayComponent.access$1200(), "OnSeekListener: position = " + i);
      if ((VideoDisplayComponent.access$700(this$0) == null) || (!VideoDisplayComponent.access$800(this$0)) || (!this$0.hasSurface)) {
        break;
      }
      this$0.seekPosition = i;
      VideoDisplayComponent.access$2102(this$0, this$0.playheadPosition);
      VideoDisplayComponent.access$700(this$0).seekTo(i);
      return;
      Log.e(VideoDisplayComponent.access$1200(), "Seek event must pass the seekPosition property");
    }
    this$0.seekPositionWhenPrepared = i;
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.display.VideoDisplayComponent.OnSeekListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */