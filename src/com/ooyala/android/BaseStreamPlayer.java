package com.ooyala.android;

import android.content.Context;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnBufferingUpdateListener;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnInfoListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.media.MediaPlayer.OnSeekCompleteListener;
import android.media.MediaPlayer.OnVideoSizeChangedListener;
import android.net.Uri;
import android.os.Build.VERSION;
import android.util.Log;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import java.net.URL;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class BaseStreamPlayer
  extends StreamPlayer
  implements MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnSeekCompleteListener, MediaPlayer.OnVideoSizeChangedListener, SurfaceHolder.Callback
{
  private static final String TAG = BaseStreamPlayer.class.getName();
  private boolean _completedQueued = false;
  protected int _height = 0;
  protected SurfaceHolder _holder = null;
  private boolean _playQueued = false;
  protected MediaPlayer _player = null;
  private OoyalaPlayer.State _stateBeforeSuspend = OoyalaPlayer.State.INIT;
  protected String _streamUrl = "";
  private int _timeBeforeSuspend = -1;
  protected int _width = 0;
  Stream stream = null;
  
  private void createView(Context paramContext)
  {
    _view = new MovieView(paramContext);
    _view.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 17));
    _view.setBackgroundColor(-16777216);
  }
  
  private void dequeueAll()
  {
    dequeueCompleted();
    dequeuePlay();
  }
  
  private void dequeueCompleted()
  {
    if (_completedQueued)
    {
      _playQueued = false;
      _completedQueued = false;
      setState(OoyalaPlayer.State.COMPLETED);
    }
  }
  
  private void dequeuePlay()
  {
    if (_playQueued) {}
    switch (BaseStreamPlayer.1.$SwitchMap$com$ooyala$android$OoyalaPlayer$State[_state.ordinal()])
    {
    default: 
      return;
    }
    _playQueued = false;
    play();
  }
  
  private boolean isSeekAllowed()
  {
    return (_state == OoyalaPlayer.State.PAUSED) || (_state == OoyalaPlayer.State.READY) || (_state == OoyalaPlayer.State.COMPLETED) || (_state == OoyalaPlayer.State.PLAYING);
  }
  
  private void queueCompleted()
  {
    _completedQueued = true;
  }
  
  private void queuePlay()
  {
    _playQueued = true;
  }
  
  private void removeView()
  {
    if (_parent != null) {
      _parent.getLayout().removeView(_view);
    }
    if (_holder != null) {
      _holder.removeCallback(this);
    }
    _view = null;
    _holder = null;
  }
  
  private void seekToTimeOnPrepared(int paramInt)
  {
    if (_player != null) {
      _player.seekTo(paramInt);
    }
  }
  
  private void setVideoSize(int paramInt1, int paramInt2)
  {
    _width = paramInt1;
    _height = paramInt2;
    ((MovieView)_view).setAspectRatio(_width / _height);
  }
  
  private void setupView()
  {
    createView(_parent.getLayout().getContext());
    _parent.getLayout().addView(_view);
    if ((stream.getWidth() > 0) && (stream.getHeight() > 0)) {
      setVideoSize(stream.getWidth(), stream.getHeight());
    }
    for (;;)
    {
      _holder = _view.getHolder();
      _holder.addCallback(this);
      _holder.setType(3);
      return;
      setVideoSize(16, 9);
    }
  }
  
  public int buffer()
  {
    return _buffer;
  }
  
  protected void createMediaPlayer()
  {
    try
    {
      Iterator localIterator;
      String str1;
      if (_player == null)
      {
        _player = new MediaPlayer();
        if (Build.VERSION.SDK_INT < 14) {
          break label306;
        }
        localIterator = OoyalaAPIHelper.cookies.keySet().iterator();
        str1 = null;
      }
      label306:
      label320:
      for (;;)
      {
        if (localIterator.hasNext())
        {
          String str2 = (String)localIterator.next();
          if (str1 == null)
          {
            str1 = str2 + "=" + (String)OoyalaAPIHelper.cookies.get(str2);
            break label320;
            stopPlayheadTimer();
            _player.stop();
            _player.reset();
            break;
          }
          str1 = str1 + "; " + str2 + "=" + (String)OoyalaAPIHelper.cookies.get(str2);
          break label320;
        }
        new HashMap().put("Cookie", str1);
        _player.setDataSource(_parent.getLayout().getContext(), Uri.parse(_streamUrl));
        for (;;)
        {
          _player.setDisplay(_holder);
          _player.setAudioStreamType(3);
          _player.setScreenOnWhilePlaying(true);
          _player.setOnPreparedListener(this);
          _player.setOnCompletionListener(this);
          _player.setOnBufferingUpdateListener(this);
          _player.setOnErrorListener(this);
          _player.setOnInfoListener(this);
          _player.setOnSeekCompleteListener(this);
          _player.setOnVideoSizeChangedListener(this);
          _player.prepareAsync();
          return;
          _player.setDataSource(_streamUrl);
        }
      }
      return;
    }
    catch (Throwable localThrowable) {}
  }
  
  protected void currentItemCompleted()
  {
    stopPlayheadTimer();
    setState(OoyalaPlayer.State.COMPLETED);
  }
  
  public int currentTime()
  {
    if (_player == null) {
      return 0;
    }
    switch (BaseStreamPlayer.1.$SwitchMap$com$ooyala$android$OoyalaPlayer$State[_state.ordinal()])
    {
    }
    return _player.getCurrentPosition();
  }
  
  public void destroy()
  {
    if (_player != null)
    {
      stop();
      _player = null;
    }
    removeView();
    _parent = null;
    _width = 0;
    _height = 0;
    _buffer = 0;
    _playQueued = false;
    _timeBeforeSuspend = -1;
    _state = OoyalaPlayer.State.INIT;
  }
  
  public int duration()
  {
    if (_player == null) {
      return 0;
    }
    switch (BaseStreamPlayer.1.$SwitchMap$com$ooyala$android$OoyalaPlayer$State[_state.ordinal()])
    {
    }
    return _player.getDuration();
  }
  
  public void init(OoyalaPlayer paramOoyalaPlayer, Set<Stream> paramSet)
  {
    stream = Stream.bestStream(paramSet);
    if (stream == null)
    {
      Log.e(TAG, "ERROR: Invalid Stream (no valid stream available)");
      _error = "Invalid Stream";
      setState(OoyalaPlayer.State.ERROR);
      return;
    }
    if (paramOoyalaPlayer == null)
    {
      _error = "Invalid Parent";
      setState(OoyalaPlayer.State.ERROR);
      return;
    }
    setState(OoyalaPlayer.State.LOADING);
    if (stream.getUrlFormat().equals("encoded")) {}
    for (paramSet = stream.decodedURL().toString().trim();; paramSet = stream.getUrl().trim())
    {
      _streamUrl = paramSet;
      setParent(paramOoyalaPlayer);
      setupView();
      if (_player == null) {
        break;
      }
      _player.reset();
      return;
    }
  }
  
  public boolean isPlaying()
  {
    return (_player != null) && (_player.isPlaying());
  }
  
  public void onBufferingUpdate(MediaPlayer paramMediaPlayer, int paramInt)
  {
    _buffer = paramInt;
    setChanged();
    notifyObservers("bufferChanged");
  }
  
  public void onCompletion(MediaPlayer paramMediaPlayer)
  {
    currentItemCompleted();
  }
  
  public boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    _error = ("MediaPlayer Error: " + paramInt1 + " " + paramInt2);
    if ((paramInt1 == -10) && (paramInt2 == -10)) {
      Log.e(TAG, "Unsupported video type given to base media player");
    }
    setState(OoyalaPlayer.State.ERROR);
    return false;
  }
  
  public boolean onInfo(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    if (paramInt1 == 701) {
      Log.d(TAG, "onInfo: Buffering Starting! " + paramInt1 + ", extra: " + paramInt2);
    }
    for (;;)
    {
      return true;
      if (paramInt1 == 702) {
        Log.d(TAG, "onInfo: Buffering Done! " + paramInt1 + ", extra: " + paramInt2);
      }
    }
  }
  
  public void onPrepared(MediaPlayer paramMediaPlayer)
  {
    _view.setBackgroundColor(0);
    if ((_width == 0) && (_height == 0) && (paramMediaPlayer.getVideoHeight() > 0) && (paramMediaPlayer.getVideoWidth() > 0)) {
      setVideoSize(paramMediaPlayer.getVideoWidth(), paramMediaPlayer.getVideoHeight());
    }
    if (_timeBeforeSuspend > 0) {
      seekToTimeOnPrepared(_timeBeforeSuspend);
    }
    setState(OoyalaPlayer.State.READY);
  }
  
  public void onSeekComplete(MediaPlayer paramMediaPlayer)
  {
    setChanged();
    notifyObservers("seekCompleted");
    if ((_timeBeforeSuspend >= 0) && (Math.abs(_player.getCurrentPosition() - _timeBeforeSuspend) > 3000)) {
      Log.i(getClass().getName(), "Seek failed. currentPos: " + _player.getCurrentPosition() + ", timeBefore" + _timeBeforeSuspend + "duration: " + _player.getDuration());
    }
    try
    {
      Thread.sleep(500L);
      _player.seekTo(_timeBeforeSuspend);
      if (_player.getDuration() != 0) {
        _timeBeforeSuspend = -1;
      }
      dequeuePlay();
      return;
    }
    catch (InterruptedException paramMediaPlayer)
    {
      for (;;)
      {
        paramMediaPlayer.printStackTrace();
      }
    }
  }
  
  public void onVideoSizeChanged(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    setVideoSize(paramInt1, paramInt2);
  }
  
  public void pause()
  {
    _playQueued = false;
    switch (BaseStreamPlayer.1.$SwitchMap$com$ooyala$android$OoyalaPlayer$State[_state.ordinal()])
    {
    default: 
      return;
    }
    stopPlayheadTimer();
    _player.pause();
    setState(OoyalaPlayer.State.PAUSED);
  }
  
  public void play()
  {
    _playQueued = false;
    switch (BaseStreamPlayer.1.$SwitchMap$com$ooyala$android$OoyalaPlayer$State[_state.ordinal()])
    {
    default: 
      return;
    case 2: 
    case 3: 
      queuePlay();
      return;
    }
    _player.start();
    setState(OoyalaPlayer.State.PLAYING);
    startPlayheadTimer();
  }
  
  public void reset()
  {
    suspend(0, OoyalaPlayer.State.PAUSED);
    setState(OoyalaPlayer.State.LOADING);
    setupView();
    resume();
  }
  
  public void resume()
  {
    resume(_timeBeforeSuspend, _stateBeforeSuspend);
  }
  
  public void resume(int paramInt, OoyalaPlayer.State paramState)
  {
    _timeBeforeSuspend = paramInt;
    if (paramState == OoyalaPlayer.State.PLAYING) {
      queuePlay();
    }
    while (paramState != OoyalaPlayer.State.COMPLETED) {
      return;
    }
    queueCompleted();
  }
  
  public void seekToTime(int paramInt)
  {
    if (_player == null)
    {
      _timeBeforeSuspend = paramInt;
      return;
    }
    if (isSeekAllowed())
    {
      _player.seekTo(paramInt);
      return;
    }
    _timeBeforeSuspend = paramInt;
  }
  
  public void setParent(OoyalaPlayer paramOoyalaPlayer)
  {
    super.setParent(paramOoyalaPlayer);
  }
  
  protected void setState(OoyalaPlayer.State paramState)
  {
    super.setState(paramState);
    dequeueAll();
  }
  
  public void stop()
  {
    stopPlayheadTimer();
    _playQueued = false;
    _player.stop();
    _player.release();
  }
  
  public void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void surfaceCreated(SurfaceHolder paramSurfaceHolder)
  {
    Log.i(TAG, "Surface Created");
    createMediaPlayer();
  }
  
  public void surfaceDestroyed(SurfaceHolder paramSurfaceHolder)
  {
    Log.i(TAG, "Surface Destroyed");
  }
  
  public void suspend()
  {
    if (_player != null) {}
    for (int i = _player.getCurrentPosition();; i = 0)
    {
      suspend(i, _state);
      return;
    }
  }
  
  public void suspend(int paramInt, OoyalaPlayer.State paramState)
  {
    if (_state == OoyalaPlayer.State.SUSPENDED) {
      return;
    }
    if (_player != null)
    {
      _timeBeforeSuspend = paramInt;
      _stateBeforeSuspend = paramState;
      _player.stop();
      _player.release();
      _player = null;
    }
    removeView();
    _width = 0;
    _height = 0;
    _buffer = 0;
    setState(OoyalaPlayer.State.SUSPENDED);
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.BaseStreamPlayer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */