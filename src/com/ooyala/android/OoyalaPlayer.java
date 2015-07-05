package com.ooyala.android;

import android.annotation.TargetApi;
import android.graphics.Typeface;
import android.media.MediaMetadataRetriever;
import android.os.Build.VERSION;
import android.os.Handler;
import android.util.Log;
import android.widget.FrameLayout;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Observable;
import java.util.Observer;
import java.util.Set;
import org.json.JSONObject;

public class OoyalaPlayer
  extends Observable
  implements AuthHeartbeat.OnAuthHeartbeatErrorListener, Observer
{
  public static final String AD_COMPLETED_NOTIFICATION = "adCompleted";
  public static final String AD_ERROR_NOTIFICATION = "adError";
  public static final String AD_SKIPPED_NOTIFICATION = "adSkipped";
  public static final String AD_STARTED_NOTIFICATION = "adStarted";
  public static final String AUTHORIZATION_READY_NOTIFICATION = "authorizationReady";
  public static final String BUFFER_CHANGED_NOTIFICATION = "bufferChanged";
  public static final String CONTENT_TREE_READY_NOTIFICATION = "contentTreeReady";
  public static final String CURRENT_ITEM_CHANGED_NOTIFICATION = "currentItemChanged";
  public static final int DO_PAUSE = 1;
  public static final int DO_PLAY = 0;
  public static final String ERROR_NOTIFICATION = "error";
  public static final String LIVE_CLOSED_CAPIONS_LANGUAGE = "Closed Captions";
  public static final String METADATA_READY_NOTIFICATION = "metadataReady";
  public static final String PLAYER_ANDROID = "Android Default";
  public static final String PLAYER_VISUALON = "VisualOn";
  public static final String PLAY_COMPLETED_NOTIFICATION = "playCompleted";
  public static final String PLAY_STARTED_NOTIFICATION = "playStarted";
  public static final String SEEK_COMPLETED_NOTIFICATION = "seekCompleted";
  public static final String STATE_CHANGED_NOTIFICATION = "stateChanged";
  private static final String TAG = OoyalaPlayer.class.getName();
  public static final String TIME_CHANGED_NOTIFICATION = "timeChanged";
  public static boolean enableCustomHLSPlayer;
  public static boolean enableHLS = false;
  public static boolean enableHighResHLS = false;
  private OoyalaPlayer.ActionAtEnd _actionAtEnd;
  private AdMoviePlayer _adPlayer = null;
  private Map<Class<? extends AdSpot>, Class<? extends AdMoviePlayer>> _adPlayers;
  private boolean _adsSeekable = false;
  private Analytics _analytics = null;
  private AuthHeartbeat _authHeartbeat;
  private StreamPlayer _basePlayer = null;
  private ClosedCaptionsStyle _closedCaptionsStyle = new ClosedCaptionsStyle(-1, -16777216, Typeface.DEFAULT);
  private ClosedCaptionsView _closedCaptionsView = null;
  private Video _currentItem = null;
  private CurrentItemChangedCallback _currentItemChangedCallback = null;
  private OoyalaException _error = null;
  private Handler _handler = new Handler();
  private String _language = null;
  private String _lastAccountId = null;
  private int _lastPlayedTime = 0;
  private LayoutController _layoutController = null;
  private JSONObject _metadata = null;
  private final Map<String, Object> _openTasks = new HashMap();
  private boolean _playQueued = false;
  private final List<AdSpot> _playedAds = new ArrayList();
  private MoviePlayer _player = null;
  private PlayerAPIClient _playerAPIClient = null;
  private int _queuedSeekTime;
  private ContentItem _rootItem = null;
  private boolean _seekable = true;
  private OoyalaPlayer.State _state = OoyalaPlayer.State.INIT;
  private boolean _streamBasedCC = false;
  private long _suspendTime = System.currentTimeMillis();
  
  static
  {
    enableCustomHLSPlayer = false;
  }
  
  public OoyalaPlayer(OoyalaAPIClient paramOoyalaAPIClient)
  {
    this(paramOoyalaAPIClient.getPcode(), paramOoyalaAPIClient.getDomain(), null);
  }
  
  public OoyalaPlayer(String paramString1, String paramString2)
  {
    this(paramString1, paramString2, null);
  }
  
  public OoyalaPlayer(String paramString1, String paramString2, EmbedTokenGenerator paramEmbedTokenGenerator)
  {
    _playerAPIClient = new PlayerAPIClient(paramString1, paramString2, paramEmbedTokenGenerator);
    _actionAtEnd = OoyalaPlayer.ActionAtEnd.CONTINUE;
    _adPlayers = new HashMap();
    registerAdPlayer(OoyalaAdSpot.class, OoyalaAdPlayer.class);
    registerAdPlayer(VASTAdSpot.class, VASTAdPlayer.class);
    Log.i(getClass().getName(), "Ooyala SDK Version: " + getVersion());
  }
  
  private void addClosedCaptionsView()
  {
    removeClosedCaptionsView();
    if (((_currentItem != null) && (_currentItem.hasClosedCaptions())) || (_streamBasedCC))
    {
      _closedCaptionsView = new ClosedCaptionsView(getLayout().getContext());
      _closedCaptionsView.setStyle(_closedCaptionsStyle);
      getLayout().addView(_closedCaptionsView);
    }
  }
  
  private void cancelOpenTasks()
  {
    Iterator localIterator = _openTasks.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      _playerAPIClient.cancel(_openTasks.get(str));
    }
    _openTasks.clear();
  }
  
  private boolean changeCurrentItemAfterAuth()
  {
    if ((_currentItem.getModuleData() == null) || (_currentItem.getAuthCode() == -1)) {
      return false;
    }
    sendNotification("currentItemChanged");
    if (!_currentItem.isAuthorized())
    {
      _error = getAuthError(_currentItem);
      setState(OoyalaPlayer.State.ERROR);
      sendNotification("error");
      return false;
    }
    if (_currentItem.isHeartbeatRequired())
    {
      if (_authHeartbeat == null)
      {
        _authHeartbeat = new AuthHeartbeat(_playerAPIClient);
        _authHeartbeat.setAuthHeartbeatErrorListener(this);
      }
      _authHeartbeat.start();
    }
    cancelOpenTasks();
    String str = "changeCurrentItemAfterAuth" + System.currentTimeMillis();
    taskStarted(str, _currentItem.fetchPlaybackInfo(new OoyalaPlayer.5(this, str)));
    return true;
  }
  
  private boolean changeCurrentItemAfterFetch()
  {
    String str = _playerAPIClient.getUserInfo().getAccountId();
    int i;
    int j;
    label40:
    int k;
    if (_analytics == null)
    {
      i = 1;
      if ((str == null) || (str.equals(_lastAccountId))) {
        break label183;
      }
      j = 1;
      if ((str != null) || (_lastAccountId == null)) {
        break label188;
      }
      k = 1;
      label54:
      if ((k | i | j) != 0) {
        _analytics = new Analytics(getLayout().getContext(), _playerAPIClient);
      }
      _lastAccountId = _playerAPIClient.getUserInfo().getAccountId();
      _analytics.initializeVideo(_currentItem.getEmbedCode(), _currentItem.getDuration());
      _analytics.reportPlayerLoad();
      if ((!isShowingAd()) && (!playAdsBeforeTime(0, false))) {
        break label193;
      }
      i = 1;
    }
    for (;;)
    {
      if (i == 0)
      {
        _player = getCorrectMoviePlayer(_currentItem);
        if (initializePlayer(_player, _currentItem) == null)
        {
          return false;
          i = 0;
          break;
          label183:
          j = 0;
          break label40;
          label188:
          k = 0;
          break label54;
          label193:
          i = 0;
          continue;
        }
        dequeuePlay();
      }
    }
    return true;
  }
  
  private void cleanupPlayer(Player paramPlayer)
  {
    if (paramPlayer != null)
    {
      paramPlayer.deleteObserver(this);
      paramPlayer.destroy();
    }
  }
  
  private void cleanupPlayers()
  {
    if (_authHeartbeat != null) {
      _authHeartbeat.stop();
    }
    cleanupPlayer(_adPlayer);
    _adPlayer = null;
    cleanupPlayer(_player);
    _player = null;
    removeClosedCaptionsView();
  }
  
  private MoviePlayer currentPlayer()
  {
    if (_adPlayer != null) {
      return _adPlayer;
    }
    return _player;
  }
  
  private void dequeuePlay()
  {
    if ((_playQueued) && (currentPlayer() != null))
    {
      _playQueued = false;
      play();
    }
  }
  
  private void displayCurrentClosedCaption()
  {
    if ((_closedCaptionsView == null) || (_currentItem == null)) {}
    double d;
    do
    {
      do
      {
        return;
      } while (_streamBasedCC);
      if ((_language == null) || (!_currentItem.hasClosedCaptions()) || (isShowingAd())) {
        break;
      }
      d = currentPlayer().currentTime() / 1000.0D;
    } while ((_closedCaptionsView.getCaption() != null) && (d <= _closedCaptionsView.getCaption().getEnd()) && (d >= _closedCaptionsView.getCaption().getBegin()));
    Caption localCaption = _currentItem.getClosedCaptions().getCaption(_language, d);
    if ((localCaption != null) && (localCaption.getBegin() <= d) && (localCaption.getEnd() >= d))
    {
      _closedCaptionsView.setCaption(localCaption);
      return;
    }
    _closedCaptionsView.setCaption(null);
    return;
    _closedCaptionsView.setCaption(null);
  }
  
  private boolean fetchMoreChildren(PaginatedItemListener paramPaginatedItemListener)
  {
    Channel localChannel = _currentItem.getParent();
    if (localChannel != null)
    {
      ChannelSet localChannelSet = localChannel.getParent();
      if (localChannel.hasMoreChildren()) {
        return localChannel.fetchMoreChildren(paramPaginatedItemListener);
      }
      if ((localChannelSet != null) && (localChannelSet.hasMoreChildren())) {
        return localChannelSet.fetchMoreChildren(paramPaginatedItemListener);
      }
    }
    return false;
  }
  
  private OoyalaException getAuthError(Video paramVideo)
  {
    paramVideo = "Authorization Error: " + ContentItem.getAuthError(paramVideo.getAuthCode());
    Log.e(getClass().toString(), "This video was not authorized! " + paramVideo);
    return new OoyalaException(OoyalaException.OoyalaErrorCode.ERROR_AUTHORIZATION_FAILED, paramVideo);
  }
  
  private MoviePlayer getCorrectMoviePlayer(Video paramVideo)
  {
    paramVideo = paramVideo.getStreams();
    if ((Stream.streamSetContainsDeliveryType(paramVideo, "wv_wvm")) || (Stream.streamSetContainsDeliveryType(paramVideo, "wv_hls"))) {
      return new WidevineOsPlayer();
    }
    if (Stream.streamSetContainsDeliveryType(paramVideo, "wv_mp4")) {
      try
      {
        paramVideo = (MoviePlayer)getClass().getClassLoader().loadClass("com.ooyala.android.WidevineLibPlayer").newInstance();
        return paramVideo;
      }
      catch (Exception paramVideo)
      {
        _error = new OoyalaException(OoyalaException.OoyalaErrorCode.ERROR_PLAYBACK_FAILED, "Could not initialize Widevine Player");
        Log.d(TAG, "Please include the Widevine Library in your project", _error);
        setState(OoyalaPlayer.State.ERROR);
      }
    }
    return new MoviePlayer();
  }
  
  public static String getVersion()
  {
    return "2.2.0_RC12";
  }
  
  private boolean initializeAd(AdSpot paramAdSpot)
  {
    Log.d(TAG, "Ooyala Player: Playing Ad");
    if ((_player != null) && (_player.getBasePlayer() != null)) {
      _player.suspend();
    }
    Object localObject;
    if (_adPlayer != null)
    {
      localObject = _adPlayer.getAd();
      if (((AdSpot)localObject).isReusable()) {
        _playedAds.remove(localObject);
      }
      cleanupPlayer(_adPlayer);
      _adPlayer = null;
    }
    try
    {
      localObject = (Class)_adPlayers.get(paramAdSpot.getClass());
      if (localObject != null) {
        _adPlayer = ((AdMoviePlayer)((Class)localObject).newInstance());
      }
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      for (;;) {}
    }
    catch (InstantiationException localInstantiationException)
    {
      for (;;) {}
    }
    if (_adPlayer == null) {
      return false;
    }
    initializeAdPlayer(_adPlayer, paramAdSpot);
    _adPlayer.setSeekable(_adsSeekable);
    removeClosedCaptionsView();
    if (_adPlayer == null) {
      return false;
    }
    dequeuePlay();
    return true;
  }
  
  private Player initializeAdPlayer(AdMoviePlayer paramAdMoviePlayer, AdSpot paramAdSpot)
  {
    paramAdMoviePlayer.addObserver(this);
    if (_basePlayer != null) {
      paramAdMoviePlayer.setBasePlayer(_basePlayer);
    }
    paramAdMoviePlayer.init(this, paramAdSpot);
    return paramAdMoviePlayer;
  }
  
  private Player initializePlayer(MoviePlayer paramMoviePlayer, Video paramVideo)
  {
    Set localSet = paramVideo.getStreams();
    paramMoviePlayer.addObserver(this);
    if (_basePlayer != null) {
      paramMoviePlayer.setBasePlayer(_basePlayer);
    }
    paramMoviePlayer.init(this, localSet);
    paramMoviePlayer.setLive(paramVideo.isLive());
    addClosedCaptionsView();
    if ((paramMoviePlayer == null) || (paramMoviePlayer.getError() != null)) {
      return null;
    }
    paramMoviePlayer.setSeekable(_seekable);
    return paramMoviePlayer;
  }
  
  private int millisToPercent(int paramInt)
  {
    return (int)(paramInt / getDuration() * 100.0F);
  }
  
  private void onComplete()
  {
    switch (OoyalaPlayer.11.$SwitchMap$com$ooyala$android$OoyalaPlayer$ActionAtEnd[_actionAtEnd.ordinal()])
    {
    default: 
    case 1: 
    case 2: 
      do
      {
        do
        {
          return;
        } while (nextVideo(0));
        reset();
        sendNotification("playCompleted");
        return;
      } while (nextVideo(1));
      reset();
      sendNotification("playCompleted");
      return;
    case 3: 
      cleanupPlayers();
      setState(OoyalaPlayer.State.COMPLETED);
      sendNotification("playCompleted");
      return;
    }
    reset();
    sendNotification("playCompleted");
  }
  
  private int percentToMillis(int paramInt)
  {
    return (int)(paramInt / 100.0F * getDuration());
  }
  
  private boolean playAdsBeforeTime(int paramInt, boolean paramBoolean)
  {
    _lastPlayedTime = paramInt;
    Iterator localIterator = _currentItem.getAds().iterator();
    while (localIterator.hasNext())
    {
      AdSpot localAdSpot = (AdSpot)localIterator.next();
      int j = localAdSpot.getTime();
      int i = j;
      if (Stream.streamSetContainsDeliveryType(getCurrentItem().getStreams(), "hls")) {
        i = (j + 5000) / 10000 * 10000;
      }
      if ((i <= paramInt) && (!_playedAds.contains(localAdSpot)))
      {
        _playedAds.add(localAdSpot);
        if ((!paramBoolean) && (initializeAd(localAdSpot))) {
          return true;
        }
        if ((paramBoolean) && (playAd(localAdSpot))) {
          return true;
        }
      }
    }
    return false;
  }
  
  private void queuePlay()
  {
    Log.v(TAG, "queuePlay()");
    _playQueued = true;
  }
  
  private boolean reinitialize(ContentItem paramContentItem)
  {
    if (paramContentItem == null)
    {
      _rootItem = null;
      _currentItem = null;
      return false;
    }
    _rootItem = paramContentItem;
    _currentItem = paramContentItem.firstVideo();
    sendNotification("contentTreeReady");
    if (_basePlayer == null) {}
    for (PlayerInfo localPlayerInfo = StreamPlayer.defaultPlayerInfo;; localPlayerInfo = _basePlayer.getPlayerInfo())
    {
      cancelOpenTasks();
      String str = "reinitialize" + System.currentTimeMillis();
      taskStarted(str, _playerAPIClient.authorize(paramContentItem, localPlayerInfo, new OoyalaPlayer.6(this, str)));
      return true;
    }
  }
  
  private void removeClosedCaptionsView()
  {
    if (_closedCaptionsView != null)
    {
      getLayout().removeView(_closedCaptionsView);
      _closedCaptionsView = null;
    }
  }
  
  private void reset()
  {
    removeClosedCaptionsView();
    _playQueued = false;
    _player.reset();
    addClosedCaptionsView();
  }
  
  private void sendNotification(String paramString)
  {
    setChanged();
    notifyObservers(paramString);
  }
  
  public static void setEnvironment(OoyalaPlayer.Environment paramEnvironment)
  {
    Constants.setEnvironment(paramEnvironment);
  }
  
  private void setState(OoyalaPlayer.State paramState)
  {
    if (paramState != _state)
    {
      _state = paramState;
      sendNotification("stateChanged");
    }
  }
  
  private void taskCompleted(String paramString)
  {
    _openTasks.remove(paramString);
  }
  
  private void taskStarted(String paramString, Object paramObject)
  {
    if (paramObject != null) {
      _openTasks.put(paramString, paramObject);
    }
  }
  
  public void adPlayerCompleted()
  {
    cleanupPlayer(_adPlayer);
    _adPlayer = null;
    sendNotification("adCompleted");
    if (!playAdsBeforeTime(_lastPlayedTime, true))
    {
      if (_player == null)
      {
        _player = getCorrectMoviePlayer(_currentItem);
        initializePlayer(_player, _currentItem);
        play();
      }
    }
    else {
      return;
    }
    if (_player.getState() == OoyalaPlayer.State.COMPLETED)
    {
      onComplete();
      return;
    }
    _player.resume();
    addClosedCaptionsView();
  }
  
  public boolean changeCurrentItem(Video paramVideo)
  {
    if (paramVideo == null)
    {
      cleanupPlayers();
      return false;
    }
    setState(OoyalaPlayer.State.LOADING);
    cleanupPlayers();
    _playedAds.clear();
    _lastPlayedTime = 0;
    _currentItem = paramVideo;
    if (_currentItemChangedCallback != null) {
      _currentItemChangedCallback.callback(_currentItem);
    }
    cancelOpenTasks();
    paramVideo = "getMetadata" + System.currentTimeMillis();
    taskStarted(paramVideo, _playerAPIClient.metadata(_rootItem, new OoyalaPlayer.3(this, paramVideo)));
    if (_currentItem.getAuthCode() == -1)
    {
      if (_basePlayer == null) {}
      for (paramVideo = StreamPlayer.defaultPlayerInfo;; paramVideo = _player.getBasePlayer().getPlayerInfo())
      {
        String str = "changeCurrentItem" + System.currentTimeMillis();
        taskStarted(str, _playerAPIClient.authorize(_currentItem, paramVideo, new OoyalaPlayer.4(this, str)));
        return true;
      }
    }
    sendNotification("authorizationReady");
    return changeCurrentItemAfterAuth();
  }
  
  public boolean changeCurrentItem(String paramString)
  {
    return changeCurrentItem(_rootItem.videoFromEmbedCode(paramString, _currentItem));
  }
  
  public void displayClosedCaptionText(String paramString)
  {
    _streamBasedCC = true;
    if (_closedCaptionsView == null) {
      addClosedCaptionsView();
    }
    _closedCaptionsView.setCaptionText(paramString);
  }
  
  public OoyalaPlayer.ActionAtEnd getActionAtEnd()
  {
    return _actionAtEnd;
  }
  
  public String getAuthToken()
  {
    return _playerAPIClient.getAuthToken();
  }
  
  public Set<String> getAvailableClosedCaptionsLanguages()
  {
    if ((_player != null) && (_player.isLiveClosedCaptionsAvailable()))
    {
      HashSet localHashSet = new HashSet();
      localHashSet.add("Closed Captions");
      return localHashSet;
    }
    if ((_currentItem == null) || (_currentItem.getClosedCaptions() == null)) {
      return new HashSet();
    }
    return getCurrentItem().getClosedCaptions().getLanguages();
  }
  
  public StreamPlayer getBasePlayer()
  {
    return _basePlayer;
  }
  
  @TargetApi(14)
  public double getBitrate()
  {
    if ((getCurrentItem() == null) || (Stream.bestStream(getCurrentItem().getStreams()) == null)) {
      return -1.0D;
    }
    if (Build.VERSION.SDK_INT >= 14)
    {
      MediaMetadataRetriever localMediaMetadataRetriever = new MediaMetadataRetriever();
      localMediaMetadataRetriever.setDataSource(Stream.bestStream(getCurrentItem().getStreams()).getUrl());
      return Double.parseDouble(localMediaMetadataRetriever.extractMetadata(20));
    }
    return Stream.bestStream(getCurrentItem().getStreams()).getVideoBitrate() * 1000;
  }
  
  public int getBufferPercentage()
  {
    if (currentPlayer() == null) {
      return 0;
    }
    return currentPlayer().buffer();
  }
  
  public String getClosedCaptionsLanguage()
  {
    return _language;
  }
  
  public ClosedCaptionsStyle getClosedCaptionsStyle()
  {
    return _closedCaptionsStyle;
  }
  
  public Video getCurrentItem()
  {
    return _currentItem;
  }
  
  public int getDuration()
  {
    if (currentPlayer() == null) {}
    do
    {
      return 0;
      int i = currentPlayer().duration();
      if (i > 0) {
        return i;
      }
    } while (getCurrentItem() == null);
    return getCurrentItem().getDuration();
  }
  
  public String getEmbedCode()
  {
    if (_rootItem == null) {
      return null;
    }
    return _rootItem.getEmbedCode();
  }
  
  public OoyalaException getError()
  {
    return _error;
  }
  
  public FrameLayout getLayout()
  {
    return _layoutController.getLayout();
  }
  
  public JSONObject getMetadata()
  {
    return _metadata;
  }
  
  public OoyalaAPIClient getOoyalaAPIClient()
  {
    return new OoyalaAPIClient(_playerAPIClient);
  }
  
  PlayerAPIClient getPlayerAPIClient()
  {
    return _playerAPIClient;
  }
  
  public int getPlayheadPercentage()
  {
    if (currentPlayer() == null) {
      return 0;
    }
    return millisToPercent(currentPlayer().currentTime());
  }
  
  public int getPlayheadTime()
  {
    if (currentPlayer() == null) {
      return -1;
    }
    return currentPlayer().currentTime();
  }
  
  public ContentItem getRootItem()
  {
    return _rootItem;
  }
  
  public OoyalaPlayer.SeekStyle getSeekStyle()
  {
    if (getBasePlayer() != null) {
      return getBasePlayer().getSeekStyle();
    }
    if (currentPlayer() != null) {
      return currentPlayer().getSeekStyle();
    }
    Log.w(getClass().toString(), "We are seeking without a player!");
    return OoyalaPlayer.SeekStyle.NONE;
  }
  
  public OoyalaPlayer.State getState()
  {
    return _state;
  }
  
  public int getTopBarOffset()
  {
    return ((AbstractOoyalaPlayerLayoutController)_layoutController).getControls().topBarOffset();
  }
  
  public boolean isAdPlaying()
  {
    return (currentPlayer() == _adPlayer) && (_adPlayer != null);
  }
  
  public boolean isFullscreen()
  {
    return (_layoutController != null) && (_layoutController.isFullscreen());
  }
  
  public boolean isPlaying()
  {
    return _state == OoyalaPlayer.State.PLAYING;
  }
  
  public boolean isShowingAd()
  {
    return _adPlayer != null;
  }
  
  public boolean nextVideo(int paramInt)
  {
    if (_currentItem.nextVideo() != null)
    {
      changeCurrentItem(_currentItem.nextVideo());
      if (paramInt == 0) {
        play();
      }
    }
    while (((paramInt == 0) && (fetchMoreChildren(new OoyalaPlayer.8(this)))) || ((paramInt == 1) && (fetchMoreChildren(new OoyalaPlayer.9(this)))))
    {
      do
      {
        return true;
      } while (paramInt != 1);
      pause();
      return true;
    }
    return false;
  }
  
  public void onAuthHeartbeatError(OoyalaException paramOoyalaException)
  {
    cleanupPlayers();
    _error = paramOoyalaException;
    setState(OoyalaPlayer.State.ERROR);
    sendNotification("error");
  }
  
  public void pause()
  {
    _playQueued = false;
    if (currentPlayer() != null) {
      currentPlayer().pause();
    }
  }
  
  public void play()
  {
    if (currentPlayer() != null)
    {
      if (isAdPlaying()) {
        sendNotification("adStarted");
      }
      currentPlayer().play();
      return;
    }
    queuePlay();
  }
  
  public void play(int paramInt)
  {
    play();
    seek(paramInt);
  }
  
  public boolean playAd(AdSpot paramAdSpot)
  {
    if (!initializeAd(paramAdSpot)) {
      return false;
    }
    play();
    return true;
  }
  
  public boolean previousVideo(int paramInt)
  {
    if (_currentItem.previousVideo() != null)
    {
      changeCurrentItem(_currentItem.previousVideo());
      if (paramInt == 0) {
        play();
      }
      while (paramInt != 1) {
        return true;
      }
      pause();
      return true;
    }
    seek(0);
    return false;
  }
  
  public void registerAdPlayer(Class<? extends AdSpot> paramClass, Class<? extends AdMoviePlayer> paramClass1)
  {
    _adPlayers.put(paramClass, paramClass1);
  }
  
  public void resetAds()
  {
    _playedAds.clear();
  }
  
  public void resume()
  {
    if ((getCurrentItem() != null) && (getCurrentItem().isHeartbeatRequired()))
    {
      if (System.currentTimeMillis() > _suspendTime + _playerAPIClient._heartbeatInterval * 1000)
      {
        if (_basePlayer == null) {}
        for (PlayerInfo localPlayerInfo = StreamPlayer.defaultPlayerInfo;; localPlayerInfo = _basePlayer.getPlayerInfo())
        {
          cancelOpenTasks();
          String str = "changeCurrentItem" + System.currentTimeMillis();
          taskStarted(str, _playerAPIClient.authorize(_currentItem, localPlayerInfo, new OoyalaPlayer.7(this, str)));
          return;
        }
      }
      if (_authHeartbeat == null) {
        _authHeartbeat = new AuthHeartbeat(_playerAPIClient);
      }
      _authHeartbeat.start();
    }
    if (currentPlayer() != null)
    {
      currentPlayer().resume();
      dequeuePlay();
      addClosedCaptionsView();
      setState(currentPlayer().getState());
      return;
    }
    if (_currentItem != null)
    {
      _player = getCorrectMoviePlayer(_currentItem);
      initializePlayer(_player, _currentItem);
      dequeuePlay();
      return;
    }
    _error = new OoyalaException(OoyalaException.OoyalaErrorCode.ERROR_PLAYBACK_FAILED, "Resuming video from an invalid state");
    Log.d(TAG, "Resuming video from an improper state", _error);
    setState(OoyalaPlayer.State.ERROR);
  }
  
  public void seek(int paramInt)
  {
    Log.v(TAG, "seek()...: msec=" + paramInt);
    if (seekable()) {
      currentPlayer().seekToTime(paramInt);
    }
    for (_queuedSeekTime = 0;; _queuedSeekTime = paramInt)
    {
      Log.v(TAG, "...seek(): _queuedSeekTime=" + _queuedSeekTime);
      return;
    }
  }
  
  public void seekToPercent(int paramInt)
  {
    Log.v(TAG, "seekToPercent()...: percent=" + paramInt);
    if ((paramInt < 0) || (paramInt > 100)) {
      return;
    }
    if (seekable()) {
      seek(percentToMillis(paramInt));
    }
    Log.v(TAG, "...seekToPercent()");
  }
  
  public boolean seekable()
  {
    String str = TAG;
    Object localObject = new StringBuilder().append("seekable(): !null=");
    boolean bool;
    StringBuilder localStringBuilder;
    if (currentPlayer() != null)
    {
      bool = true;
      localStringBuilder = ((StringBuilder)localObject).append(bool).append(", seekable=");
      if (currentPlayer() != null) {
        break label89;
      }
    }
    label89:
    for (localObject = "false";; localObject = Boolean.valueOf(currentPlayer().seekable()))
    {
      Log.v(str, localObject);
      if ((currentPlayer() == null) || (!currentPlayer().seekable())) {
        break label103;
      }
      return true;
      bool = false;
      break;
    }
    label103:
    return false;
  }
  
  public void setActionAtEnd(OoyalaPlayer.ActionAtEnd paramActionAtEnd)
  {
    _actionAtEnd = paramActionAtEnd;
  }
  
  public void setAdsSeekable(boolean paramBoolean)
  {
    _adsSeekable = paramBoolean;
    if (_adPlayer != null) {
      _adPlayer.setSeekable(_adsSeekable);
    }
  }
  
  public void setBasePlayer(StreamPlayer paramStreamPlayer)
  {
    _basePlayer = paramStreamPlayer;
    Analytics localAnalytics = _analytics;
    if (_basePlayer != null) {}
    for (String str = _basePlayer.getPlayerInfo().getUserAgent();; str = null)
    {
      localAnalytics.setUserAgent(str);
      if (getCurrentItem() != null) {
        break;
      }
      return;
    }
    cancelOpenTasks();
    str = "setBasePlayer" + System.currentTimeMillis();
    if (paramStreamPlayer == null) {}
    for (paramStreamPlayer = StreamPlayer.defaultPlayerInfo;; paramStreamPlayer = paramStreamPlayer.getPlayerInfo())
    {
      taskStarted(str, _playerAPIClient.authorize(_currentItem, paramStreamPlayer, new OoyalaPlayer.10(this, str)));
      return;
    }
  }
  
  public void setClosedCaptionsLanguage(String paramString)
  {
    _language = paramString;
    if (_player == null) {
      return;
    }
    if (_language == "Closed Captions")
    {
      _player.setLiveClosedCaptionsEnabled(true);
      return;
    }
    if (_language == null) {
      _player.setLiveClosedCaptionsEnabled(false);
    }
    if (_closedCaptionsView != null) {
      _closedCaptionsView.setCaption(null);
    }
    displayCurrentClosedCaption();
  }
  
  public void setClosedCaptionsStyle(ClosedCaptionsStyle paramClosedCaptionsStyle)
  {
    _closedCaptionsStyle = paramClosedCaptionsStyle;
    if (_closedCaptionsView != null)
    {
      _closedCaptionsView.setStyle(paramClosedCaptionsStyle);
      _closedCaptionsView.setCaption(null);
    }
    displayCurrentClosedCaption();
  }
  
  public void setCurrentItemChangedCallback(CurrentItemChangedCallback paramCurrentItemChangedCallback)
  {
    _currentItemChangedCallback = paramCurrentItemChangedCallback;
  }
  
  public void setCustomAnalyticsTags(List<String> paramList)
  {
    if (_analytics != null) {
      _analytics.setTags(paramList);
    }
  }
  
  public boolean setEmbedCode(String paramString)
  {
    return setEmbedCodeWithAdSetCode(paramString, null);
  }
  
  public boolean setEmbedCodeWithAdSetCode(String paramString1, String paramString2)
  {
    if (paramString1 == null) {
      return false;
    }
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramString1);
    return setEmbedCodesWithAdSetCode(localArrayList, paramString2);
  }
  
  public boolean setEmbedCodes(List<String> paramList)
  {
    return setEmbedCodesWithAdSetCode(paramList, null);
  }
  
  public boolean setEmbedCodesWithAdSetCode(List<String> paramList, String paramString)
  {
    if ((paramList == null) || (paramList.isEmpty())) {
      return false;
    }
    cancelOpenTasks();
    setState(OoyalaPlayer.State.LOADING);
    _playQueued = false;
    _queuedSeekTime = 0;
    cleanupPlayers();
    String str = "setEmbedCodes" + System.currentTimeMillis();
    taskStarted(str, _playerAPIClient.contentTreeWithAdSet(paramList, paramString, new OoyalaPlayer.1(this, str)));
    return true;
  }
  
  public boolean setExternalId(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramString);
    return setExternalIds(localArrayList);
  }
  
  public boolean setExternalIds(List<String> paramList)
  {
    if ((paramList == null) || (paramList.isEmpty())) {
      return false;
    }
    cancelOpenTasks();
    setState(OoyalaPlayer.State.LOADING);
    cleanupPlayers();
    String str = "setExternalIds" + System.currentTimeMillis();
    taskStarted(str, _playerAPIClient.contentTreeByExternalIds(paramList, new OoyalaPlayer.2(this, str)));
    return true;
  }
  
  public void setFullscreen(boolean paramBoolean)
  {
    boolean bool2 = isFullscreen();
    if (!paramBoolean) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      if (bool2 == bool1)
      {
        removeClosedCaptionsView();
        _layoutController.setFullscreen(paramBoolean);
        addClosedCaptionsView();
        if (isShowingAd()) {
          _adPlayer.updateLearnMoreButton(getLayout(), getTopBarOffset());
        }
      }
      return;
    }
  }
  
  public void setHook()
  {
    _playerAPIClient.setHook();
  }
  
  public void setLayoutController(LayoutController paramLayoutController)
  {
    _layoutController = paramLayoutController;
    _playerAPIClient.setContext(getLayout().getContext());
  }
  
  public void setPlayheadTime(int paramInt)
  {
    seek(paramInt);
  }
  
  public boolean setRootItem(ContentItem paramContentItem)
  {
    cancelOpenTasks();
    setState(OoyalaPlayer.State.LOADING);
    cleanupPlayers();
    return reinitialize(paramContentItem);
  }
  
  public void setSeekable(boolean paramBoolean)
  {
    _seekable = paramBoolean;
    if (_player != null) {
      _player.setSeekable(_seekable);
    }
  }
  
  public void skipAd()
  {
    if (isShowingAd())
    {
      cleanupPlayer(_adPlayer);
      _adPlayer = null;
      sendNotification("adSkipped");
      if (_player != null) {
        break label60;
      }
      _player = getCorrectMoviePlayer(_currentItem);
      if (_player != null) {
        _player.play();
      }
    }
    label60:
    while (playAdsBeforeTime(_lastPlayedTime, true)) {
      return;
    }
    if (_player.getState() == OoyalaPlayer.State.COMPLETED)
    {
      onComplete();
      return;
    }
    _player.resume();
    addClosedCaptionsView();
  }
  
  public void suspend()
  {
    if (currentPlayer() != null)
    {
      currentPlayer().suspend();
      removeClosedCaptionsView();
    }
    if (_authHeartbeat != null)
    {
      _suspendTime = System.currentTimeMillis();
      _authHeartbeat.stop();
    }
    setState(OoyalaPlayer.State.SUSPENDED);
  }
  
  public void update(Observable paramObservable, Object paramObject)
  {
    paramObservable = (Player)paramObservable;
    paramObject = paramObject.toString();
    if ((currentPlayer() != null) && (currentPlayer() != paramObservable)) {}
    do
    {
      do
      {
        return;
        if (!((String)paramObject).equals("timeChanged")) {
          break;
        }
        sendNotification("timeChanged");
      } while (paramObservable != _player);
      _analytics.reportPlayheadUpdate(_player.currentTime() / 1000);
      _lastPlayedTime = _player.currentTime();
      playAdsBeforeTime(_lastPlayedTime, true);
      displayCurrentClosedCaption();
      return;
      if (((String)paramObject).equals("stateChanged"))
      {
        switch (OoyalaPlayer.11.$SwitchMap$com$ooyala$android$OoyalaPlayer$State[paramObservable.getState().ordinal()])
        {
        }
        for (;;)
        {
          setState(paramObservable.getState());
          return;
          if (paramObservable == _player)
          {
            if (playAdsBeforeTime(2147483646, true)) {
              break;
            }
            onComplete();
            return;
          }
          adPlayerCompleted();
          return;
          if (paramObservable == _player)
          {
            Log.e(TAG, "Error recieved from content.  Cleaning up everything");
            _error = new OoyalaException(OoyalaException.OoyalaErrorCode.ERROR_PLAYBACK_FAILED, paramObservable.getError());
            cleanupPlayers();
            setState(OoyalaPlayer.State.ERROR);
            sendNotification("error");
            return;
          }
          sendNotification("adError");
          adPlayerCompleted();
          return;
          if (_lastPlayedTime == 0)
          {
            _analytics.reportPlayStarted();
            sendNotification("playStarted");
          }
          setState(OoyalaPlayer.State.PLAYING);
          return;
          if (_queuedSeekTime > 0) {
            seek(_queuedSeekTime);
          }
        }
      }
    } while (!((String)paramObject).equals("adCompleted"));
    cleanupPlayer(_adPlayer);
    _adPlayer = null;
    sendNotification("adCompleted");
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.OoyalaPlayer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */