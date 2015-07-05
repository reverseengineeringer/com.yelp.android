package com.brightcove.player.view;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.media.MediaFormat;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.net.Uri;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.MediaController;
import android.widget.MediaController.MediaPlayerControl;
import com.brightcove.player.analytics.Analytics;
import com.brightcove.player.controller.DefaultSourceSelectionController;
import com.brightcove.player.controller.VideoPlaybackController;
import com.brightcove.player.display.VideoDisplayComponent;
import com.brightcove.player.display.VideoStillDisplayComponent;
import com.brightcove.player.event.Component;
import com.brightcove.player.event.Emits;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventEmitterImpl;
import com.brightcove.player.event.ListensFor;
import com.brightcove.player.event.RegisteringEventEmitter;
import com.brightcove.player.management.BrightcovePluginManager;
import com.brightcove.player.model.Source;
import com.brightcove.player.model.Video;
import com.brightcove.player.util.EventUtil;
import java.io.InputStream;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@Emits(events={"didChangeList", "didSelectSource", "pause", "play", "prebufferNextVideo", "readyToPlay", "seekTo", "selectSource", "setSource", "setVideo", "stop", "willChangeVideo"})
@ListensFor(events={"bufferedUpdate", "completed", "didPause", "didPlay", "didSeekTo", "didSetSource", "didStop", "hideSeekControls", "progress", "seekTo", "showSeekControls", "sourceNotPlayable", "videoDurationChanged", "willChangeVideo", "willInterruptContent"})
public class BrightcoveVideoView
  extends FrameLayout
  implements MediaController.MediaPlayerControl, Component
{
  private static final String FFWD = "ffwd";
  private static final String NEXT = "next";
  private static final String PREV = "prev";
  private static final String PROGRESS_BAR = "mediacontroller_progress";
  private static final String REW = "rew";
  private static final String TAG = BrightcoveVideoView.class.getSimpleName();
  protected View anchorView;
  protected BrightcoveSurfaceView brightcoveSurfaceView;
  protected Class<? extends BrightcoveSurfaceView> brightcoveSurfaceViewClass;
  private int bufferedPercent;
  private int currentIndex = -1;
  private boolean currentlyPlaying;
  protected int duration;
  protected EventEmitter eventEmitter;
  private boolean hasPendingPlay;
  private boolean hasSetSource;
  protected ImageView imageView;
  protected MediaController mediaController;
  private Map<String, Integer> mediaControllerIdMap = new HashMap();
  private String[] mediaControllerViewNames = { "ffwd", "rew", "next", "prev", "mediacontroller_progress" };
  protected MediaController.MediaPlayerControl mediaPlayerControl;
  private MediaPlayer.OnCompletionListener onCompletionListener;
  protected MediaPlayer.OnPreparedListener onPreparedListener;
  protected VideoPlaybackController playbackController;
  protected int playheadPosition;
  protected BrightcovePluginManager pluginManager;
  protected DefaultSourceSelectionController sourceController;
  protected BrightcoveVideoView.SurfaceListener surfaceListener;
  protected VideoDisplayComponent videoDisplay;
  protected VideoStillDisplayComponent videoStillDisplay;
  private Map<Video, Source> videoToSourceMap = new HashMap();
  private ArrayList<Video> videos = new ArrayList();
  
  public BrightcoveVideoView(Context paramContext)
  {
    super(paramContext);
    init(paramContext);
  }
  
  public BrightcoveVideoView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public BrightcoveVideoView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    init(paramContext);
  }
  
  private void addSubtitlePair(Video paramVideo, Pair<InputStream, MediaFormat> paramPair)
  {
    List localList = (List)paramVideo.getProperties().get("subtitleSources");
    Object localObject = localList;
    if (localList == null)
    {
      localObject = new ArrayList();
      paramVideo.getProperties().put("subtitleSources", localObject);
    }
    ((List)localObject).add(paramPair);
  }
  
  private void emitDidChangeList()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("list", videos);
    eventEmitter.emit("didChangeList", localHashMap);
  }
  
  private Video getCurrentVideo()
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (currentIndex >= 0)
    {
      localObject1 = localObject2;
      if (currentIndex < videos.size()) {
        localObject1 = (Video)videos.get(currentIndex);
      }
    }
    return (Video)localObject1;
  }
  
  private boolean hasNextVideo()
  {
    return (videos.size() > 1) && (currentIndex + 1 < videos.size());
  }
  
  private void prebufferNextVideo()
  {
    if (hasNextVideo())
    {
      Video localVideo = (Video)videos.get(currentIndex + 1);
      Object localObject = (Source)videoToSourceMap.get(localVideo);
      if (localObject != null)
      {
        EventUtil.emit(eventEmitter, "prebufferNextVideo", localVideo, (Source)localObject);
        return;
      }
      localObject = new HashMap();
      ((Map)localObject).put("video", localVideo);
      eventEmitter.request("selectSource", (Map)localObject, new BrightcoveVideoView.18(this, localVideo));
      return;
    }
    eventEmitter.emit("prebufferNextVideo");
  }
  
  private void setCurrentIndexPrivate(int paramInt)
  {
    if (paramInt == -1)
    {
      hasSetSource = false;
      if (currentIndex == -1) {
        return;
      }
    }
    UUID localUUID = UUID.randomUUID();
    eventEmitter.once("willChangeVideo", new BrightcoveVideoView.17(this, localUUID, paramInt));
    HashMap localHashMap = new HashMap();
    localHashMap.put("index", Integer.valueOf(currentIndex));
    localHashMap.put("currentVideo", getCurrentVideo());
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (paramInt >= 0)
    {
      localObject1 = localObject2;
      if (paramInt < videos.size()) {
        localObject1 = (Video)videos.get(paramInt);
      }
    }
    localHashMap.put("nextVideo", localObject1);
    localHashMap.put("uuid", localUUID);
    eventEmitter.emit("willChangeVideo", localHashMap);
  }
  
  private void setCurrentlyPlaying(boolean paramBoolean)
  {
    currentlyPlaying = paramBoolean;
    if (mediaController != null) {
      mediaController.setMediaPlayer(this);
    }
  }
  
  private void setupSeekControls(Event paramEvent)
  {
    int j = paramEvent.getIntegerProperty("visibility");
    if (j > -1)
    {
      updateMediaControllerIdMap();
      paramEvent = mediaControllerViewNames;
      int k = paramEvent.length;
      int i = 0;
      while (i < k)
      {
        Object localObject = paramEvent[i];
        localObject = (Integer)mediaControllerIdMap.get(localObject);
        if (localObject != null) {
          mediaController.findViewById(((Integer)localObject).intValue()).setVisibility(j);
        }
        i += 1;
      }
      mediaController.show();
    }
  }
  
  private void updateIndex(int paramInt1, int paramInt2)
  {
    if ((currentIndex == -1) || (currentIndex == paramInt1)) {
      setCurrentIndexPrivate(paramInt1);
    }
    do
    {
      return;
      if (paramInt1 < currentIndex)
      {
        currentIndex += paramInt2;
        return;
      }
    } while ((currentIndex < 0) || (currentIndex + 1 != paramInt1) || (!currentlyPlaying));
    prebufferNextVideo();
  }
  
  private void updateMediaControllerIdMap()
  {
    Resources localResources = Resources.getSystem();
    String[] arrayOfString = mediaControllerViewNames;
    int j = arrayOfString.length;
    int i = 0;
    while (i < j)
    {
      String str = arrayOfString[i];
      if (!mediaControllerIdMap.containsKey(str)) {
        mediaControllerIdMap.put(str, null);
      }
      if (mediaControllerIdMap.get(str) == null)
      {
        int k = localResources.getIdentifier(str, "id", "android");
        if (k > 0) {
          mediaControllerIdMap.put(str, Integer.valueOf(k));
        }
      }
      i += 1;
    }
  }
  
  public void add(int paramInt, Video paramVideo)
  {
    videos.add(paramInt, paramVideo);
    emitDidChangeList();
    updateIndex(paramInt, 1);
  }
  
  public void add(Video paramVideo)
  {
    add(videos.size(), paramVideo);
  }
  
  public void addAll(int paramInt, Collection<Video> paramCollection)
  {
    videos.addAll(paramInt, paramCollection);
    emitDidChangeList();
    updateIndex(paramInt, paramCollection.size());
  }
  
  public void addAll(Collection<Video> paramCollection)
  {
    addAll(videos.size(), paramCollection);
  }
  
  @TargetApi(19)
  public void addSubtitleSource(InputStream paramInputStream, MediaFormat paramMediaFormat)
  {
    Video localVideo = getCurrentVideo();
    paramInputStream = Pair.create(paramInputStream, paramMediaFormat);
    if (localVideo != null)
    {
      addSubtitlePair(localVideo, paramInputStream);
      return;
    }
    eventEmitter.once("willChangeVideo", new BrightcoveVideoView.19(this, paramInputStream));
  }
  
  protected void attachMediaController()
  {
    Log.v(TAG, "attachMediaController: mediaPlayer = " + videoDisplay.getMediaPlayer() + ", mediaController = " + mediaController);
    if (mediaController != null) {
      if (anchorView == null) {
        if (!(getParent() instanceof View)) {
          break label166;
        }
      }
    }
    label166:
    for (Object localObject = (View)getParent();; localObject = this)
    {
      mediaController.setAnchorView((View)localObject);
      if (mediaPlayerControl == null) {
        mediaController.setMediaPlayer(new BrightcoveVideoView.16(this));
      }
      if (videoDisplay.getMediaPlayer() != null)
      {
        mediaController.setEnabled(true);
        if (brightcoveSurfaceView.isShown()) {
          mediaController.show(0);
        }
        if (playheadPosition > 0) {
          videoDisplay.getMediaPlayer().seekTo(playheadPosition);
        }
      }
      return;
    }
  }
  
  public boolean canPause()
  {
    return true;
  }
  
  public boolean canSeekBackward()
  {
    return true;
  }
  
  public boolean canSeekForward()
  {
    return true;
  }
  
  public void clear()
  {
    if (videos.size() > 0) {}
    for (int i = 1;; i = 0)
    {
      videos.clear();
      videoToSourceMap.clear();
      setCurrentIndexPrivate(-1);
      if (i != 0) {
        emitDidChangeList();
      }
      return;
    }
  }
  
  public void clearOnCompletionListener()
  {
    onCompletionListener = null;
  }
  
  public void clearOnPreparedListener()
  {
    onPreparedListener = null;
  }
  
  public Video get(int paramInt)
  {
    return (Video)videos.get(paramInt);
  }
  
  public Analytics getAnalytics()
  {
    Analytics localAnalytics = null;
    if (videoDisplay != null) {
      localAnalytics = videoDisplay.getAnalytics();
    }
    return localAnalytics;
  }
  
  public int getAudioSessionId()
  {
    return 0;
  }
  
  public int getBufferPercentage()
  {
    return bufferedPercent;
  }
  
  public int getCurrentIndex()
  {
    return currentIndex;
  }
  
  public int getCurrentPosition()
  {
    return playheadPosition;
  }
  
  public int getDuration()
  {
    return duration;
  }
  
  public EventEmitter getEventEmitter()
  {
    if (eventEmitter == null) {
      return null;
    }
    return ((RegisteringEventEmitter)eventEmitter).getRootEmitter();
  }
  
  public List<Video> getList()
  {
    return Collections.unmodifiableList(videos);
  }
  
  public VideoPlaybackController getPlaybackController()
  {
    return playbackController;
  }
  
  public DefaultSourceSelectionController getSourceController()
  {
    return sourceController;
  }
  
  public SurfaceView getSurfaceView()
  {
    return brightcoveSurfaceView;
  }
  
  public VideoDisplayComponent getVideoDisplay()
  {
    return videoDisplay;
  }
  
  public int getVideoHeight()
  {
    return brightcoveSurfaceView.getVideoHeight();
  }
  
  public VideoStillDisplayComponent getVideoStillDisplay()
  {
    return videoStillDisplay;
  }
  
  public int getVideoWidth()
  {
    return brightcoveSurfaceView.getVideoWidth();
  }
  
  protected void init(Context paramContext)
  {
    Log.i(TAG, "init");
    resetMetaData();
    playheadPosition = -1;
    setClickable(true);
    setFocusable(true);
    setFocusableInTouchMode(true);
    if (brightcoveSurfaceViewClass == null)
    {
      if (Build.VERSION.SDK_INT < 19) {
        break label140;
      }
      brightcoveSurfaceViewClass = BrightcoveClosedCaptioningSurfaceView.class;
    }
    try
    {
      for (;;)
      {
        brightcoveSurfaceView = ((BrightcoveSurfaceView)brightcoveSurfaceViewClass.getConstructors()[0].newInstance(new Object[] { paramContext }));
        surfaceListener = new BrightcoveVideoView.SurfaceListener(this);
        brightcoveSurfaceView.getHolder().addCallback(surfaceListener);
        imageView = new ImageView(paramContext);
        addView(brightcoveSurfaceView);
        addView(imageView);
        return;
        label140:
        brightcoveSurfaceViewClass = BrightcoveSurfaceView.class;
      }
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      for (;;)
      {
        localIllegalAccessException.printStackTrace();
      }
    }
    catch (InstantiationException localInstantiationException)
    {
      for (;;)
      {
        localInstantiationException.printStackTrace();
      }
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      for (;;)
      {
        localInvocationTargetException.printStackTrace();
      }
    }
  }
  
  protected void initListeners()
  {
    eventEmitter.on("hideSeekControls", new BrightcoveVideoView.1(this));
    eventEmitter.on("showSeekControls", new BrightcoveVideoView.2(this));
    eventEmitter.on("sourceNotPlayable", new BrightcoveVideoView.3(this));
    eventEmitter.on("videoDurationChanged", new BrightcoveVideoView.4(this));
    eventEmitter.on("progress", new BrightcoveVideoView.5(this));
    eventEmitter.on("didSetSource", new BrightcoveVideoView.6(this));
    eventEmitter.on("completed", new BrightcoveVideoView.7(this));
    eventEmitter.on("bufferedUpdate", new BrightcoveVideoView.8(this));
    eventEmitter.on("seekTo", new BrightcoveVideoView.9(this));
    eventEmitter.on("didSeekTo", new BrightcoveVideoView.10(this));
    eventEmitter.on("didSetSource", new BrightcoveVideoView.11(this));
    eventEmitter.on("didPlay", new BrightcoveVideoView.12(this));
    eventEmitter.on("didStop", new BrightcoveVideoView.13(this));
    eventEmitter.on("didPause", new BrightcoveVideoView.14(this));
    eventEmitter.on("willInterruptContent", new BrightcoveVideoView.15(this));
  }
  
  public boolean isPlaying()
  {
    return currentlyPlaying;
  }
  
  public void onControllerHide()
  {
    Log.i(TAG, "onControllerHide");
  }
  
  protected void onFinishInflate()
  {
    super.onFinishInflate();
    if (eventEmitter == null) {
      setEventEmitter(new EventEmitterImpl());
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    Log.v(TAG, "onLayout: changed = " + paramBoolean + ", left = " + paramInt1 + ", top = " + paramInt2 + ", right = " + paramInt3 + ", bottom = " + paramInt4);
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = View.MeasureSpec.getSize(paramInt1);
    int j = View.MeasureSpec.getMode(paramInt1);
    int k = View.MeasureSpec.getSize(paramInt2);
    int m = View.MeasureSpec.getMode(paramInt2);
    Log.v(TAG, "onMeasure: width = " + i + ", height = " + k + ", videoWidth = " + getVideoWidth() + ", videoHeight = " + getVideoHeight() + ", widthMode = " + LayoutUtil.getSpecMode(j) + ", heightMode = " + LayoutUtil.getSpecMode(m));
    super.onMeasure(paramInt1, paramInt2);
  }
  
  protected void onPrepared()
  {
    if (onPreparedListener != null) {
      onPreparedListener.onPrepared(videoDisplay.getMediaPlayer());
    }
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    Log.v(TAG, "onSizeChanged: width = " + paramInt1 + ", height = " + paramInt2 + ", oldw = " + paramInt3 + ", oldh = " + paramInt4);
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    Log.i(TAG, "onTouchEvent");
    if ((brightcoveSurfaceView.isShown()) && (mediaController != null))
    {
      Log.i(TAG, "onTouchEvent: " + mediaController.isShowing());
      if (!mediaController.isShowing()) {
        break label79;
      }
      mediaController.hide();
    }
    for (;;)
    {
      return false;
      label79:
      mediaController.show();
    }
  }
  
  public void pause()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("playheadPosition", Integer.valueOf(playheadPosition));
    eventEmitter.emit("pause", localHashMap);
  }
  
  public void remove(int paramInt)
  {
    Video localVideo = (Video)videos.remove(paramInt);
    videoToSourceMap.remove(localVideo);
    if (currentIndex > paramInt) {
      currentIndex -= 1;
    }
    for (;;)
    {
      emitDidChangeList();
      return;
      if (videos.isEmpty()) {
        setCurrentIndexPrivate(-1);
      } else if (currentIndex == paramInt)
      {
        if (paramInt == videos.size()) {
          setCurrentIndex(paramInt - 1);
        } else if (paramInt < videos.size()) {
          setCurrentIndexPrivate(paramInt);
        }
      }
      else if ((currentIndex + 1 == paramInt) && (currentlyPlaying)) {
        prebufferNextVideo();
      }
    }
  }
  
  protected void resetMetaData()
  {
    if (brightcoveSurfaceView != null) {
      brightcoveSurfaceView.setVideoSize(0, 0);
    }
    bufferedPercent = 0;
    playheadPosition = 0;
    duration = -1;
    setCurrentlyPlaying(false);
  }
  
  public void seekTo(int paramInt)
  {
    Log.d(TAG, "Seeking to " + paramInt);
    HashMap localHashMap = new HashMap();
    localHashMap.put("seekPosition", Integer.valueOf(paramInt));
    playheadPosition = paramInt;
    eventEmitter.emit("seekTo", localHashMap);
  }
  
  public void setCurrentIndex(int paramInt)
  {
    if (paramInt == currentIndex) {
      return;
    }
    if ((paramInt < 0) || (paramInt >= videos.size())) {
      throw new IndexOutOfBoundsException();
    }
    setCurrentIndexPrivate(paramInt);
  }
  
  public void setEventEmitter(EventEmitter paramEventEmitter)
  {
    eventEmitter = RegisteringEventEmitter.build(paramEventEmitter, getClass());
    playbackController = new VideoPlaybackController(paramEventEmitter);
    sourceController = new DefaultSourceSelectionController(paramEventEmitter);
    videoStillDisplay = new VideoStillDisplayComponent(imageView, paramEventEmitter);
    videoDisplay = new VideoDisplayComponent(brightcoveSurfaceView, paramEventEmitter);
    pluginManager = new BrightcovePluginManager(paramEventEmitter);
    initListeners();
  }
  
  public void setLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    int j = 0;
    Log.v(TAG, "setLayoutParams: " + paramLayoutParams);
    super.setLayoutParams(paramLayoutParams);
    if (paramLayoutParams != null)
    {
      int k = getChildCount();
      int i = 0;
      while (i < k)
      {
        if (getChildAt(i).getClass().getName().equals("com.brightcove.ima.GoogleIMAVideoAdPlayer")) {
          j = 1;
        }
        i += 1;
      }
      if (j == 0)
      {
        FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(width, height);
        gravity = 17;
        brightcoveSurfaceView.setLayoutParams(localLayoutParams);
      }
      if (imageView.getVisibility() == 0)
      {
        paramLayoutParams = new FrameLayout.LayoutParams(width, height);
        gravity = 17;
        imageView.setLayoutParams(paramLayoutParams);
      }
    }
  }
  
  public void setMediaController(MediaController paramMediaController)
  {
    setMediaController(paramMediaController, null, null);
  }
  
  public void setMediaController(MediaController paramMediaController, View paramView, MediaController.MediaPlayerControl paramMediaPlayerControl)
  {
    if (mediaController != null) {
      mediaController.hide();
    }
    mediaController = paramMediaController;
    mediaPlayerControl = paramMediaPlayerControl;
    anchorView = paramView;
    attachMediaController();
  }
  
  public void setOnCompletionListener(MediaPlayer.OnCompletionListener paramOnCompletionListener)
  {
    onCompletionListener = paramOnCompletionListener;
  }
  
  public void setOnPreparedListener(MediaPlayer.OnPreparedListener paramOnPreparedListener)
  {
    onPreparedListener = paramOnPreparedListener;
  }
  
  public void setVideoPath(String paramString)
  {
    if (hasNextVideo()) {
      eventEmitter.emit("prebufferNextVideo");
    }
    videos.clear();
    videoToSourceMap.clear();
    add(Video.createVideo(paramString));
  }
  
  public void setVideoURI(Uri paramUri)
  {
    setVideoPath(paramUri.toString());
  }
  
  public void start()
  {
    if (hasSetSource)
    {
      hasPendingPlay = false;
      HashMap localHashMap = new HashMap();
      localHashMap.put("playheadPosition", Integer.valueOf(playheadPosition));
      eventEmitter.emit("play", localHashMap);
      return;
    }
    if (!videos.isEmpty())
    {
      hasPendingPlay = true;
      return;
    }
    Log.e(TAG, "No video to play.");
  }
  
  public void stopPlayback()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("playheadPosition", Integer.valueOf(playheadPosition));
    eventEmitter.emit("stop", localHashMap);
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.view.BrightcoveVideoView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */