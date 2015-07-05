package com.brightcove.player.display;

import android.util.Log;
import com.brightcove.player.display.tasks.LoadImageTask;
import com.brightcove.player.event.Default;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import java.net.URI;
import java.util.Map;

class VideoStillDisplayComponent$OnSetVideoStill
  implements EventListener
{
  private VideoStillDisplayComponent$OnSetVideoStill(VideoStillDisplayComponent paramVideoStillDisplayComponent) {}
  
  @Default
  public void processEvent(Event paramEvent)
  {
    Log.v(VideoStillDisplayComponent.TAG, "OnSetVideoStill");
    VideoStillDisplayComponent.access$300(this$0);
    VideoStillDisplayComponent.HideListener localHideListener = new VideoStillDisplayComponent.HideListener(this$0, null);
    VideoStillDisplayComponent.access$402(this$0, VideoStillDisplayComponent.access$1300(this$0).once("cuePoint", localHideListener));
    VideoStillDisplayComponent.access$602(this$0, VideoStillDisplayComponent.access$1400(this$0).once("didPlay", localHideListener));
    VideoStillDisplayComponent.access$802(this$0, VideoStillDisplayComponent.access$1500(this$0).once("didSeekTo", localHideListener));
    VideoStillDisplayComponent.access$1002(this$0, VideoStillDisplayComponent.access$1600(this$0).once("willInterruptContent", localHideListener));
    paramEvent = (URI)properties.get("video_still");
    VideoStillDisplayComponent.access$202(this$0, new LoadImageTask(VideoStillDisplayComponent.access$100(this$0), VideoStillDisplayComponent.access$1700(this$0)));
    VideoStillDisplayComponent.access$200(this$0).setSuccessEventType("didSetVideoStill");
    VideoStillDisplayComponent.access$200(this$0).execute(new URI[] { paramEvent });
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.display.VideoStillDisplayComponent.OnSetVideoStill
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */