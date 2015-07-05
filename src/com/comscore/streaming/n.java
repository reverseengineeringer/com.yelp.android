package com.comscore.streaming;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;

class n
  implements MediaPlayer.OnCompletionListener
{
  n(StreamSenseVideoView paramStreamSenseVideoView) {}
  
  public void onCompletion(MediaPlayer paramMediaPlayer)
  {
    StreamSenseVideoView.a(a, paramMediaPlayer);
    if (StreamSenseVideoView.j(a) != null) {
      StreamSenseVideoView.j(a).onCompletion(paramMediaPlayer);
    }
  }
}

/* Location:
 * Qualified Name:     com.comscore.streaming.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */