package com.yelp.android.ui.activities.videotrim;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnSeekCompleteListener;

class i
  implements MediaPlayer.OnSeekCompleteListener
{
  private final int b;
  private int c;
  
  public i(BetterMediaPlayer paramBetterMediaPlayer, int paramInt)
  {
    b = paramInt;
    c = paramInt;
  }
  
  public void onSeekComplete(MediaPlayer paramMediaPlayer)
  {
    if (BetterMediaPlayer.i(a) != BetterMediaPlayer.PlayerState.LOOKING_FOR_KEYFRAME) {
      return;
    }
    int i = BetterMediaPlayer.j(a);
    if ((i <= b + 100) || (c <= 100))
    {
      BetterMediaPlayer.a(a, BetterMediaPlayer.PlayerState.FROZEN_AND_WAITING);
      BetterMediaPlayer.a(a, b - i);
      return;
    }
    c -= 1000;
    BetterMediaPlayer.c(a, c);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.videotrim.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */