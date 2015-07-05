package com.ooyala.android;

import android.util.Log;
import android.view.View;
import java.net.URL;
import java.util.HashSet;
import java.util.Observable;
import java.util.Observer;
import java.util.Set;

public class MoviePlayer
  extends Player
  implements Observer
{
  private static final String TAG = "MoviePlayer";
  private StreamPlayer _basePlayer;
  private boolean _live = false;
  private int _millisToResume = 0;
  protected boolean _seekable = true;
  private OoyalaPlayer.State _stateToResume = OoyalaPlayer.State.INIT;
  private Set<Stream> _streams;
  private boolean _suspended = true;
  
  private StreamPlayer getPlayerForStreams(Set<Stream> paramSet)
  {
    if ((paramSet == null) || (paramSet.size() == 0)) {
      return new EmptyStreamPlayer();
    }
    if ((OoyalaPlayer.enableCustomHLSPlayer) && ((Stream.streamSetContainsDeliveryType(paramSet, "hls")) || ((Stream.streamSetContainsDeliveryType(paramSet, "remote_asset")) && (Stream.getStreamWithDeliveryType(paramSet, "remote_asset").decodedURL().toString().contains("m3u8"))))) {
      try
      {
        paramSet = (StreamPlayer)getClass().getClassLoader().loadClass("com.ooyala.android.VisualOnStreamPlayer").newInstance();
        return paramSet;
      }
      catch (Exception paramSet)
      {
        return new BaseStreamPlayer();
      }
    }
    return new BaseStreamPlayer();
  }
  
  private void setStreams(Set<Stream> paramSet)
  {
    if (paramSet == null)
    {
      _streams = new HashSet();
      return;
    }
    _streams = paramSet;
  }
  
  public int buffer()
  {
    if (_basePlayer != null) {
      return _basePlayer.buffer();
    }
    return 0;
  }
  
  public int currentTime()
  {
    if (_basePlayer != null) {
      return _basePlayer.currentTime();
    }
    return 0;
  }
  
  public void destroy()
  {
    if (_basePlayer != null) {
      _basePlayer.destroy();
    }
  }
  
  public int duration()
  {
    if (_basePlayer != null) {
      return _basePlayer.duration();
    }
    return 0;
  }
  
  public StreamPlayer getBasePlayer()
  {
    return _basePlayer;
  }
  
  public int getBufferPercentage()
  {
    if (_basePlayer != null) {
      return _basePlayer.getBufferPercentage();
    }
    return 0;
  }
  
  public String getError()
  {
    if (_error != null) {
      return _error;
    }
    return _basePlayer.getError();
  }
  
  public OoyalaPlayer.SeekStyle getSeekStyle()
  {
    if (_basePlayer != null) {
      return _basePlayer.getSeekStyle();
    }
    return OoyalaPlayer.SeekStyle.ENHANCED;
  }
  
  public OoyalaPlayer.State getState()
  {
    if (_basePlayer != null) {
      return _basePlayer.getState();
    }
    return super.getState();
  }
  
  public View getView()
  {
    return _basePlayer.getView();
  }
  
  public void init(OoyalaPlayer paramOoyalaPlayer, Set<Stream> paramSet)
  {
    setStreams(paramSet);
    _parent = paramOoyalaPlayer;
    _streams = paramSet;
    _suspended = false;
    if (_basePlayer == null) {
      _basePlayer = getPlayerForStreams(paramSet);
    }
    _basePlayer.addObserver(this);
    _basePlayer.init(paramOoyalaPlayer, paramSet);
  }
  
  public boolean isLiveClosedCaptionsAvailable()
  {
    if (_basePlayer != null) {
      return _basePlayer.isLiveClosedCaptionsAvailable();
    }
    return false;
  }
  
  public boolean isPlaying()
  {
    if (_basePlayer != null) {
      return _basePlayer.isPlaying();
    }
    return false;
  }
  
  public void pause()
  {
    _basePlayer.pause();
  }
  
  public void play()
  {
    Log.v("MoviePlayer", "play()");
    _basePlayer.play();
  }
  
  public void reset()
  {
    if (_basePlayer != null) {
      _basePlayer.reset();
    }
  }
  
  public void resume()
  {
    resume(_millisToResume, _stateToResume);
  }
  
  public void resume(int paramInt, OoyalaPlayer.State paramState)
  {
    _suspended = false;
    _basePlayer.init(_parent, _streams);
    _basePlayer.addObserver(this);
    if (_live) {
      paramInt = 0;
    }
    Log.d(getClass().toString(), "Movie Player Resuming. ms to resume: " + paramInt + ". State to resume: " + paramState);
    _basePlayer.resume(paramInt, paramState);
  }
  
  public void seekToTime(int paramInt)
  {
    if (_seekable) {
      _basePlayer.seekToTime(paramInt);
    }
  }
  
  public boolean seekable()
  {
    return _seekable;
  }
  
  public void setBasePlayer(StreamPlayer paramStreamPlayer)
  {
    int i;
    if (!_suspended)
    {
      i = 1;
      if (i != 0) {
        suspend();
      }
      if (paramStreamPlayer == null) {
        break label40;
      }
    }
    for (;;)
    {
      _basePlayer = paramStreamPlayer;
      if (i != 0) {
        resume();
      }
      return;
      i = 0;
      break;
      label40:
      paramStreamPlayer = getPlayerForStreams(_streams);
    }
  }
  
  public void setBasePlayer(StreamPlayer paramStreamPlayer, Set<Stream> paramSet)
  {
    setStreams(paramSet);
    setBasePlayer(paramStreamPlayer);
  }
  
  public void setLive(boolean paramBoolean)
  {
    _live = paramBoolean;
  }
  
  public void setLiveClosedCaptionsEnabled(boolean paramBoolean)
  {
    _basePlayer.setLiveClosedCaptionsEnabled(paramBoolean);
  }
  
  public void setParent(OoyalaPlayer paramOoyalaPlayer)
  {
    _parent = paramOoyalaPlayer;
    _basePlayer.setParent(paramOoyalaPlayer);
  }
  
  public void setSeekable(boolean paramBoolean)
  {
    _seekable = paramBoolean;
  }
  
  protected void setState(OoyalaPlayer.State paramState)
  {
    if (_basePlayer != null)
    {
      _basePlayer.setState(paramState);
      return;
    }
    super.setState(paramState);
  }
  
  public void stop()
  {
    _basePlayer.stop();
  }
  
  public void suspend()
  {
    if (_basePlayer != null)
    {
      suspend(_basePlayer.currentTime(), _basePlayer.getState());
      return;
    }
    suspend(0, OoyalaPlayer.State.INIT);
  }
  
  public void suspend(int paramInt, OoyalaPlayer.State paramState)
  {
    if (paramState == OoyalaPlayer.State.SUSPENDED) {
      Log.i(getClass().toString(), "Trying to suspend an already suspended MoviePlayer");
    }
    do
    {
      return;
      Log.d(getClass().toString(), "Movie Player Suspending. ms to resume: " + paramInt + ". State to resume: " + paramState);
      _suspended = true;
      _millisToResume = paramInt;
      _stateToResume = paramState;
    } while (_basePlayer == null);
    _basePlayer.deleteObserver(this);
    _basePlayer.suspend(paramInt, paramState);
  }
  
  public void update(Observable paramObservable, Object paramObject)
  {
    setChanged();
    notifyObservers(paramObject);
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.MoviePlayer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */