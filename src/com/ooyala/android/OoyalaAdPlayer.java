package com.ooyala.android;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import android.widget.FrameLayout;
import java.net.URL;
import java.util.Iterator;
import java.util.List;

class OoyalaAdPlayer
  extends AdMoviePlayer
{
  private static String TAG = OoyalaAdPlayer.class.getName();
  private OoyalaAdSpot _ad;
  private Object _fetchTask;
  private AdsLearnMoreButton _learnMore;
  private FrameLayout _playerLayout;
  private int _topMargin;
  
  private void initAfterFetch(OoyalaPlayer paramOoyalaPlayer)
  {
    super.init(paramOoyalaPlayer, _ad.getStreams());
    if ((_learnMore == null) && (_ad.getClickURL() != null))
    {
      _playerLayout = paramOoyalaPlayer.getLayout();
      _topMargin = paramOoyalaPlayer.getTopBarOffset();
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
  }
  
  private void setBasePlayer2(StreamPlayer paramStreamPlayer)
  {
    super.setBasePlayer(paramStreamPlayer);
  }
  
  public void destroy()
  {
    if (_learnMore != null)
    {
      _playerLayout.removeView(_learnMore);
      _learnMore.destroy();
      _learnMore = null;
    }
    if (_fetchTask != null) {
      _parent.getPlayerAPIClient().cancel(_fetchTask);
    }
    super.destroy();
  }
  
  public OoyalaAdSpot getAd()
  {
    return _ad;
  }
  
  public void init(final OoyalaPlayer paramOoyalaPlayer, AdSpot paramAdSpot)
  {
    if (!(paramAdSpot instanceof OoyalaAdSpot))
    {
      _error = "Invalid Ad";
      _state = OoyalaPlayer.State.ERROR;
      return;
    }
    _seekable = false;
    _ad = ((OoyalaAdSpot)paramAdSpot);
    if ((!_ad.isAuthorized()) && (_ad.getAuthCode() > 0))
    {
      _error = ("This ad was unauthorized to play: " + ContentItem.getAuthError(_ad.getAuthCode()));
      _state = OoyalaPlayer.State.ERROR;
      return;
    }
    if ((_ad.getStream() == null) || (getBasePlayer() != null))
    {
      if (_fetchTask != null) {
        _parent.getPlayerAPIClient().cancel(_fetchTask);
      }
      if (getBasePlayer() != null) {}
      for (paramAdSpot = getBasePlayer().getPlayerInfo();; paramAdSpot = StreamPlayer.defaultPlayerInfo)
      {
        _fetchTask = _ad._api.authorize(_ad, paramAdSpot, new AuthorizeCallback()
        {
          public void callback(boolean paramAnonymousBoolean, OoyalaException paramAnonymousOoyalaException)
          {
            if ((paramAnonymousOoyalaException != null) || (!_ad.isAuthorized()))
            {
              _error = "Error fetching VAST XML";
              setState(OoyalaPlayer.State.ERROR);
              return;
            }
            OoyalaAdPlayer.this.initAfterFetch(paramOoyalaPlayer);
          }
        });
        return;
      }
    }
    initAfterFetch(paramOoyalaPlayer);
  }
  
  public void processClickThrough()
  {
    String str = _ad.getClickURL().toString();
    try
    {
      str = str.trim();
      Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(str));
      _playerLayout.getContext().startActivity(localIntent);
      Log.d(TAG, "Opening brower to " + str);
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
  
  public void setBasePlayer(final StreamPlayer paramStreamPlayer)
  {
    if (_ad == null)
    {
      setBasePlayer2(paramStreamPlayer);
      return;
    }
    if (paramStreamPlayer != null) {}
    for (PlayerInfo localPlayerInfo = paramStreamPlayer.getPlayerInfo();; localPlayerInfo = StreamPlayer.defaultPlayerInfo)
    {
      _ad._api.authorize(_ad, localPlayerInfo, new AuthorizeCallback()
      {
        public void callback(boolean paramAnonymousBoolean, OoyalaException paramAnonymousOoyalaException)
        {
          if ((paramAnonymousOoyalaException != null) || (!_ad.isAuthorized())) {
            return;
          }
          OoyalaAdPlayer.this.setBasePlayer2(paramStreamPlayer);
        }
      });
      return;
    }
  }
  
  public void updateLearnMoreButton(FrameLayout paramFrameLayout, int paramInt)
  {
    if (_topMargin == paramInt) {}
    while (_learnMore == null) {
      return;
    }
    _playerLayout.removeView(_learnMore);
    _playerLayout = paramFrameLayout;
    _learnMore.setTopMargin(paramInt);
    _playerLayout.addView(_learnMore);
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.OoyalaAdPlayer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */