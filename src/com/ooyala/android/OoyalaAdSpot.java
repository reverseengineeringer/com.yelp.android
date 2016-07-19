package com.ooyala.android;

import android.os.AsyncTask;
import java.io.PrintStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class OoyalaAdSpot
  extends AdSpot
  implements AuthorizableItemInternal, PlayableItem
{
  protected int _authCode = -1;
  protected boolean _authorized = false;
  protected String _embedCode = null;
  protected Set<Stream> _streams = new HashSet();
  
  public OoyalaAdSpot(int paramInt, URL paramURL, List<URL> paramList, String paramString)
  {
    super(paramInt, paramURL, paramList);
    _embedCode = paramString;
  }
  
  OoyalaAdSpot(JSONObject paramJSONObject, PlayerAPIClient paramPlayerAPIClient)
  {
    _api = paramPlayerAPIClient;
    update(paramJSONObject);
  }
  
  public List<String> embedCodesToAuthorize()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(_embedCode);
    return localArrayList;
  }
  
  public Object fetchPlaybackInfo(FetchPlaybackInfoCallback paramFetchPlaybackInfoCallback)
  {
    paramFetchPlaybackInfoCallback = new FetchPlaybackInfoTask(paramFetchPlaybackInfoCallback);
    paramFetchPlaybackInfoCallback.execute(new Void[0]);
    return paramFetchPlaybackInfoCallback;
  }
  
  public boolean fetchPlaybackInfo()
  {
    if (_authCode != -1) {
      return true;
    }
    try
    {
      boolean bool = _api.authorize(this, StreamPlayer.defaultPlayerInfo);
      return bool;
    }
    catch (OoyalaException localOoyalaException)
    {
      System.out.println("Unable to fetch playback info: " + localOoyalaException.getMessage());
    }
    return false;
  }
  
  public int getAuthCode()
  {
    return _authCode;
  }
  
  public String getEmbedCode()
  {
    return _embedCode;
  }
  
  public Stream getStream()
  {
    return Stream.bestStream(_streams);
  }
  
  public Set<Stream> getStreams()
  {
    return _streams;
  }
  
  public boolean isAuthorized()
  {
    return _authorized;
  }
  
  public boolean isHeartbeatRequired()
  {
    return false;
  }
  
  public Constants.ReturnState update(JSONObject paramJSONObject)
  {
    switch (super.update(paramJSONObject))
    {
    }
    try
    {
      if ((_embedCode != null) && (!paramJSONObject.isNull(_embedCode)))
      {
        paramJSONObject = paramJSONObject.getJSONObject(_embedCode);
        if (!paramJSONObject.isNull("authorized"))
        {
          _authorized = paramJSONObject.getBoolean("authorized");
          if (!paramJSONObject.isNull("code")) {
            _authCode = paramJSONObject.getInt("code");
          }
          if ((_authorized) && (!paramJSONObject.isNull("streams")))
          {
            paramJSONObject = paramJSONObject.getJSONArray("streams");
            if (paramJSONObject.length() > 0)
            {
              _streams.clear();
              int i = 0;
              while (i < paramJSONObject.length())
              {
                Stream localStream = new Stream(paramJSONObject.getJSONObject(i));
                if (localStream != null) {
                  _streams.add(localStream);
                }
                i += 1;
                continue;
                return Constants.ReturnState.STATE_FAIL;
                return Constants.ReturnState.STATE_UNMATCHED;
              }
            }
          }
        }
        return Constants.ReturnState.STATE_MATCHED;
      }
      if (paramJSONObject.isNull("ad_embed_code"))
      {
        System.out.println("ERROR: Fail to update OoyalaAdSpot with dictionary because no ad embed code exists!");
        return Constants.ReturnState.STATE_FAIL;
      }
      _embedCode = paramJSONObject.getString("ad_embed_code");
      paramJSONObject = Constants.ReturnState.STATE_MATCHED;
      return paramJSONObject;
    }
    catch (JSONException paramJSONObject)
    {
      System.out.println("JSONException: " + paramJSONObject);
    }
    return Constants.ReturnState.STATE_FAIL;
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
 * Qualified Name:     com.ooyala.android.OoyalaAdSpot
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */