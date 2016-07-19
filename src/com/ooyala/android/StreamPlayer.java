package com.ooyala.android;

import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;
import java.util.Timer;
import java.util.TimerTask;

public abstract class StreamPlayer
  extends Player
{
  protected static final long TIMER_DELAY = 0L;
  protected static final long TIMER_PERIOD = 250L;
  public static PlayerInfo defaultPlayerInfo = new DefaultPlayerInfo();
  protected Timer _playheadUpdateTimer = null;
  private final Handler _playheadUpdateTimerHandler = new TimerHandler(this);
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
    _playheadUpdateTimer.scheduleAtFixedRate(new TimerTask()
    {
      public void run()
      {
        _playheadUpdateTimerHandler.sendEmptyMessage(0);
      }
    }, 0L, 250L);
  }
  
  protected void stopPlayheadTimer()
  {
    if (_playheadUpdateTimer != null)
    {
      _playheadUpdateTimer.cancel();
      _playheadUpdateTimer = null;
    }
  }
  
  private static class TimerHandler
    extends Handler
  {
    private int _lastPlayhead = -1;
    private WeakReference<StreamPlayer> _player;
    
    public TimerHandler(StreamPlayer paramStreamPlayer)
    {
      _player = new WeakReference(paramStreamPlayer);
    }
    
    public void handleMessage(Message paramMessage)
    {
      paramMessage = (StreamPlayer)_player.get();
      if ((paramMessage != null) && (_lastPlayhead != paramMessage.currentTime()) && (paramMessage.isPlaying())) {
        paramMessage.notifyTimeChanged();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.StreamPlayer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */