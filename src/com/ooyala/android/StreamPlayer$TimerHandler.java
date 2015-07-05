package com.ooyala.android;

import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;

class StreamPlayer$TimerHandler
  extends Handler
{
  private int _lastPlayhead = -1;
  private WeakReference<StreamPlayer> _player;
  
  public StreamPlayer$TimerHandler(StreamPlayer paramStreamPlayer)
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

/* Location:
 * Qualified Name:     com.ooyala.android.StreamPlayer.TimerHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */