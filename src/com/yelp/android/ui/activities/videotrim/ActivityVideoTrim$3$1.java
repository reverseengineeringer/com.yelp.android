package com.yelp.android.ui.activities.videotrim;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnPreparedListener;

class ActivityVideoTrim$3$1
  implements MediaPlayer.OnPreparedListener
{
  ActivityVideoTrim$3$1(ActivityVideoTrim.3 param3) {}
  
  public void onPrepared(MediaPlayer paramMediaPlayer)
  {
    ActivityVideoTrim.c(a.a).start();
    ActivityVideoTrim.f(a.a).a(ActivityVideoTrim.c(a.a));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.videotrim.ActivityVideoTrim.3.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */