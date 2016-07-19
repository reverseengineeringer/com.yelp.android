package com.ooyala.android;

import android.os.AsyncTask;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class Video
  extends ContentItem
  implements PlayableItem
{
  protected List<AdSpot> _ads = new ArrayList();
  protected ClosedCaptions _closedCaptions = null;
  protected int _duration = 0;
  protected boolean _live = false;
  protected Channel _parent = null;
  protected Set<Stream> _streams = new HashSet();
  
  Video() {}
  
  Video(JSONObject paramJSONObject, String paramString, Channel paramChannel, PlayerAPIClient paramPlayerAPIClient)
  {
    _embedCode = paramString;
    _api = paramPlayerAPIClient;
    _parent = paramChannel;
    update(paramJSONObject);
  }
  
  Video(JSONObject paramJSONObject, String paramString, PlayerAPIClient paramPlayerAPIClient)
  {
    this(paramJSONObject, paramString, null, paramPlayerAPIClient);
  }
  
  public Object fetchPlaybackInfo(FetchPlaybackInfoCallback paramFetchPlaybackInfoCallback)
  {
    paramFetchPlaybackInfoCallback = new FetchPlaybackInfoTask(paramFetchPlaybackInfoCallback);
    paramFetchPlaybackInfoCallback.execute(new Void[0]);
    return paramFetchPlaybackInfoCallback;
  }
  
  public boolean fetchPlaybackInfo()
  {
    if (hasAds())
    {
      Iterator localIterator = _ads.iterator();
      while (localIterator.hasNext()) {
        ((AdSpot)localIterator.next()).fetchPlaybackInfo();
      }
    }
    if (_closedCaptions != null) {
      _closedCaptions.fetchClosedCaptionsInfo();
    }
    return true;
  }
  
  public Video firstVideo()
  {
    return this;
  }
  
  public List<AdSpot> getAds()
  {
    return _ads;
  }
  
  public ClosedCaptions getClosedCaptions()
  {
    return _closedCaptions;
  }
  
  public int getDuration()
  {
    return _duration;
  }
  
  public Channel getParent()
  {
    return _parent;
  }
  
  public Stream getStream()
  {
    return Stream.bestStream(_streams);
  }
  
  public Set<Stream> getStreams()
  {
    return _streams;
  }
  
  public boolean hasAds()
  {
    return (_ads != null) && (_ads.size() > 0);
  }
  
  public boolean hasClosedCaptions()
  {
    return (_closedCaptions != null) && (_closedCaptions.getLanguages().size() > 0);
  }
  
  public void insertAd(AdSpot paramAdSpot)
  {
    paramAdSpot.setAPI(_api);
    if (_ads == null)
    {
      _ads = new ArrayList();
      _ads.add(paramAdSpot);
      return;
    }
    int i = 0;
    while (i < _ads.size())
    {
      if (paramAdSpot.getTime() < ((AdSpot)_ads.get(i)).getTime())
      {
        _ads.add(i, paramAdSpot);
        return;
      }
      i += 1;
    }
    _ads.add(paramAdSpot);
  }
  
  public boolean isLive()
  {
    return _live;
  }
  
  public Video nextVideo()
  {
    if (_parent == null) {
      return null;
    }
    return _parent.nextVideo(this);
  }
  
  public Video previousVideo()
  {
    if (_parent == null) {
      return null;
    }
    return _parent.previousVideo(this);
  }
  
  public void setClosedCaptions(ClosedCaptions paramClosedCaptions)
  {
    _closedCaptions = paramClosedCaptions;
  }
  
  public Constants.ReturnState update(JSONObject paramJSONObject)
  {
    int i = 0;
    switch (super.update(paramJSONObject))
    {
    }
    for (;;)
    {
      try
      {
        paramJSONObject = paramJSONObject.getJSONObject(_embedCode);
        if (!paramJSONObject.isNull("duration")) {
          _duration = paramJSONObject.getInt("duration");
        }
        if (!paramJSONObject.isNull("content_type")) {
          _live = paramJSONObject.getString("content_type").equals("LiveStream");
        }
        Object localObject;
        if ((!paramJSONObject.isNull("authorized")) && (paramJSONObject.getBoolean("authorized")) && (!paramJSONObject.isNull("streams")))
        {
          paramJSONObject = paramJSONObject.getJSONArray("streams");
          if (paramJSONObject.length() > 0)
          {
            _streams.clear();
            i = 0;
            if (i < paramJSONObject.length())
            {
              localObject = new Stream(paramJSONObject.getJSONObject(i));
              if (_live) {
                break label410;
              }
              if (_isLiveStream)
              {
                break label410;
                _live = bool;
                if (localObject != null) {
                  _streams.add(localObject);
                }
                i += 1;
                continue;
                return Constants.ReturnState.STATE_FAIL;
                return Constants.ReturnState.STATE_UNMATCHED;
              }
              bool = false;
              continue;
            }
          }
          return Constants.ReturnState.STATE_MATCHED;
        }
        if (!paramJSONObject.isNull("ads"))
        {
          localObject = paramJSONObject.getJSONArray("ads");
          if (((JSONArray)localObject).length() > 0)
          {
            _ads.clear();
            if (i < ((JSONArray)localObject).length())
            {
              AdSpot localAdSpot = AdSpot.create(((JSONArray)localObject).getJSONObject(i), _api);
              if (localAdSpot != null) {
                _ads.add(localAdSpot);
              } else {
                Log.e(getClass().getName(), "Unable to create ad.");
              }
            }
          }
        }
      }
      catch (JSONException paramJSONObject)
      {
        Log.e(getClass().getName(), "JSONException: " + paramJSONObject);
        return Constants.ReturnState.STATE_FAIL;
      }
      if (!paramJSONObject.isNull("closed_captions"))
      {
        _closedCaptions = null;
        paramJSONObject = paramJSONObject.getJSONArray("closed_captions");
        if (paramJSONObject.length() > 0) {
          _closedCaptions = new ClosedCaptions((JSONObject)paramJSONObject.get(0));
        }
      }
      return Constants.ReturnState.STATE_MATCHED;
      label410:
      boolean bool = true;
      continue;
      i += 1;
    }
  }
  
  public Video videoFromEmbedCode(String paramString, Video paramVideo)
  {
    if (_embedCode.equals(paramString)) {
      return this;
    }
    return null;
  }
  
  private class FetchPlaybackInfoTask
    extends AsyncTask<Void, Integer, Boolean>
  {
    protected FetchPlaybackInfoCallback _callback = null;
    
    public FetchPlaybackInfoTask(FetchPlaybackInfoCallback paramFetchPlaybackInfoCallback)
    {
      _callback = paramFetchPlaybackInfoCallback;
    }
    
    protected Boolean doInBackground(Void... paramVarArgs)
    {
      return Boolean.valueOf(fetchPlaybackInfo());
    }
    
    protected void onPostExecute(Boolean paramBoolean)
    {
      _callback.callback(paramBoolean.booleanValue());
    }
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.Video
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */