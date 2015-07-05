package com.brightcove.player.display;

import android.media.MediaPlayer;
import android.util.Log;
import com.brightcove.player.event.Default;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.media.DeliveryType;
import com.brightcove.player.model.Source;
import com.brightcove.player.view.BrightcoveSurfaceView;

class VideoDisplayComponent$OnWillInterruptContentListener
  implements EventListener
{
  private VideoDisplayComponent$OnWillInterruptContentListener(VideoDisplayComponent paramVideoDisplayComponent) {}
  
  @Default
  public void processEvent(Event paramEvent)
  {
    Log.v(VideoDisplayComponent.access$1200(), "OnWillInterruptContentListener: mediaPlayer = " + VideoDisplayComponent.access$700(this$0) + ", hasPrepared = " + VideoDisplayComponent.access$800(this$0) + ", hasSurface = " + this$0.hasSurface + ", currentSource = " + this$0.currentSource);
    if ((VideoDisplayComponent.access$700(this$0) != null) && (VideoDisplayComponent.access$800(this$0)) && (this$0.hasSurface) && (VideoDisplayComponent.access$700(this$0).isPlaying()))
    {
      Log.v(VideoDisplayComponent.access$1200(), "OnWillInterruptContentListener: isPlaying");
      if ((this$0.currentSource == null) || (this$0.currentSource.getDeliveryType() == DeliveryType.HLS)) {
        break label177;
      }
      VideoDisplayComponent.access$700(this$0).pause();
    }
    for (;;)
    {
      this$0.brightcoveSurfaceView.setVisibility(4);
      return;
      label177:
      this$0.destroyPlayer();
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.display.VideoDisplayComponent.OnWillInterruptContentListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */