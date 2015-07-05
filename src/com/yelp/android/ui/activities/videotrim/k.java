package com.yelp.android.ui.activities.videotrim;

import android.media.MediaPlayer.OnSeekCompleteListener;
import java.util.TimerTask;

class k
  extends TimerTask
{
  private k(BetterMediaPlayer paramBetterMediaPlayer) {}
  
  public void run()
  {
    BetterMediaPlayer.a(a, BetterMediaPlayer.PlayerState.NORMAL);
    BetterMediaPlayer.k(a);
    if (BetterMediaPlayer.l(a) != null) {
      BetterMediaPlayer.l(a).onSeekComplete(a);
    }
    if (BetterMediaPlayer.m(a))
    {
      BetterMediaPlayer.n(a);
      return;
    }
    BetterMediaPlayer.o(a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.videotrim.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */