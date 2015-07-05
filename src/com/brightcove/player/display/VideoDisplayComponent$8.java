package com.brightcove.player.display;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnErrorListener;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.util.ErrorUtil;
import java.util.HashMap;
import java.util.Map;

class VideoDisplayComponent$8
  implements MediaPlayer.OnErrorListener
{
  VideoDisplayComponent$8(VideoDisplayComponent paramVideoDisplayComponent) {}
  
  public boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    switch (paramInt1)
    {
    default: 
      VideoDisplayComponent.access$3002(this$0, true);
      paramMediaPlayer = new HashMap();
      paramMediaPlayer.put("video", this$0.currentVideo);
      paramMediaPlayer.put("source", this$0.currentSource);
      paramMediaPlayer.put("errorCode", Integer.valueOf(paramInt1));
      paramMediaPlayer.put("errorExtra", Integer.valueOf(paramInt2));
      paramMediaPlayer.put("errorMessage", "MediaPlayer " + ErrorUtil.getMessage("error"));
      VideoDisplayComponent.access$3500(this$0).emit("sourceNotPlayable", paramMediaPlayer);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.display.VideoDisplayComponent.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */