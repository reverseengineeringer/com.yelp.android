package com.brightcove.player.display;

import android.media.MediaPlayer;
import android.util.Log;
import com.brightcove.player.event.Default;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import java.util.Map;

class VideoDisplayComponent$OnSetVolumeListener
  implements EventListener
{
  private VideoDisplayComponent$OnSetVolumeListener(VideoDisplayComponent paramVideoDisplayComponent) {}
  
  @Default
  public void processEvent(Event paramEvent)
  {
    Log.v(VideoDisplayComponent.access$1200(), "OnSetVolumeListener: mediaPlayer = " + VideoDisplayComponent.access$700(this$0));
    if ((!properties.containsKey("leftVolume")) || (!properties.containsKey("rightVolume")))
    {
      Log.e(VideoDisplayComponent.access$1200(), "SET_VOLUME requires LEFT_VOLUME and RIGHT_VOLUME properties.");
      return;
    }
    float f1 = ((Float)properties.get("leftVolume")).floatValue();
    float f2 = ((Float)properties.get("rightVolume")).floatValue();
    Log.v(VideoDisplayComponent.access$1200(), "OnSetVolumeListener: leftVolume = " + f1 + " rightVolume = " + f2);
    if ((f1 < 0.0F) || (f1 > 1.0F) || (f2 < 0.0F) || (f2 > 1.0F))
    {
      Log.e(VideoDisplayComponent.access$1200(), "LEFT_VOLUME and RIGHT_VOLUME must be between 0.0f and 1.0f: " + f1 + ", " + f2);
      return;
    }
    VideoDisplayComponent.access$700(this$0).setVolume(f1, f2);
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.display.VideoDisplayComponent.OnSetVolumeListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */