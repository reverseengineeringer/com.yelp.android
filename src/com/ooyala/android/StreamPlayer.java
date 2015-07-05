package com.ooyala.android;

import android.os.Handler;
import java.util.Timer;

public abstract class StreamPlayer
  extends Player
{
  protected static final long TIMER_DELAY = 0L;
  protected static final long TIMER_PERIOD = 250L;
  public static PlayerInfo defaultPlayerInfo = new DefaultPlayerInfo();
  protected Timer _playheadUpdateTimer = null;
  private final Handler _playheadUpdateTimerHandler = new StreamPlayer.TimerHandler(this);
  private PlayerInfo customPlayerInfo;
  
  public PlayerInfo getPlayerInfo()
  {
    if (customPlayerInfo != null) {
      return customPlayerInfo;
    }
    return defaultPlayerInfo;
  }
  
  protected void notifyTimeChanged()
  {
    setChanged();
    notifyObservers("timeChanged");
  }
  
  public void setPlayerInfo(PlayerInfo paramPlayerInfo)
  {
    customPlayerInfo = paramPlayerInfo;
  }
  
  protected void startPlayheadTimer()
  {
    if (_playheadUpdateTimer != null) {
      stopPlayheadTimer();
    }
    _playheadUpdateTimer = new Timer();
    _playheadUpdateTimer.scheduleAtFixedRate(new StreamPlayer.1(this), 0L, 250L);
  }
  
  protected void stopPlayheadTimer()
  {
    if (_playheadUpdateTimer != null)
    {
      _playheadUpdateTimer.cancel();
      _playheadUpdateTimer = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.StreamPlayer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */