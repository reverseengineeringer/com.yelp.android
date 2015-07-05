package com.brightcove.player.display;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnPreparedListener;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.util.EventUtil;
import java.util.HashMap;
import java.util.Map;

class VideoDisplayComponent$6
  implements MediaPlayer.OnPreparedListener
{
  VideoDisplayComponent$6(VideoDisplayComponent paramVideoDisplayComponent) {}
  
  public void onPrepared(MediaPlayer paramMediaPlayer)
  {
    if (!VideoDisplayComponent.access$3000(this$0))
    {
      VideoDisplayComponent.access$802(this$0, true);
      EventUtil.emit(VideoDisplayComponent.access$3300(this$0), "didSetSource", this$0.currentVideo, this$0.currentSource);
      this$0.emitVideoSize(paramMediaPlayer.getVideoWidth(), paramMediaPlayer.getVideoHeight());
      HashMap localHashMap = new HashMap();
      localHashMap.put("video", this$0.currentVideo);
      localHashMap.put("source", this$0.currentSource);
      localHashMap.put("duration", Integer.valueOf(paramMediaPlayer.getDuration()));
      VideoDisplayComponent.access$3400(this$0).emit("videoDurationChanged", localHashMap);
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.display.VideoDisplayComponent.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */