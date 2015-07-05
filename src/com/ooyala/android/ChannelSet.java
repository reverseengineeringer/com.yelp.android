package com.ooyala.android;

import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class ChannelSet
  extends ContentItem
  implements PaginatedParentItem
{
  protected OrderedMap<String, Channel> _channels = new OrderedMap();
  protected boolean _isFetchingMoreChildren = false;
  protected String _nextChildren = null;
  
  ChannelSet() {}
  
  ChannelSet(JSONObject paramJSONObject, String paramString, ChannelSet paramChannelSet, PlayerAPIClient paramPlayerAPIClient)
  {
    _embedCode = paramString;
    _api = paramPlayerAPIClient;
    update(paramJSONObject);
  }
  
  ChannelSet(JSONObject paramJSONObject, String paramString, PlayerAPIClient paramPlayerAPIClient)
  {
    this(paramJSONObject, paramString, null, paramPlayerAPIClient);
  }
  
  protected void addChannel(Channel paramChannel)
  {
    _channels.put(paramChannel.getEmbedCode(), paramChannel);
  }
  
  public int childrenCount()
  {
    return _channels.size();
  }
  
  public List<String> embedCodesToAuthorize()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(_embedCode);
    localArrayList.addAll(_channels.keySet());
    return localArrayList;
  }
  
  public boolean fetchMoreChildren(PaginatedItemListener paramPaginatedItemListener)
  {
    if ((!hasMoreChildren()) || (_isFetchingMoreChildren)) {
      return false;
    }
    _isFetchingMoreChildren = true;
    new Thread(new ChannelSet.NextChildrenRunner(this, paramPaginatedItemListener)).start();
    return true;
  }
  
  public Video firstVideo()
  {
    if ((_channels == null) || (_channels.size() == 0)) {
      return null;
    }
    return ((Channel)_channels.get(0)).firstVideo();
  }
  
  public OrderedMap<String, Channel> getChannels()
  {
    return _channels;
  }
  
  public int getDuration()
  {
    Iterator localIterator = _channels.iterator();
    for (int i = 0; localIterator.hasNext(); i = ((Channel)localIterator.next()).getDuration() + i) {}
    return i;
  }
  
  public String getNextChildren()
  {
    return _nextChildren;
  }
  
  public boolean hasMoreChildren()
  {
    return _nextChildren != null;
  }
  
  public Video nextVideo(Channel paramChannel)
  {
    int i = _channels.indexForValue(paramChannel);
    if (i >= 0)
    {
      i += 1;
      if (i < _channels.size()) {}
    }
    else
    {
      return null;
    }
    return ((Channel)_channels.get(i)).firstVideo();
  }
  
  public Video previousVideo(Channel paramChannel)
  {
    int i = _channels.indexForValue(paramChannel);
    if (i >= 0)
    {
      i -= 1;
      if (i >= 0) {}
    }
    else
    {
      return null;
    }
    return ((Channel)_channels.get(i)).lastVideo();
  }
  
  public Constants.ReturnState update(JSONObject paramJSONObject)
  {
    int i;
    Object localObject1;
    for (;;)
    {
      try
      {
        i = ChannelSet.1.$SwitchMap$com$ooyala$android$Constants$ReturnState[super.update(paramJSONObject).ordinal()];
        switch (i)
        {
        default: 
          try
          {
            localObject1 = paramJSONObject.getJSONObject(_embedCode);
            if ((((JSONObject)localObject1).isNull("authorized")) || (!((JSONObject)localObject1).getBoolean("authorized"))) {
              break label195;
            }
            localObject1 = _channels.iterator();
            if (!((Iterator)localObject1).hasNext()) {
              break label188;
            }
            ((Channel)((Iterator)localObject1).next()).update(paramJSONObject);
            continue;
          }
          catch (JSONException paramJSONObject)
          {
            System.out.println("JSONException: " + paramJSONObject);
            paramJSONObject = Constants.ReturnState.STATE_FAIL;
          }
          return paramJSONObject;
        case 1: 
          paramJSONObject = Constants.ReturnState.STATE_FAIL;
          break;
        }
        localObject1 = _channels.iterator();
        if (((Iterator)localObject1).hasNext())
        {
          ((Channel)((Iterator)localObject1).next()).update(paramJSONObject);
          continue;
        }
        paramJSONObject = Constants.ReturnState.STATE_UNMATCHED;
      }
      finally {}
      continue;
      label188:
      paramJSONObject = Constants.ReturnState.STATE_MATCHED;
      continue;
      label195:
      if (!((JSONObject)localObject1).isNull("base"))
      {
        localObject1 = _channels.iterator();
        while (((Iterator)localObject1).hasNext()) {
          ((Channel)((Iterator)localObject1).next()).update(paramJSONObject);
        }
        paramJSONObject = Constants.ReturnState.STATE_MATCHED;
      }
      else if ((!((JSONObject)localObject1).isNull("content_type")) && (!((JSONObject)localObject1).getString("content_type").equals("MultiChannel")))
      {
        System.out.println("ERROR: Attempted to initialize ChannelSet with content_type: " + ((JSONObject)localObject1).getString("content_type"));
        paramJSONObject = Constants.ReturnState.STATE_FAIL;
      }
      else
      {
        if (((JSONObject)localObject1).isNull("next_children")) {}
        for (paramJSONObject = null;; paramJSONObject = ((JSONObject)localObject1).getString("next_children"))
        {
          _nextChildren = paramJSONObject;
          if (!((JSONObject)localObject1).isNull("children")) {
            break label389;
          }
          if (_nextChildren != null) {
            break label382;
          }
          System.out.println("ERROR: Attempted to initialize ChannelSet with children == nil and next_children == nil: " + _embedCode);
          paramJSONObject = Constants.ReturnState.STATE_FAIL;
          break;
        }
        label382:
        paramJSONObject = Constants.ReturnState.STATE_MATCHED;
      }
    }
    label389:
    paramJSONObject = ((JSONObject)localObject1).getJSONArray("children");
    if (paramJSONObject.length() > 0) {
      i = 0;
    }
    for (;;)
    {
      if (i < paramJSONObject.length())
      {
        JSONObject localJSONObject = paramJSONObject.getJSONObject(i);
        if ((!localJSONObject.isNull("content_type")) && (localJSONObject.getString("content_type").equals("Channel")))
        {
          Object localObject2 = new HashMap();
          localObject1 = localJSONObject.getString("embed_code");
          ((HashMap)localObject2).put(localObject1, localJSONObject);
          localJSONObject = new JSONObject((Map)localObject2);
          localObject2 = (Channel)_channels.get(localObject1);
          if (localObject2 == null) {
            addChannel(new Channel(localJSONObject, (String)localObject1, this, _api));
          } else {
            ((Channel)localObject2).update(localJSONObject);
          }
        }
        else
        {
          System.out.println("ERROR: Invalid Channel content_type: " + localJSONObject.getString("content_type"));
        }
      }
      else
      {
        paramJSONObject = Constants.ReturnState.STATE_MATCHED;
        break;
      }
      i += 1;
    }
  }
  
  public Video videoFromEmbedCode(String paramString, Video paramVideo)
  {
    int i;
    int j;
    if (paramVideo == null)
    {
      i = 0;
      j = i;
    }
    for (;;)
    {
      Video localVideo = ((Channel)_channels.get(j)).videoFromEmbedCode(paramString, paramVideo);
      if (localVideo != null)
      {
        return localVideo;
        i = _channels.indexForValue(paramVideo.getParent());
        break;
      }
      if (j >= _channels.size()) {
        j = 0;
      }
      while (j == i)
      {
        return null;
        j += 1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.ChannelSet
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */