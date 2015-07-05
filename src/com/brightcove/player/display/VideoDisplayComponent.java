package com.brightcove.player.display;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.media.MediaFormat;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnBufferingUpdateListener;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnInfoListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.media.MediaPlayer.OnSeekCompleteListener;
import android.media.MediaPlayer.OnVideoSizeChangedListener;
import android.media.SubtitleController;
import android.media.WebVttRenderer;
import android.net.Uri;
import android.os.Build.VERSION;
import android.util.Log;
import android.util.Pair;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import com.brightcove.player.analytics.Analytics;
import com.brightcove.player.event.AbstractComponent;
import com.brightcove.player.event.Emits;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.ListensFor;
import com.brightcove.player.media.DeliveryType;
import com.brightcove.player.model.Source;
import com.brightcove.player.model.Video;
import com.brightcove.player.util.ErrorUtil;
import com.brightcove.player.view.BrightcoveClosedCaptioningSurfaceView;
import com.brightcove.player.view.BrightcoveSurfaceView;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

@Emits(events={"bufferedUpdate", "completed", "didPause", "didPlay", "didSeekTo", "didSetSource", "didStop", "error", "pause", "play", "progress", "sourceNotPlayable", "stop", "videoDurationChanged", "videoSizeKnown", "willChangeVideo"})
@ListensFor(events={"completed", "didSetSource", "pause", "play", "prebufferNextVideo", "seekTo", "setSource", "stop", "willChangeVideo", "willInterruptContent", "willResumeContent", "readyToPlay", "setVolume"})
public class VideoDisplayComponent
  extends AbstractComponent
{
  private static final ScheduledExecutorService EXECUTOR = Executors.newScheduledThreadPool(1);
  protected static final int ON_PLAY_SEEK_THRESHOLD = 1000;
  private static final int PROGRESS_INTERVAL = 500;
  private static final String TAG = VideoDisplayComponent.class.getSimpleName();
  private Analytics analytics;
  protected BrightcoveSurfaceView brightcoveSurfaceView;
  protected Context context;
  protected Source currentSource;
  protected Video currentVideo;
  protected int duration;
  private int fromSeekPosition;
  private boolean hasErrored;
  private boolean hasPlaybackStarted;
  private boolean hasPrepared;
  protected boolean hasSurface;
  private MediaPlayer mediaPlayer;
  protected Source nextSource;
  protected Video nextVideo;
  MediaPlayer.OnBufferingUpdateListener onBufferingUpdateListener = new VideoDisplayComponent.3(this);
  VideoDisplayComponent.OnCompletedListener onCompletedListener;
  MediaPlayer.OnCompletionListener onCompletionListener = new VideoDisplayComponent.4(this);
  MediaPlayer.OnErrorListener onErrorListener = new VideoDisplayComponent.8(this);
  MediaPlayer.OnInfoListener onInfoListener = new VideoDisplayComponent.9(this);
  VideoDisplayComponent.OnPauseListener onPauseListener;
  VideoDisplayComponent.OnPlayListener onPlayListener;
  VideoDisplayComponent.OnPrebufferNextVideoListener onPrebufferNextVideoListener;
  MediaPlayer.OnPreparedListener onPreparedListener = new VideoDisplayComponent.6(this);
  MediaPlayer.OnSeekCompleteListener onSeekCompleteListener = new VideoDisplayComponent.5(this);
  VideoDisplayComponent.OnSeekListener onSeekListener;
  VideoDisplayComponent.OnSetSourceListener onSetSourceListener;
  VideoDisplayComponent.OnSetVolumeListener onSetVolumeListener;
  VideoDisplayComponent.OnStopListener onStopListener;
  MediaPlayer.OnVideoSizeChangedListener onVideoSizeChangedListener = new VideoDisplayComponent.7(this);
  VideoDisplayComponent.OnWillInterruptContentListener onWillInterruptContentListener;
  VideoDisplayComponent.OnWillResumeContentListener onWillResumeContentListener;
  protected int playheadPosition;
  protected int seekPosition;
  protected int seekPositionWhenPrepared;
  protected ScheduledFuture<?> updater;
  
  public VideoDisplayComponent(BrightcoveSurfaceView paramBrightcoveSurfaceView, EventEmitter paramEventEmitter)
  {
    super(paramEventEmitter, VideoDisplayComponent.class);
    if ((paramBrightcoveSurfaceView == null) || (paramEventEmitter == null)) {
      throw new IllegalArgumentException(ErrorUtil.getMessage("surfaceViewAndEventEmitterRequired"));
    }
    analytics = new Analytics(paramEventEmitter, paramBrightcoveSurfaceView.getContext());
    brightcoveSurfaceView = paramBrightcoveSurfaceView;
    context = paramBrightcoveSurfaceView.getContext();
    setHolderType();
    initializeListeners();
  }
  
  @SuppressLint({"NewApi"})
  private void createPlayer(Video paramVideo, Source paramSource)
  {
    Log.v(TAG, "createPlayer");
    SurfaceHolder localSurfaceHolder = brightcoveSurfaceView.getHolder();
    try
    {
      mediaPlayer = new MediaPlayer();
      mediaPlayer.setDisplay(localSurfaceHolder);
      mediaPlayer.setOnPreparedListener(onPreparedListener);
      mediaPlayer.setOnVideoSizeChangedListener(onVideoSizeChangedListener);
      mediaPlayer.setOnCompletionListener(onCompletionListener);
      mediaPlayer.setOnSeekCompleteListener(onSeekCompleteListener);
      mediaPlayer.setOnBufferingUpdateListener(onBufferingUpdateListener);
      mediaPlayer.setOnErrorListener(onErrorListener);
      mediaPlayer.setOnInfoListener(onInfoListener);
      mediaPlayer.setScreenOnWhilePlaying(true);
      if (Build.VERSION.SDK_INT >= 14) {
        mediaPlayer.setDataSource(context, Uri.parse(paramSource.getUrl()), getHeaders(paramVideo, paramSource));
      }
      for (;;)
      {
        if ((Build.VERSION.SDK_INT >= 19) && (paramVideo.getProperties().containsKey("subtitleSources"))) {
          setupSubtitles(paramVideo, mediaPlayer);
        }
        mediaPlayer.prepareAsync();
        playheadPosition = 0;
        duration = 0;
        return;
        if (getHeaders(paramVideo, paramSource) != null) {
          Log.w(TAG, "Headers ignored below API level 14");
        }
        mediaPlayer.setDataSource(context, Uri.parse(paramSource.getUrl()));
      }
      return;
    }
    catch (IOException paramVideo)
    {
      Log.e(TAG, "IOException trying to play video", paramVideo);
      eventEmitter.emit("error", Collections.singletonMap("error", paramVideo));
    }
  }
  
  protected static Map<String, String> getHeaders(Video paramVideo, Source paramSource)
  {
    Map localMap = null;
    try
    {
      paramVideo = (Map)paramVideo.getProperties().get("headers");
      try
      {
        localMap = (Map)paramSource.getProperties().get("headers");
        if (localMap == null) {
          break label111;
        }
        paramSource = localMap;
        if (paramVideo != null)
        {
          paramVideo.putAll(localMap);
          paramSource = paramVideo;
        }
      }
      catch (Exception paramSource)
      {
        for (;;)
        {
          Log.e(TAG, "Failed to use Source headers.", paramSource);
          paramSource = paramVideo;
        }
      }
      Log.v(TAG, "headers = " + paramSource);
      return paramSource;
    }
    catch (Exception paramVideo)
    {
      for (;;)
      {
        Log.e(TAG, "Failed to use Video headers.", paramVideo);
        paramVideo = localMap;
      }
    }
  }
  
  private void play(int paramInt)
  {
    Log.v(TAG, "play: position = " + paramInt + ", playheadPosition = " + playheadPosition + ", seekPositionWhenPrepared = " + seekPositionWhenPrepared);
    mediaPlayer.setDisplay(brightcoveSurfaceView.getHolder());
    if ((paramInt >= 0) && (Math.abs(paramInt - playheadPosition) > 1000))
    {
      fromSeekPosition = -1;
      seekPosition = paramInt;
      mediaPlayer.seekTo(paramInt);
    }
    for (;;)
    {
      seekPositionWhenPrepared = -1;
      if (updater == null) {
        startUpdater();
      }
      mediaPlayer.start();
      return;
      if ((seekPositionWhenPrepared >= 0) && (Math.abs(seekPositionWhenPrepared - playheadPosition) > 1000))
      {
        fromSeekPosition = playheadPosition;
        mediaPlayer.seekTo(seekPositionWhenPrepared);
      }
    }
  }
  
  private void setHolderType()
  {
    if (Build.VERSION.SDK_INT <= 10) {
      brightcoveSurfaceView.getHolder().setType(3);
    }
  }
  
  @TargetApi(19)
  private void setupSubtitles(Video paramVideo, MediaPlayer paramMediaPlayer)
  {
    paramVideo = (List)paramVideo.getProperties().get("subtitleSources");
    if (paramVideo != null)
    {
      Object localObject = new SubtitleController(context, paramMediaPlayer.getMediaTimeProvider(), paramMediaPlayer);
      ((SubtitleController)localObject).registerRenderer(new WebVttRenderer(context));
      paramMediaPlayer.setSubtitleAnchor((SubtitleController)localObject, (BrightcoveClosedCaptioningSurfaceView)brightcoveSurfaceView);
      paramVideo = paramVideo.iterator();
      while (paramVideo.hasNext())
      {
        localObject = (Pair)paramVideo.next();
        try
        {
          paramMediaPlayer.addSubtitleSource((InputStream)first, (MediaFormat)second);
        }
        catch (IllegalStateException localIllegalStateException)
        {
          onInfoListener.onInfo(paramMediaPlayer, 901, 0);
        }
      }
    }
  }
  
  protected void destroyPlayer()
  {
    stopUpdater();
    if (mediaPlayer != null)
    {
      Log.i(TAG, "Shutting down current MediaPlayer");
      mediaPlayer.reset();
      mediaPlayer.release();
      mediaPlayer = null;
      hasPrepared = false;
      hasErrored = false;
    }
  }
  
  protected void emitVideoSize(int paramInt1, int paramInt2)
  {
    Log.v(TAG, "emitVideoSize: " + paramInt1 + ", " + paramInt2 + ", " + brightcoveSurfaceView.getWidth() + ", " + brightcoveSurfaceView.getHeight());
    if ((paramInt1 > 0) && (paramInt2 > 0) && ((paramInt1 != brightcoveSurfaceView.getVideoWidth()) || (paramInt2 != brightcoveSurfaceView.getVideoHeight())))
    {
      brightcoveSurfaceView.setVideoSize(paramInt1, paramInt2);
      HashMap localHashMap = new HashMap();
      localHashMap.put("width", Integer.valueOf(paramInt1));
      localHashMap.put("height", Integer.valueOf(paramInt2));
      eventEmitter.emit("videoSizeKnown", localHashMap);
    }
  }
  
  public Analytics getAnalytics()
  {
    return analytics;
  }
  
  public MediaPlayer getMediaPlayer()
  {
    return mediaPlayer;
  }
  
  public SurfaceView getSurfaceView()
  {
    return brightcoveSurfaceView;
  }
  
  protected void initializeListeners()
  {
    onSetSourceListener = new VideoDisplayComponent.OnSetSourceListener(this);
    onPlayListener = new VideoDisplayComponent.OnPlayListener(this, null);
    onPauseListener = new VideoDisplayComponent.OnPauseListener(this, null);
    onSeekListener = new VideoDisplayComponent.OnSeekListener(this);
    onStopListener = new VideoDisplayComponent.OnStopListener(this);
    onPrebufferNextVideoListener = new VideoDisplayComponent.OnPrebufferNextVideoListener(this, null);
    onCompletedListener = new VideoDisplayComponent.OnCompletedListener(this, null);
    onWillInterruptContentListener = new VideoDisplayComponent.OnWillInterruptContentListener(this, null);
    onWillResumeContentListener = new VideoDisplayComponent.OnWillResumeContentListener(this, null);
    onSetVolumeListener = new VideoDisplayComponent.OnSetVolumeListener(this, null);
    addListener("setSource", onSetSourceListener);
    addListener("play", onPlayListener);
    addListener("seekTo", onSeekListener);
    addListener("pause", onPauseListener);
    addListener("stop", onStopListener);
    addListener("prebufferNextVideo", onPrebufferNextVideoListener);
    addListener("completed", onCompletedListener);
    addListener("willInterruptContent", onWillInterruptContentListener);
    addListener("willResumeContent", onWillResumeContentListener);
    addListener("setVolume", onSetVolumeListener);
  }
  
  protected void openVideo(Video paramVideo, Source paramSource)
  {
    String str = paramSource.getUrl();
    if ((str != null) && (!str.trim().equals("")))
    {
      destroyPlayer();
      hasPlaybackStarted = false;
      if ((brightcoveSurfaceView.getHolder().getSurface() != null) && (hasSurface))
      {
        createPlayer(paramVideo, paramSource);
        return;
      }
      eventEmitter.once("readyToPlay", new VideoDisplayComponent.2(this, paramVideo, paramSource));
      return;
    }
    throw new IllegalArgumentException(ErrorUtil.getMessage("invalidURL"));
  }
  
  protected void startUpdater()
  {
    Log.v(TAG, "startUpdater");
    updater = EXECUTOR.scheduleAtFixedRate(new VideoDisplayComponent.1(this), 0L, 500L, TimeUnit.MILLISECONDS);
  }
  
  protected void stopUpdater()
  {
    Log.v(TAG, "stopUpdater: " + updater);
    if (updater != null)
    {
      updater.cancel(false);
      updater = null;
    }
  }
  
  public void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, int paramInt3)
  {
    Log.d(TAG, "surfaceChanged");
    if ((mediaPlayer != null) && (paramSurfaceHolder != null))
    {
      if (paramSurfaceHolder.getSurface() == null) {
        break label49;
      }
      mediaPlayer.setDisplay(paramSurfaceHolder);
      hasSurface = true;
    }
    for (;;)
    {
      hasSurface = true;
      return;
      label49:
      paramSurfaceHolder = ErrorUtil.getMessage("invalidSurface");
      Log.e(TAG, "surfaceChanged: " + paramSurfaceHolder);
      eventEmitter.emit("error", Collections.singletonMap("errorMessage", paramSurfaceHolder));
    }
  }
  
  public void surfaceCreated(SurfaceHolder paramSurfaceHolder)
  {
    Log.d(TAG, "surfaceCreated");
    hasSurface = true;
  }
  
  public void surfaceDestroyed(SurfaceHolder paramSurfaceHolder)
  {
    Log.d(TAG, "surfaceDestroyed");
    if (mediaPlayer != null)
    {
      if (!Boolean.valueOf(System.getProperty("releaseWhenSurfaceDestroyed")).booleanValue()) {
        break label42;
      }
      destroyPlayer();
    }
    for (;;)
    {
      hasSurface = false;
      return;
      label42:
      if (mediaPlayer.isPlaying()) {
        if ((currentSource != null) && (currentSource.getDeliveryType() != DeliveryType.HLS)) {
          mediaPlayer.pause();
        } else {
          destroyPlayer();
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.display.VideoDisplayComponent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */