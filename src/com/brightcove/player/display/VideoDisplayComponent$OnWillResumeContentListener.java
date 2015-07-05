package com.brightcove.player.display;

import android.util.Log;
import com.brightcove.player.event.Default;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.view.BrightcoveSurfaceView;
import java.util.Map;

class VideoDisplayComponent$OnWillResumeContentListener
  implements EventListener
{
  private VideoDisplayComponent$OnWillResumeContentListener(VideoDisplayComponent paramVideoDisplayComponent) {}
  
  @Default
  public void processEvent(Event paramEvent)
  {
    this$0.brightcoveSurfaceView.setVisibility(0);
    paramEvent = (Event)properties.get("original");
    Log.v(VideoDisplayComponent.access$1200(), "OnWillResumeContentListener: originalEvent = " + paramEvent);
    if (paramEvent != null) {
      VideoDisplayComponent.access$2800(this$0).emit(paramEvent.getType(), properties);
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.display.VideoDisplayComponent.OnWillResumeContentListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */