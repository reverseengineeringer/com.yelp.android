package com.brightcove.player.view;

import android.widget.MediaController.MediaPlayerControl;

class BrightcoveVideoView$16
  implements MediaController.MediaPlayerControl
{
  BrightcoveVideoView$16(BrightcoveVideoView paramBrightcoveVideoView) {}
  
  public boolean canPause()
  {
    return this$0.canPause();
  }
  
  public boolean canSeekBackward()
  {
    return this$0.canSeekBackward();
  }
  
  public boolean canSeekForward()
  {
    return this$0.canSeekForward();
  }
  
  public int getAudioSessionId()
  {
    return 0;
  }
  
  public int getBufferPercentage()
  {
    return this$0.getBufferPercentage();
  }
  
  public int getCurrentPosition()
  {
    return this$0.getCurrentPosition() / 1000;
  }
  
  public int getDuration()
  {
    return this$0.getDuration() / 1000;
  }
  
  public boolean isPlaying()
  {
    return this$0.isPlaying();
  }
  
  public void pause()
  {
    this$0.pause();
  }
  
  public void seekTo(int paramInt)
  {
    this$0.seekTo(paramInt * 1000);
  }
  
  public void start()
  {
    this$0.start();
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.view.BrightcoveVideoView.16
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */