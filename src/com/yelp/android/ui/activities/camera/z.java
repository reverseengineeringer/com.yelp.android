package com.yelp.android.ui.activities.camera;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnPreparedListener;
import java.util.Timer;

class z
  implements MediaPlayer.OnPreparedListener
{
  public Timer a;
  
  z(VideoPreviewFragment paramVideoPreviewFragment) {}
  
  public void onPrepared(MediaPlayer paramMediaPlayer)
  {
    paramMediaPlayer.seekTo(VideoPreviewFragment.e(b));
    paramMediaPlayer.start();
    if (a != null) {
      a.cancel();
    }
    a = new Timer();
    int i = Math.max(0, VideoPreviewFragment.f(b) - VideoPreviewFragment.e(b));
    int j = VideoPreviewFragment.f(b);
    int k = VideoPreviewFragment.g(b);
    a.schedule(new aa(this), i, j - k);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.camera.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */