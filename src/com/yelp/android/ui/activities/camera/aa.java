package com.yelp.android.ui.activities.camera;

import com.yelp.android.ui.activities.videotrim.BetterMediaPlayer;
import java.util.TimerTask;

class aa
  extends TimerTask
{
  aa(z paramz) {}
  
  public void run()
  {
    if (VideoPreviewFragment.a(a.b) != null) {
      VideoPreviewFragment.a(a.b).seekTo(VideoPreviewFragment.g(a.b));
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.camera.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */