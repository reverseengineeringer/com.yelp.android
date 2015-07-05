package com.ooyala.android;

import java.io.PrintStream;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class DynamicChannel
  extends Channel
{
  protected List<String> _embedCodes = null;
  
  DynamicChannel() {}
  
  DynamicChannel(JSONObject paramJSONObject, List<String> paramList, ChannelSet paramChannelSet, PlayerAPIClient paramPlayerAPIClient)
  {
    _authorized = true;
    _authCode = 0;
    _parent = paramChannelSet;
    _embedCode = null;
    _embedCodes = paramList;
    _api = paramPlayerAPIClient;
    update(paramJSONObject);
  }
  
  DynamicChannel(JSONObject paramJSONObject, List<String> paramList, PlayerAPIClient paramPlayerAPIClient)
  {
    this(paramJSONObject, paramList, null, paramPlayerAPIClient);
  }
  
  public List<String> embedCodesToAuthorize()
  {
    return _embedCodes;
  }
  
  public List<String> getEmbedCodes()
  {
    return _embedCodes;
  }
  
  public Constants.ReturnState update(JSONObject paramJSONObject)
  {
    for (;;)
    {
      Iterator localIterator;
      try
      {
        switch (DynamicChannel.1.$SwitchMap$com$ooyala$android$Constants$ReturnState[super.update(paramJSONObject).ordinal()])
        {
        case 1: 
          localIterator = _videos.values().iterator();
          if (localIterator.hasNext())
          {
            ((Video)localIterator.next()).update(paramJSONObject);
            continue;
            paramJSONObject = Constants.ReturnState.STATE_FAIL;
          }
          break;
        }
      }
      finally {}
      for (;;)
      {
        return paramJSONObject;
        for (;;)
        {
          String str;
          try
          {
            localIterator = _embedCodes.iterator();
            if (!localIterator.hasNext()) {
              break label283;
            }
            str = (String)localIterator.next();
            if (paramJSONObject.isNull(str))
            {
              _embedCodes.remove(str);
              continue;
            }
          }
          catch (JSONException paramJSONObject)
          {
            System.out.println("JSONException: " + paramJSONObject);
            paramJSONObject = Constants.ReturnState.STATE_FAIL;
          }
          Object localObject = paramJSONObject.getJSONObject(str);
          if (!((JSONObject)localObject).isNull("content_type")) {
            if (((JSONObject)localObject).getString("content_type").equals("Video"))
            {
              localObject = (Video)_videos.get(str);
              if (localObject == null) {
                addVideo(new Video(paramJSONObject, str, this, _api));
              } else {
                ((Video)localObject).update(paramJSONObject);
              }
            }
            else
            {
              System.out.println("ERROR: Invalid Video(DynamicChannel) content_type: " + ((JSONObject)localObject).getString("content_type"));
            }
          }
        }
        label283:
        paramJSONObject = Constants.ReturnState.STATE_MATCHED;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.DynamicChannel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */