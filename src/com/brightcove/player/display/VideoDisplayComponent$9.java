package com.brightcove.player.display;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnInfoListener;
import android.util.Log;

class VideoDisplayComponent$9
  implements MediaPlayer.OnInfoListener
{
  VideoDisplayComponent$9(VideoDisplayComponent paramVideoDisplayComponent) {}
  
  public boolean onInfo(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    switch (paramInt1)
    {
    default: 
      Log.i(VideoDisplayComponent.access$1200(), "unknown MediaPlayer info: what = " + paramInt1);
    }
    for (;;)
    {
      return true;
      Log.i(VideoDisplayComponent.access$1200(), "MEDIA_INFO_UNKNOWN");
      continue;
      Log.i(VideoDisplayComponent.access$1200(), "MEDIA_INFO_VIDEO_TRACK_LAGGING");
      continue;
      Log.i(VideoDisplayComponent.access$1200(), "MEDIA_INFO_VIDEO_RENDERING_START");
      continue;
      Log.i(VideoDisplayComponent.access$1200(), "MEDIA_INFO_BUFFERING_START");
      continue;
      Log.i(VideoDisplayComponent.access$1200(), "MEDIA_INFO_BUFFERING_END");
      continue;
      Log.i(VideoDisplayComponent.access$1200(), "MEDIA_INFO_BAD_INTERLEAVING");
      continue;
      Log.i(VideoDisplayComponent.access$1200(), "MEDIA_INFO_NOT_SEEKABLE");
      continue;
      Log.i(VideoDisplayComponent.access$1200(), "MEDIA_INFO_METADATA_UPDATE");
      continue;
      Log.i(VideoDisplayComponent.access$1200(), "MEDIA_INFO_NETWORK_BANDWIDTH");
      continue;
      Log.i(VideoDisplayComponent.access$1200(), "MEDIA_INFO_TIMED_TEXT_ERROR");
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.display.VideoDisplayComponent.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */