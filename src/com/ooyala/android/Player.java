package com.ooyala.android;

import android.view.SurfaceView;
import android.view.View;
import java.util.Observable;
import java.util.Set;

abstract class Player
  extends Observable
{
  protected int _buffer = 0;
  protected String _error = null;
  protected boolean _fullscreen = false;
  protected OoyalaPlayer _parent = null;
  protected boolean _pausable = true;
  protected boolean _resizeQueued = false;
  protected OoyalaPlayer.State _state = OoyalaPlayer.State.INIT;
  protected SurfaceView _view = null;
  
  public int buffer()
  {
    return 0;
  }
  
  public int currentTime()
  {
    return 0;
  }
  
  public abstract void destroy();
  
  public int duration()
  {
    return 0;
  }
  
  public int getBufferPercentage()
  {
    return _buffer;
  }
  
  public String getError()
  {
    return _error;
  }
  
  public OoyalaPlayer.SeekStyle getSeekStyle()
  {
    return OoyalaPlayer.SeekStyle.ENHANCED;
  }
  
  public OoyalaPlayer.State getState()
  {
    return _state;
  }
  
  public View getView()
  {
    return _view;
  }
  
  public void init(OoyalaPlayer paramOoyalaPlayer, Set<Stream> paramSet) {}
  
  public boolean isLiveClosedCaptionsAvailable()
  {
    return false;
  }
  
  public boolean isPlaying()
  {
    return false;
  }
  
  public void pause() {}
  
  public void play() {}
  
  public abstract void reset();
  
  public abstract void resume();
  
  public abstract void resume(int paramInt, OoyalaPlayer.State paramState);
  
  public void seekToTime(int paramInt) {}
  
  public void setLiveClosedCaptionsEnabled(boolean paramBoolean) {}
  
  public void setParent(OoyalaPlayer paramOoyalaPlayer)
  {
    _parent = paramOoyalaPlayer;
  }
  
  protected void setState(OoyalaPlayer.State paramState)
  {
    _state = paramState;
    setChanged();
    notifyObservers("stateChanged");
  }
  
  public void stop() {}
  
  public abstract void suspend();
  
  public abstract void suspend(int paramInt, OoyalaPlayer.State paramState);
}

/* Location:
 * Qualified Name:     com.ooyala.android.Player
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */