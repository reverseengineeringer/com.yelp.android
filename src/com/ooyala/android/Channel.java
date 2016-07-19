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

public class Channel
  extends ContentItem
  implements PaginatedParentItem
{
  protected boolean _isFetchingMoreChildren = false;
  protected String _nextChildren = null;
  protected ChannelSet _parent = null;
  protected OrderedMap<String, Video> _videos = new OrderedMap();
  
  Channel() {}
  
  Channel(JSONObject paramJSONObject, String paramString, ChannelSet paramChannelSet, PlayerAPIClient paramPlayerAPIClient)
  {
    _embedCode = paramString;
    _api = paramPlayerAPIClient;
    _parent = paramChannelSet;
    update(paramJSONObject);
  }
  
  Channel(JSONObject paramJSONObject, String paramString, PlayerAPIClient paramPlayerAPIClient)
  {
    this(paramJSONObject, paramString, null, paramPlayerAPIClient);
  }
  
  protected void addVideo(Video paramVideo)
  {
    _videos.put(paramVideo.getEmbedCode(), paramVideo);
  }
  
  public int childrenCount()
  {
    return _videos.size();
  }
  
  public List<String> embedCodesToAuthorize()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(_embedCode);
    localArrayList.addAll(_videos.keySet());
    return localArrayList;
  }
  
  public boolean fetchMoreChildren(PaginatedItemListener paramPaginatedItemListener)
  {
    if ((!hasMoreChildren()) || (_isFetchingMoreChildren)) {
      return false;
    }
    _isFetchingMoreChildren = true;
    new Thread(new NextChildrenRunner(paramPaginatedItemListener)).start();
    return true;
  }
  
  public Video firstVideo()
  {
    if ((_videos == null) || (_videos.size() == 0)) {
      return null;
    }
    return (Video)_videos.get(0);
  }
  
  public int getDuration()
  {
    Iterator localIterator = _videos.iterator();
    for (int i = 0; localIterator.hasNext(); i = ((Video)localIterator.next()).getDuration() + i) {}
    return i;
  }
  
  public String getNextChildren()
  {
    return _nextChildren;
  }
  
  public ChannelSet getParent()
  {
    return _parent;
  }
  
  public OrderedMap<String, Video> getVideos()
  {
    return _videos;
  }
  
  public boolean hasMoreChildren()
  {
    return _nextChildren != null;
  }
  
  public Video lastVideo()
  {
    if ((_videos == null) || (_videos.size() == 0)) {
      return null;
    }
    return (Video)_videos.get(_videos.size() - 1);
  }
  
  public Video nextVideo(Video paramVideo)
  {
    int i = _videos.indexForValue(paramVideo);
    if (i >= 0)
    {
      i += 1;
      if (i < _videos.size()) {}
    }
    else
    {
      if (_parent == null) {
        return null;
      }
      return _parent.nextVideo(this);
    }
    return (Video)_videos.get(i);
  }
  
  public Video previousVideo(Video paramVideo)
  {
    int i = _videos.indexForValue(paramVideo);
    if (i >= 0)
    {
      i -= 1;
      if (i >= 0) {}
    }
    else
    {
      if (_parent == null) {
        return null;
      }
      return _parent.previousVideo(this);
    }
    return (Video)_videos.get(i);
  }
  
  public Constants.ReturnState update(JSONObject paramJSONObject)
  {
    int i;
    Object localObject1;
    for (;;)
    {
      try
      {
        i = 1.$SwitchMap$com$ooyala$android$Constants$ReturnState[super.update(paramJSONObject).ordinal()];
        switch (i)
        {
        default: 
          try
          {
            localObject1 = paramJSONObject.getJSONObject(_embedCode);
            if ((((JSONObject)localObject1).isNull("authorized")) || (!((JSONObject)localObject1).getBoolean("authorized"))) {
              break label195;
            }
            localObject1 = _videos.iterator();
            if (!((Iterator)localObject1).hasNext()) {
              break label188;
            }
            ((Video)((Iterator)localObject1).next()).update(paramJSONObject);
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
        localObject1 = _videos.iterator();
        if (((Iterator)localObject1).hasNext())
        {
          ((Video)((Iterator)localObject1).next()).update(paramJSONObject);
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
        localObject1 = _videos.iterator();
        while (((Iterator)localObject1).hasNext()) {
          ((Video)((Iterator)localObject1).next()).update(paramJSONObject);
        }
        paramJSONObject = Constants.ReturnState.STATE_MATCHED;
      }
      else if ((!((JSONObject)localObject1).isNull("content_type")) && (!((JSONObject)localObject1).getString("content_type").equals("Channel")))
      {
        System.out.println("ERROR: Attempted to initialize Channel with content_type: " + ((JSONObject)localObject1).getString("content_type"));
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
          System.out.println("ERROR: Attempted to initialize Channel with children == nil and next_children == nil: " + _embedCode);
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
        if ((!localJSONObject.isNull("content_type")) && (localJSONObject.getString("content_type").equals("Video")))
        {
          Object localObject2 = new HashMap();
          localObject1 = localJSONObject.getString("embed_code");
          ((HashMap)localObject2).put(localObject1, localJSONObject);
          localJSONObject = new JSONObject((Map)localObject2);
          localObject2 = (Video)_videos.get(localObject1);
          if (localObject2 == null) {
            addVideo(new Video(localJSONObject, (String)localObject1, this, _api));
          } else {
            ((Video)localObject2).update(localJSONObject);
          }
        }
        else
        {
          System.out.println("ERROR: Invalid Video content_type: " + localJSONObject.getString("content_type"));
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
    return (Video)_videos.get(paramString);
  }
  
  private class NextChildrenRunner
    implements Runnable
  {
    private PaginatedItemListener _listener = null;
    
    public NextChildrenRunner(PaginatedItemListener paramPaginatedItemListener)
    {
      _listener = paramPaginatedItemListener;
    }
    
    public void run()
    {
      PaginatedItemResponse localPaginatedItemResponse = _api.contentTreeNext(Channel.this);
      if (localPaginatedItemResponse == null)
      {
        _listener.onItemsFetched(-1, 0, new OoyalaException(OoyalaException.OoyalaErrorCode.ERROR_CONTENT_TREE_NEXT_FAILED, "Null response"));
        _isFetchingMoreChildren = false;
        return;
      }
      if (firstIndex < 0)
      {
        _listener.onItemsFetched(firstIndex, count, new OoyalaException(OoyalaException.OoyalaErrorCode.ERROR_CONTENT_TREE_NEXT_FAILED, "No additional children found"));
        _isFetchingMoreChildren = false;
        return;
      }
      List localList = ContentItem.getEmbedCodes(_videos.subList(firstIndex, firstIndex + count));
      try
      {
        if ((_api.authorizeEmbedCodes(localList, Channel.this)) && (_api.fetchMetadataForEmbedCodes(localList, Channel.this))) {
          _listener.onItemsFetched(firstIndex, count, null);
        }
        for (;;)
        {
          _isFetchingMoreChildren = false;
          return;
          _listener.onItemsFetched(firstIndex, count, new OoyalaException(OoyalaException.OoyalaErrorCode.ERROR_AUTHORIZATION_FAILED, "Additional child authorization failed"));
        }
      }
      catch (OoyalaException localOoyalaException)
      {
        for (;;)
        {
          _listener.onItemsFetched(firstIndex, count, localOoyalaException);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.Channel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */