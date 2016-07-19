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
import com.brightcove.player.event.Default;
import com.brightcove.player.event.Emits;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.event.ListensFor;
import com.brightcove.player.media.DeliveryType;
import com.brightcove.player.model.Source;
import com.brightcove.player.model.Video;
import com.brightcove.player.util.ErrorUtil;
import com.brightcove.player.util.EventUtil;
import com.brightcove.player.view.BrightcoveClosedCaptioningSurfaceView;
import com.brightcove.player.view.BrightcoveSurfaceView;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
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
  MediaPlayer.OnBufferingUpdateListener onBufferingUpdateListener = new MediaPlayer.OnBufferingUpdateListener()
  {
    public void onBufferingUpdate(MediaPlayer paramAnonymousMediaPlayer, int paramAnonymousInt)
    {
      paramAnonymousMediaPlayer = new HashMap();
      paramAnonymousMediaPlayer.put("percentComplete", Integer.valueOf(paramAnonymousInt));
      eventEmitter.emit("bufferedUpdate", paramAnonymousMediaPlayer);
    }
  };
  OnCompletedListener onCompletedListener;
  MediaPlayer.OnCompletionListener onCompletionListener = new MediaPlayer.OnCompletionListener()
  {
    public void onCompletion(MediaPlayer paramAnonymousMediaPlayer)
    {
      if (!hasErrored)
      {
        HashMap localHashMap = new HashMap();
        if ((paramAnonymousMediaPlayer != null) && (hasPrepared) && (hasSurface))
        {
          localHashMap.put("playheadPosition", Integer.valueOf(paramAnonymousMediaPlayer.getDuration()));
          localHashMap.put("duration", Integer.valueOf(paramAnonymousMediaPlayer.getDuration()));
        }
        localHashMap.put("video", currentVideo);
        eventEmitter.emit("completed", localHashMap);
      }
      if ((currentSource != null) && (currentSource.getDeliveryType() == DeliveryType.HLS)) {
        destroyPlayer();
      }
    }
  };
  MediaPlayer.OnErrorListener onErrorListener = new MediaPlayer.OnErrorListener()
  {
    public boolean onError(MediaPlayer paramAnonymousMediaPlayer, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      switch (paramAnonymousInt1)
      {
      default: 
        VideoDisplayComponent.access$3002(VideoDisplayComponent.this, true);
        paramAnonymousMediaPlayer = new HashMap();
        paramAnonymousMediaPlayer.put("video", currentVideo);
        paramAnonymousMediaPlayer.put("source", currentSource);
        paramAnonymousMediaPlayer.put("errorCode", Integer.valueOf(paramAnonymousInt1));
        paramAnonymousMediaPlayer.put("errorExtra", Integer.valueOf(paramAnonymousInt2));
        paramAnonymousMediaPlayer.put("errorMessage", "MediaPlayer " + ErrorUtil.getMessage("error"));
        eventEmitter.emit("sourceNotPlayable", paramAnonymousMediaPlayer);
      }
      return false;
    }
  };
  MediaPlayer.OnInfoListener onInfoListener = new MediaPlayer.OnInfoListener()
  {
    public boolean onInfo(MediaPlayer paramAnonymousMediaPlayer, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      switch (paramAnonymousInt1)
      {
      default: 
        Log.i(VideoDisplayComponent.TAG, "unknown MediaPlayer info: what = " + paramAnonymousInt1);
      }
      for (;;)
      {
        return true;
        Log.i(VideoDisplayComponent.TAG, "MEDIA_INFO_UNKNOWN");
        continue;
        Log.i(VideoDisplayComponent.TAG, "MEDIA_INFO_VIDEO_TRACK_LAGGING");
        continue;
        Log.i(VideoDisplayComponent.TAG, "MEDIA_INFO_VIDEO_RENDERING_START");
        continue;
        Log.i(VideoDisplayComponent.TAG, "MEDIA_INFO_BUFFERING_START");
        continue;
        Log.i(VideoDisplayComponent.TAG, "MEDIA_INFO_BUFFERING_END");
        continue;
        Log.i(VideoDisplayComponent.TAG, "MEDIA_INFO_BAD_INTERLEAVING");
        continue;
        Log.i(VideoDisplayComponent.TAG, "MEDIA_INFO_NOT_SEEKABLE");
        continue;
        Log.i(VideoDisplayComponent.TAG, "MEDIA_INFO_METADATA_UPDATE");
        continue;
        Log.i(VideoDisplayComponent.TAG, "MEDIA_INFO_NETWORK_BANDWIDTH");
        continue;
        Log.i(VideoDisplayComponent.TAG, "MEDIA_INFO_TIMED_TEXT_ERROR");
      }
    }
  };
  OnPauseListener onPauseListener;
  OnPlayListener onPlayListener;
  OnPrebufferNextVideoListener onPrebufferNextVideoListener;
  MediaPlayer.OnPreparedListener onPreparedListener = new MediaPlayer.OnPreparedListener()
  {
    public void onPrepared(MediaPlayer paramAnonymousMediaPlayer)
    {
      if (!hasErrored)
      {
        VideoDisplayComponent.access$802(VideoDisplayComponent.this, true);
        EventUtil.emit(eventEmitter, "didSetSource", currentVideo, currentSource);
        emitVideoSize(paramAnonymousMediaPlayer.getVideoWidth(), paramAnonymousMediaPlayer.getVideoHeight());
        HashMap localHashMap = new HashMap();
        localHashMap.put("video", currentVideo);
        localHashMap.put("source", currentSource);
        localHashMap.put("duration", Integer.valueOf(paramAnonymousMediaPlayer.getDuration()));
        eventEmitter.emit("videoDurationChanged", localHashMap);
      }
    }
  };
  MediaPlayer.OnSeekCompleteListener onSeekCompleteListener = new MediaPlayer.OnSeekCompleteListener()
  {
    public void onSeekComplete(MediaPlayer paramAnonymousMediaPlayer)
    {
      Log.v(VideoDisplayComponent.TAG, "onSeekComplete: fromSeekPosition = " + fromSeekPosition + ", seekPosition = " + seekPosition + ", currentPosition = " + paramAnonymousMediaPlayer.getCurrentPosition());
      if (paramAnonymousMediaPlayer.getCurrentPosition() < seekPosition) {
        paramAnonymousMediaPlayer.seekTo(seekPosition);
      }
      for (;;)
      {
        seekPosition = -1;
        return;
        if (fromSeekPosition != -1)
        {
          HashMap localHashMap = new HashMap();
          localHashMap.put("playheadPosition", Integer.valueOf(paramAnonymousMediaPlayer.getCurrentPosition()));
          localHashMap.put("seekPosition", Integer.valueOf(seekPosition));
          localHashMap.put("fromSeekPosition", Integer.valueOf(fromSeekPosition));
          localHashMap.put("video", currentVideo);
          eventEmitter.emit("didSeekTo", localHashMap);
          VideoDisplayComponent.access$2102(VideoDisplayComponent.this, -1);
        }
      }
    }
  };
  OnSeekListener onSeekListener;
  OnSetSourceListener onSetSourceListener;
  OnSetVolumeListener onSetVolumeListener;
  OnStopListener onStopListener;
  MediaPlayer.OnVideoSizeChangedListener onVideoSizeChangedListener = new MediaPlayer.OnVideoSizeChangedListener()
  {
    public void onVideoSizeChanged(MediaPlayer paramAnonymousMediaPlayer, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      if ((paramAnonymousInt1 != 0) && (paramAnonymousInt2 != 0)) {
        emitVideoSize(paramAnonymousInt1, paramAnonymousInt2);
      }
    }
  };
  OnWillInterruptContentListener onWillInterruptContentListener;
  OnWillResumeContentListener onWillResumeContentListener;
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
    onSetSourceListener = new OnSetSourceListener();
    onPlayListener = new OnPlayListener(null);
    onPauseListener = new OnPauseListener(null);
    onSeekListener = new OnSeekListener();
    onStopListener = new OnStopListener();
    onPrebufferNextVideoListener = new OnPrebufferNextVideoListener(null);
    onCompletedListener = new OnCompletedListener(null);
    onWillInterruptContentListener = new OnWillInterruptContentListener(null);
    onWillResumeContentListener = new OnWillResumeContentListener(null);
    onSetVolumeListener = new OnSetVolumeListener(null);
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
  
  protected void openVideo(final Video paramVideo, final Source paramSource)
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
      eventEmitter.once("readyToPlay", new EventListener()
      {
        public void processEvent(Event paramAnonymousEvent)
        {
          VideoDisplayComponent.this.createPlayer(paramVideo, paramSource);
        }
      });
      return;
    }
    throw new IllegalArgumentException(ErrorUtil.getMessage("invalidURL"));
  }
  
  protected void startUpdater()
  {
    Log.v(TAG, "startUpdater");
    updater = EXECUTOR.scheduleAtFixedRate(new Runnable()
    {
      public void run()
      {
        try
        {
          if ((mediaPlayer != null) && (hasPrepared) && (hasSurface) && (mediaPlayer.isPlaying()) && (mediaPlayer.getCurrentPosition() >= 0))
          {
            HashMap localHashMap = new HashMap(4);
            localHashMap.put("video", currentVideo);
            playheadPosition = mediaPlayer.getCurrentPosition();
            localHashMap.put("playheadPosition", Integer.valueOf(playheadPosition));
            duration = mediaPlayer.getDuration();
            localHashMap.put("duration", Integer.valueOf(duration));
            eventEmitter.emit("progress", localHashMap);
            if ((playheadPosition > 0) && (!hasPlaybackStarted))
            {
              localHashMap.put("source", currentSource);
              eventEmitter.emit("didPlay", localHashMap);
              VideoDisplayComponent.access$1002(VideoDisplayComponent.this, true);
            }
          }
          return;
        }
        catch (IllegalStateException localIllegalStateException)
        {
          destroyPlayer();
          Log.e(VideoDisplayComponent.TAG, "Media player position sampled when it was in an invalid state: " + localIllegalStateException.getMessage(), localIllegalStateException);
          eventEmitter.emit("error", Collections.singletonMap("error", localIllegalStateException));
          return;
        }
        catch (Exception localException)
        {
          destroyPlayer();
          Log.e(VideoDisplayComponent.TAG, "Error monitoring playback progress" + localException.getMessage(), localException);
          eventEmitter.emit("error", Collections.singletonMap("error", localException));
        }
      }
    }, 0L, 500L, TimeUnit.MILLISECONDS);
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
  
  private class OnCompletedListener
    implements EventListener
  {
    private OnCompletedListener() {}
    
    @Default
    public void processEvent(final Event paramEvent)
    {
      if (nextSource != null)
      {
        paramEvent = UUID.randomUUID();
        eventEmitter.once("willChangeVideo", new EventListener()
        {
          @Default
          public void processEvent(Event paramAnonymousEvent)
          {
            Log.v(VideoDisplayComponent.TAG, "OnCompletedListener: WILL_CHANGE_VIDEO");
            if (properties.get("uuid").equals(paramEvent))
            {
              destroyPlayer();
              Log.v(VideoDisplayComponent.TAG, "OnCompletedListener: currentSource = " + currentSource + ", nextSource = " + nextSource);
              currentVideo = nextVideo;
              nextVideo = null;
              currentSource = nextSource;
              nextSource = null;
              eventEmitter.once("didSetSource", new EventListener()
              {
                @Default
                public void processEvent(Event paramAnonymous2Event)
                {
                  eventEmitter.emit("play");
                }
              });
              openVideo(currentVideo, currentSource);
            }
          }
        });
        HashMap localHashMap = new HashMap();
        localHashMap.put("currentVideo", currentVideo);
        localHashMap.put("nextVideo", nextVideo);
        localHashMap.put("uuid", paramEvent);
        eventEmitter.emit("willChangeVideo", localHashMap);
      }
    }
  }
  
  private class OnPauseListener
    implements EventListener
  {
    private OnPauseListener() {}
    
    @Default
    public void processEvent(Event paramEvent)
    {
      Log.v(VideoDisplayComponent.TAG, "OnPauseListener");
      if ((mediaPlayer != null) && (hasPrepared) && (hasSurface) && (mediaPlayer.isPlaying()))
      {
        mediaPlayer.pause();
        paramEvent = new HashMap();
        paramEvent.put("playheadPosition", Integer.valueOf(mediaPlayer.getCurrentPosition()));
        eventEmitter.emit("didPause", paramEvent);
      }
    }
  }
  
  private class OnPlayListener
    implements EventListener
  {
    private OnPlayListener() {}
    
    @Default
    public void processEvent(Event paramEvent)
    {
      Log.v(VideoDisplayComponent.TAG, "OnPlayListener: mediaPlayer = " + mediaPlayer + ", hasPrepared = " + hasPrepared + ", hasSurface = " + hasSurface);
      VideoDisplayComponent.access$1002(VideoDisplayComponent.this, false);
      if (currentSource != null)
      {
        final int i;
        if (properties.containsKey("playheadPosition")) {
          i = paramEvent.getIntegerProperty("playheadPosition");
        }
        while (mediaPlayer != null) {
          if (hasPrepared)
          {
            if (hasSurface)
            {
              if (!mediaPlayer.isPlaying())
              {
                VideoDisplayComponent.this.play(i);
                return;
                Log.v(VideoDisplayComponent.TAG, "OnPlayListener: playheadPosition = " + playheadPosition);
                i = playheadPosition;
              }
              else
              {
                Log.w(VideoDisplayComponent.TAG, "Already playing.");
              }
            }
            else
            {
              Log.v(VideoDisplayComponent.TAG, "OnPlayListener: Surface is not available yet.");
              eventEmitter.once("readyToPlay", new EventListener()
              {
                @Default
                public void processEvent(Event paramAnonymousEvent)
                {
                  VideoDisplayComponent.this.play(i);
                }
              });
            }
          }
          else
          {
            Log.v(VideoDisplayComponent.TAG, "OnPlayListener: MediaPlayer has not been prepared yet.");
            eventEmitter.once("didSetSource", new EventListener()
            {
              @Default
              public void processEvent(Event paramAnonymousEvent)
              {
                VideoDisplayComponent.this.play(i);
              }
            });
            return;
          }
        }
        playheadPosition = 0;
        Log.v(VideoDisplayComponent.TAG, "OnPlayListener: MediaPlayer was null - creating a new one.");
        eventEmitter.once("didSetSource", new EventListener()
        {
          @Default
          public void processEvent(Event paramAnonymousEvent)
          {
            VideoDisplayComponent.this.play(i);
          }
        });
        openVideo(currentVideo, currentSource);
        return;
      }
      Log.e(VideoDisplayComponent.TAG, "Source has not been set yet.");
    }
  }
  
  private class OnPrebufferNextVideoListener
    implements EventListener
  {
    private OnPrebufferNextVideoListener() {}
    
    @Default
    public void processEvent(Event paramEvent)
    {
      nextVideo = ((Video)properties.get("video"));
      nextSource = ((Source)properties.get("source"));
    }
  }
  
  protected class OnSeekListener
    implements EventListener
  {
    protected OnSeekListener() {}
    
    @Default
    public void processEvent(Event paramEvent)
    {
      Log.v(VideoDisplayComponent.TAG, "OnSeekListener: mediaPlayer = " + mediaPlayer);
      int i = -1;
      if (properties.containsKey("seekPosition")) {
        i = paramEvent.getIntegerProperty("seekPosition");
      }
      for (;;)
      {
        Log.v(VideoDisplayComponent.TAG, "OnSeekListener: position = " + i);
        if ((mediaPlayer == null) || (!hasPrepared) || (!hasSurface)) {
          break;
        }
        seekPosition = i;
        VideoDisplayComponent.access$2102(VideoDisplayComponent.this, playheadPosition);
        mediaPlayer.seekTo(i);
        return;
        Log.e(VideoDisplayComponent.TAG, "Seek event must pass the seekPosition property");
      }
      seekPositionWhenPrepared = i;
    }
  }
  
  protected class OnSetSourceListener
    implements EventListener
  {
    protected OnSetSourceListener() {}
    
    @Default
    public void processEvent(Event paramEvent)
    {
      Log.v(VideoDisplayComponent.TAG, "OnSetSourceListener");
      destroyPlayer();
      currentVideo = ((Video)properties.get("video"));
      currentSource = ((Source)properties.get("source"));
      if ((currentSource != null) && (currentSource.getUrl() != null))
      {
        if ((currentSource.getDeliveryType() != DeliveryType.HLS) && (currentSource.getDeliveryType() != DeliveryType.WVM)) {
          openVideo(currentVideo, currentSource);
        }
      }
      else {
        return;
      }
      EventUtil.emit(eventEmitter, "didSetSource", currentVideo, currentSource);
    }
  }
  
  private class OnSetVolumeListener
    implements EventListener
  {
    private OnSetVolumeListener() {}
    
    @Default
    public void processEvent(Event paramEvent)
    {
      Log.v(VideoDisplayComponent.TAG, "OnSetVolumeListener: mediaPlayer = " + mediaPlayer);
      if ((!properties.containsKey("leftVolume")) || (!properties.containsKey("rightVolume")))
      {
        Log.e(VideoDisplayComponent.TAG, "SET_VOLUME requires LEFT_VOLUME and RIGHT_VOLUME properties.");
        return;
      }
      float f1 = ((Float)properties.get("leftVolume")).floatValue();
      float f2 = ((Float)properties.get("rightVolume")).floatValue();
      Log.v(VideoDisplayComponent.TAG, "OnSetVolumeListener: leftVolume = " + f1 + " rightVolume = " + f2);
      if ((f1 < 0.0F) || (f1 > 1.0F) || (f2 < 0.0F) || (f2 > 1.0F))
      {
        Log.e(VideoDisplayComponent.TAG, "LEFT_VOLUME and RIGHT_VOLUME must be between 0.0f and 1.0f: " + f1 + ", " + f2);
        return;
      }
      mediaPlayer.setVolume(f1, f2);
    }
  }
  
  protected class OnStopListener
    implements EventListener
  {
    protected OnStopListener() {}
    
    @Default
    public void processEvent(Event paramEvent)
    {
      Log.v(VideoDisplayComponent.TAG, "OnStopListener");
      if (mediaPlayer != null)
      {
        paramEvent = new HashMap();
        paramEvent.put("playheadPosition", Integer.valueOf(mediaPlayer.getCurrentPosition()));
        eventEmitter.emit("didStop", paramEvent);
      }
      destroyPlayer();
    }
  }
  
  private class OnWillInterruptContentListener
    implements EventListener
  {
    private OnWillInterruptContentListener() {}
    
    @Default
    public void processEvent(Event paramEvent)
    {
      Log.v(VideoDisplayComponent.TAG, "OnWillInterruptContentListener: mediaPlayer = " + mediaPlayer + ", hasPrepared = " + hasPrepared + ", hasSurface = " + hasSurface + ", currentSource = " + currentSource);
      if ((mediaPlayer != null) && (hasPrepared) && (hasSurface) && (mediaPlayer.isPlaying()))
      {
        Log.v(VideoDisplayComponent.TAG, "OnWillInterruptContentListener: isPlaying");
        if ((currentSource == null) || (currentSource.getDeliveryType() == DeliveryType.HLS)) {
          break label177;
        }
        mediaPlayer.pause();
      }
      for (;;)
      {
        brightcoveSurfaceView.setVisibility(4);
        return;
        label177:
        destroyPlayer();
      }
    }
  }
  
  private class OnWillResumeContentListener
    implements EventListener
  {
    private OnWillResumeContentListener() {}
    
    @Default
    public void processEvent(Event paramEvent)
    {
      brightcoveSurfaceView.setVisibility(0);
      paramEvent = (Event)properties.get("original");
      Log.v(VideoDisplayComponent.TAG, "OnWillResumeContentListener: originalEvent = " + paramEvent);
      if (paramEvent != null) {
        eventEmitter.emit(paramEvent.getType(), properties);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.display.VideoDisplayComponent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */