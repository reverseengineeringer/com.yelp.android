package com.yelp.android.ui.activities.videotrim;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;

class e
  implements MediaPlayer.OnCompletionListener
{
  e(BetterMediaPlayer paramBetterMediaPlayer) {}
  
  public void onCompletion(MediaPlayer paramMediaPlayer)
  {
    if (BetterMediaPlayer.a(a) != null) {
      BetterMediaPlayer.a(a).onCompletion(paramMediaPlayer);
    }
    if (BetterMediaPlayer.b(a)) {
      a.seekTo(0);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.videotrim.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */