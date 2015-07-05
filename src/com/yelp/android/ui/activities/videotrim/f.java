package com.yelp.android.ui.activities.videotrim;

import android.view.TextureView;

class f
  implements Runnable
{
  f(BetterMediaPlayer paramBetterMediaPlayer, int paramInt) {}
  
  public void run()
  {
    int i = BetterMediaPlayer.c(b);
    BetterMediaPlayer.a(b, BetterMediaPlayer.d(b).getBitmap());
    BetterMediaPlayer.e(b);
    if ((i < a) && (a < i + 1000))
    {
      BetterMediaPlayer.a(b, BetterMediaPlayer.PlayerState.FROZEN_AND_WAITING);
      BetterMediaPlayer.a(b, a - i);
      return;
    }
    BetterMediaPlayer.a(b, BetterMediaPlayer.PlayerState.LOOKING_FOR_KEYFRAME);
    BetterMediaPlayer.b(b, a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.videotrim.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */