package com.ooyala.android;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import android.widget.FrameLayout;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Observable;
import java.util.Set;

class VASTAdPlayer
  extends AdMoviePlayer
{
  private static String TAG = VASTAdPlayer.class.getName();
  private VASTAdSpot _ad;
  private Object _fetchTask;
  private boolean _firstQSent = false;
  private boolean _impressionSent = false;
  private List<String> _impressionURLs = new ArrayList();
  private AdsLearnMoreButton _learnMore;
  private List<VASTLinearAd> _linearAdQueue = new ArrayList();
  private boolean _midSent = false;
  private FrameLayout _playerLayout;
  private boolean _startSent = false;
  private boolean _thirdQSent = false;
  private int _topMargin;
  
  private void addQuartileBoundaryObserver()
  {
    _startSent = false;
    _firstQSent = false;
    _midSent = false;
    _thirdQSent = false;
  }
  
  private VASTLinearAd currentAd()
  {
    if (_linearAdQueue.isEmpty()) {
      return null;
    }
    return (VASTLinearAd)_linearAdQueue.get(0);
  }
  
  private boolean initAfterFetch(OoyalaPlayer paramOoyalaPlayer)
  {
    Iterator localIterator = _ad.getAds().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (VASTAd)localIterator.next();
      _impressionURLs.addAll(((VASTAd)localObject).getImpressionURLs());
      localObject = ((VASTAd)localObject).getSequence().iterator();
      while (((Iterator)localObject).hasNext())
      {
        VASTSequenceItem localVASTSequenceItem = (VASTSequenceItem)((Iterator)localObject).next();
        if ((localVASTSequenceItem.hasLinear()) && (localVASTSequenceItem.getLinear().getStream() != null)) {
          _linearAdQueue.add(localVASTSequenceItem.getLinear());
        }
      }
    }
    if (_linearAdQueue.isEmpty()) {
      return false;
    }
    if ((_linearAdQueue.get(0) == null) || (((VASTLinearAd)_linearAdQueue.get(0)).getStreams() == null)) {
      return false;
    }
    addQuartileBoundaryObserver();
    super.init(paramOoyalaPlayer, ((VASTLinearAd)_linearAdQueue.get(0)).getStreams());
    _playerLayout = paramOoyalaPlayer.getLayout();
    _topMargin = paramOoyalaPlayer.getTopBarOffset();
    if ((currentAd() != null) && (currentAd().getClickThroughURL() != null))
    {
      _learnMore = new AdsLearnMoreButton(_playerLayout.getContext(), this, _topMargin);
      _playerLayout.addView(_learnMore);
    }
    if (_ad.getTrackingURLs() != null)
    {
      paramOoyalaPlayer = _ad.getTrackingURLs().iterator();
      while (paramOoyalaPlayer.hasNext()) {
        NetUtils.ping((URL)paramOoyalaPlayer.next());
      }
    }
    return true;
  }
  
  private void sendImpressionTrackingEvent(List<String> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      String str = (String)paramList.next();
      Log.i(TAG, "Sending Impression Tracking Ping: " + VASTAdSpot.urlFromAdUrlString(str));
      NetUtils.ping(VASTAdSpot.urlFromAdUrlString(str));
    }
    _impressionSent = true;
  }
  
  public void destroy()
  {
    if (_learnMore != null)
    {
      _playerLayout.removeView(_learnMore);
      _learnMore.destroy();
      _learnMore = null;
    }
    if ((_fetchTask != null) && (_parent != null)) {
      _parent.getPlayerAPIClient().cancel(_fetchTask);
    }
    deleteObserver(this);
    super.destroy();
  }
  
  public VASTAdSpot getAd()
  {
    return _ad;
  }
  
  public void init(final OoyalaPlayer paramOoyalaPlayer, AdSpot paramAdSpot)
  {
    if (!(paramAdSpot instanceof VASTAdSpot))
    {
      _error = "Invalid Ad";
      _state = OoyalaPlayer.State.ERROR;
    }
    do
    {
      return;
      _seekable = false;
      _ad = ((VASTAdSpot)paramAdSpot);
      if ((_ad.getAds() == null) || (_ad.getAds().isEmpty()))
      {
        if (_fetchTask != null) {
          _parent.getPlayerAPIClient().cancel(_fetchTask);
        }
        _fetchTask = _ad.fetchPlaybackInfo(new FetchPlaybackInfoCallback()
        {
          public void callback(boolean paramAnonymousBoolean)
          {
            if (!paramAnonymousBoolean)
            {
              _error = "Could not fetch VAST Ad";
              setState(OoyalaPlayer.State.ERROR);
            }
            while (VASTAdPlayer.this.initAfterFetch(paramOoyalaPlayer)) {
              return;
            }
            _error = "Bad VAST Ad";
            setState(OoyalaPlayer.State.ERROR);
          }
        });
        return;
      }
    } while (initAfterFetch(paramOoyalaPlayer));
    _error = "Bad VAST Ad";
    setState(OoyalaPlayer.State.ERROR);
  }
  
  public void pause()
  {
    if (_linearAdQueue.isEmpty())
    {
      setState(OoyalaPlayer.State.COMPLETED);
      return;
    }
    if (_state != OoyalaPlayer.State.PLAYING) {
      sendTrackingEvent("pause");
    }
    super.pause();
  }
  
  public void play()
  {
    if (_linearAdQueue.isEmpty())
    {
      setState(OoyalaPlayer.State.COMPLETED);
      return;
    }
    if (currentTime() != 0) {
      sendTrackingEvent("resume");
    }
    super.play();
  }
  
  public void processClickThrough()
  {
    Object localObject2;
    if ((currentAd() != null) && (currentAd().getClickTrackingURLs() != null))
    {
      localObject1 = currentAd().getClickTrackingURLs();
      if (localObject1 != null)
      {
        localObject1 = ((Set)localObject1).iterator();
        while (((Iterator)localObject1).hasNext())
        {
          localObject2 = (String)((Iterator)localObject1).next();
          Log.i(TAG, "Sending Click Tracking Ping: " + VASTAdSpot.urlFromAdUrlString((String)localObject2));
          NetUtils.ping(VASTAdSpot.urlFromAdUrlString((String)localObject2));
        }
      }
    }
    Object localObject1 = currentAd().getClickThroughURL();
    try
    {
      localObject1 = ((String)localObject1).trim();
      localObject2 = new Intent("android.intent.action.VIEW", Uri.parse((String)localObject1));
      _playerLayout.getContext().startActivity((Intent)localObject2);
      Log.d(TAG, "Opening brower to " + (String)localObject1);
      return;
    }
    catch (Exception localException)
    {
      Log.e(TAG, "There was some exception on clickthrough!");
      localException.printStackTrace();
    }
  }
  
  public void resume()
  {
    super.resume();
    if (_learnMore != null) {
      _playerLayout.bringChildToFront(_learnMore);
    }
  }
  
  public void sendTrackingEvent(String paramString)
  {
    if ((currentAd() == null) || (currentAd().getTrackingEvents() == null)) {}
    for (;;)
    {
      return;
      Object localObject = (Set)currentAd().getTrackingEvents().get(paramString);
      if (localObject != null)
      {
        localObject = ((Set)localObject).iterator();
        while (((Iterator)localObject).hasNext())
        {
          String str = (String)((Iterator)localObject).next();
          Log.i(TAG, "Sending " + paramString + " Tracking Ping: " + VASTAdSpot.urlFromAdUrlString(str));
          NetUtils.ping(VASTAdSpot.urlFromAdUrlString(str));
        }
      }
    }
  }
  
  protected void setState(OoyalaPlayer.State paramState)
  {
    if (paramState == OoyalaPlayer.State.COMPLETED)
    {
      if (_linearAdQueue.size() > 0) {
        _linearAdQueue.remove(0);
      }
      sendTrackingEvent("complete");
      if (!_linearAdQueue.isEmpty())
      {
        addQuartileBoundaryObserver();
        super.init(_parent, ((VASTLinearAd)_linearAdQueue.get(0)).getStreams());
        return;
      }
    }
    super.setState(paramState);
  }
  
  public void update(Observable paramObservable, Object paramObject)
  {
    if (paramObject == "timeChanged") {
      if ((!_startSent) && (currentTime() > 0))
      {
        if (!_impressionSent) {
          sendImpressionTrackingEvent(_impressionURLs);
        }
        sendTrackingEvent("creativeView");
        sendTrackingEvent("start");
        _startSent = true;
      }
    }
    for (;;)
    {
      super.update(paramObservable, paramObject);
      return;
      if ((!_firstQSent) && (currentTime() > currentAd().getDuration() * 1000.0D / 4.0D))
      {
        sendTrackingEvent("firstQuartile");
        _firstQSent = true;
      }
      else if ((!_midSent) && (currentTime() > currentAd().getDuration() * 1000.0D / 2.0D))
      {
        sendTrackingEvent("midpoint");
        _midSent = true;
      }
      else if ((!_thirdQSent) && (currentTime() > 3.0D * currentAd().getDuration() * 1000.0D / 4.0D))
      {
        sendTrackingEvent("thirdQuartile");
        _thirdQSent = true;
        continue;
        if (paramObject == "stateChanged")
        {
          try
          {
            if (((BaseStreamPlayer)paramObservable).getState() != OoyalaPlayer.State.COMPLETED) {
              continue;
            }
            sendTrackingEvent("complete");
            if (_linearAdQueue.size() > 0) {
              _linearAdQueue.remove(0);
            }
            if (_linearAdQueue.isEmpty()) {
              continue;
            }
            super.destroy();
            addQuartileBoundaryObserver();
            super.init(_parent, ((VASTLinearAd)_linearAdQueue.get(0)).getStreams());
            super.play();
            if ((currentAd() == null) || (currentAd().getClickThroughURL() == null)) {
              break label391;
            }
            if (_learnMore != null) {
              break label377;
            }
            _learnMore = new AdsLearnMoreButton(_playerLayout.getContext(), this, _topMargin);
            _playerLayout.addView(_learnMore);
          }
          catch (Exception localException)
          {
            Log.e(TAG, "arg0 should be a BaseStreamPlayer but is not!");
          }
          continue;
          label377:
          _playerLayout.bringChildToFront(_learnMore);
          continue;
          label391:
          if (_learnMore != null)
          {
            _playerLayout.removeView(_learnMore);
            _learnMore = null;
          }
        }
      }
    }
  }
  
  public void updateLearnMoreButton(FrameLayout paramFrameLayout, int paramInt)
  {
    if (_topMargin == paramInt) {
      return;
    }
    if (_learnMore != null)
    {
      _playerLayout.removeView(_learnMore);
      _playerLayout = paramFrameLayout;
      _topMargin = paramInt;
      _learnMore.setTopMargin(_topMargin);
      _playerLayout.addView(_learnMore);
      return;
    }
    _playerLayout = paramFrameLayout;
    _topMargin = paramInt;
  }
  
  private static abstract interface TrackingEvent
  {
    public static final String COMPLETE = "complete";
    public static final String CREATIVE_VIEW = "creativeView";
    public static final String FIRST_QUARTILE = "firstQuartile";
    public static final String MIDPOINT = "midpoint";
    public static final String PAUSE = "pause";
    public static final String RESUME = "resume";
    public static final String START = "start";
    public static final String THIRD_QUARTILE = "thirdQuartile";
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.VASTAdPlayer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */