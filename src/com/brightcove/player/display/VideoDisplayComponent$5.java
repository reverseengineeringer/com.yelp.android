package com.brightcove.player.display;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnSeekCompleteListener;
import android.util.Log;
import com.brightcove.player.event.EventEmitter;
import java.util.HashMap;
import java.util.Map;

class VideoDisplayComponent$5
  implements MediaPlayer.OnSeekCompleteListener
{
  VideoDisplayComponent$5(VideoDisplayComponent paramVideoDisplayComponent) {}
  
  public void onSeekComplete(MediaPlayer paramMediaPlayer)
  {
    Log.v(VideoDisplayComponent.access$1200(), "onSeekComplete: fromSeekPosition = " + VideoDisplayComponent.access$2100(this$0) + ", seekPosition = " + this$0.seekPosition + ", currentPosition = " + paramMediaPlayer.getCurrentPosition());
    if (paramMediaPlayer.getCurrentPosition() < this$0.seekPosition) {
      paramMediaPlayer.seekTo(this$0.seekPosition);
    }
    for (;;)
    {
      this$0.seekPosition = -1;
      return;
      if (VideoDisplayComponent.access$2100(this$0) != -1)
      {
        HashMap localHashMap = new HashMap();
        localHashMap.put("playheadPosition", Integer.valueOf(paramMediaPlayer.getCurrentPosition()));
        localHashMap.put("seekPosition", Integer.valueOf(this$0.seekPosition));
        localHashMap.put("fromSeekPosition", Integer.valueOf(VideoDisplayComponent.access$2100(this$0)));
        localHashMap.put("video", this$0.currentVideo);
        VideoDisplayComponent.access$3200(this$0).emit("didSeekTo", localHashMap);
        VideoDisplayComponent.access$2102(this$0, -1);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.display.VideoDisplayComponent.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */