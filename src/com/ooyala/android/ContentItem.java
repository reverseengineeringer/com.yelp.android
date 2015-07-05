package com.ooyala.android;

import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class ContentItem
  implements AuthorizableItemInternal, OrderedMapValue<String>
{
  protected PlayerAPIClient _api;
  protected int _authCode = -1;
  protected boolean _authorized = false;
  protected String _contentToken = null;
  protected String _description = null;
  protected String _embedCode = null;
  protected String _externalId = null;
  protected boolean _heartbeatRequired;
  protected Map<String, String> _metadata;
  protected Map<String, ModuleData> _moduleData;
  protected String _promoImageURL = null;
  protected String _title = null;
  
  ContentItem() {}
  
  ContentItem(String paramString1, String paramString2, String paramString3)
  {
    this(paramString1, null, paramString2, paramString3);
  }
  
  ContentItem(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    _embedCode = paramString1;
    _contentToken = paramString2;
    _title = paramString3;
    _description = paramString4;
  }
  
  ContentItem(JSONObject paramJSONObject, String paramString, PlayerAPIClient paramPlayerAPIClient)
  {
    _embedCode = paramString;
    _api = paramPlayerAPIClient;
    update(paramJSONObject);
  }
  
  static ContentItem create(JSONObject paramJSONObject, String paramString, PlayerAPIClient paramPlayerAPIClient)
  {
    if ((paramJSONObject == null) || (paramString == null) || (paramJSONObject.isNull(paramString))) {}
    Object localObject;
    for (;;)
    {
      return null;
      try
      {
        localObject = paramJSONObject.getJSONObject(paramString);
        if (!((JSONObject)localObject).isNull("content_type"))
        {
          localObject = ((JSONObject)localObject).getString("content_type");
          if (localObject != null) {
            if ((((String)localObject).equals("Video")) || (((String)localObject).equals("LiveStream"))) {
              return new Video(paramJSONObject, paramString, paramPlayerAPIClient);
            }
          }
        }
      }
      catch (JSONException paramJSONObject)
      {
        System.out.println("Create failed due to JSONException: " + paramJSONObject);
        return null;
      }
    }
    if (((String)localObject).equals("Channel")) {
      return new Channel(paramJSONObject, paramString, paramPlayerAPIClient);
    }
    if (((String)localObject).equals("MultiChannel")) {
      return new ChannelSet(paramJSONObject, paramString, paramPlayerAPIClient);
    }
    System.out.println("Unknown content_type: " + (String)localObject);
    return null;
  }
  
  static ContentItem create(JSONObject paramJSONObject, List<String> paramList, PlayerAPIClient paramPlayerAPIClient)
  {
    if ((paramJSONObject == null) || (paramList == null) || (paramList.size() == 0)) {
      return null;
    }
    if (paramList.size() == 1) {
      return create(paramJSONObject, (String)paramList.get(0), paramPlayerAPIClient);
    }
    return new DynamicChannel(paramJSONObject, paramList, paramPlayerAPIClient);
  }
  
  public static String getAuthError(int paramInt)
  {
    if (paramInt == 0) {
      return "Video is authorized!";
    }
    if ((paramInt < 0) || (paramInt >= authCodeDescription.length)) {
      return "Invalid Authorization Error Code";
    }
    return AuthorizableItem.authCodeDescription[paramInt];
  }
  
  public static List<String> getEmbedCodes(List<? extends ContentItem> paramList)
  {
    if (paramList == null) {
      return null;
    }
    ArrayList localArrayList = new ArrayList();
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      localArrayList.add(((ContentItem)paramList.next()).getEmbedCode());
    }
    return localArrayList;
  }
  
  public List<String> embedCodesToAuthorize()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(_embedCode);
    return localArrayList;
  }
  
  public abstract Video firstVideo();
  
  public int getAuthCode()
  {
    return _authCode;
  }
  
  String getContentToken()
  {
    return _contentToken;
  }
  
  public String getDescription()
  {
    return _description;
  }
  
  public abstract int getDuration();
  
  public String getEmbedCode()
  {
    return _embedCode;
  }
  
  public String getExternalId()
  {
    return _externalId;
  }
  
  public String getKey()
  {
    return _embedCode;
  }
  
  public Map<String, String> getMetadata()
  {
    return _metadata;
  }
  
  public Map<String, ModuleData> getModuleData()
  {
    return _moduleData;
  }
  
  public String getPromoImageURL(int paramInt1, int paramInt2)
  {
    return _promoImageURL;
  }
  
  public String getTitle()
  {
    return _title;
  }
  
  public boolean isAuthorized()
  {
    return _authorized;
  }
  
  public boolean isHeartbeatRequired()
  {
    return _heartbeatRequired;
  }
  
  public Constants.ReturnState update(JSONObject paramJSONObject)
  {
    if (paramJSONObject == null) {
      return Constants.ReturnState.STATE_FAIL;
    }
    if ((_embedCode == null) || (paramJSONObject.isNull(_embedCode))) {
      return Constants.ReturnState.STATE_UNMATCHED;
    }
    try
    {
      paramJSONObject = paramJSONObject.getJSONObject(_embedCode);
      if (!paramJSONObject.isNull("authorized"))
      {
        _authorized = paramJSONObject.getBoolean("authorized");
        if (!paramJSONObject.isNull("code")) {
          _authCode = paramJSONObject.getInt("code");
        }
        if (!paramJSONObject.isNull("require_heartbeat")) {
          _heartbeatRequired = paramJSONObject.getBoolean("require_heartbeat");
        }
        return Constants.ReturnState.STATE_MATCHED;
      }
      if ((_embedCode != null) && (!paramJSONObject.isNull("embed_code")) && (!_embedCode.equals(paramJSONObject.getString("embed_code")))) {
        return Constants.ReturnState.STATE_FAIL;
      }
      if (!paramJSONObject.isNull("embed_code")) {
        _embedCode = paramJSONObject.getString("embed_code");
      }
      if (!paramJSONObject.isNull("external_id")) {
        _externalId = paramJSONObject.getString("external_id");
      }
      if (!paramJSONObject.isNull("content_token")) {
        _contentToken = paramJSONObject.getString("content_token");
      }
      if (!paramJSONObject.isNull("title")) {
        _title = paramJSONObject.getString("title");
      }
      if (!paramJSONObject.isNull("description")) {
        _description = paramJSONObject.getString("description");
      }
      if (!paramJSONObject.isNull("promo_image")) {
        _promoImageURL = paramJSONObject.getString("promo_image");
      }
      if (paramJSONObject.has("base")) {
        _metadata = Utils.mapFromJSONObject(paramJSONObject.getJSONObject("base"));
      }
      if (paramJSONObject.has("modules"))
      {
        _moduleData = new HashMap();
        paramJSONObject = paramJSONObject.getJSONObject("modules");
        Iterator localIterator = paramJSONObject.keys();
        while (localIterator.hasNext())
        {
          String str1 = (String)localIterator.next();
          Object localObject = paramJSONObject.getJSONObject(str1);
          String str2 = ((JSONObject)localObject).optString("type");
          localObject = Utils.mapFromJSONObject(((JSONObject)localObject).getJSONObject("metadata"));
          _moduleData.put(str1, new ModuleData(str1, str2, (Map)localObject));
        }
      }
      return Constants.ReturnState.STATE_MATCHED;
    }
    catch (JSONException paramJSONObject)
    {
      System.out.println("JSONException: " + paramJSONObject);
      return Constants.ReturnState.STATE_FAIL;
    }
  }
  
  public abstract Video videoFromEmbedCode(String paramString, Video paramVideo);
}

/* Location:
 * Qualified Name:     com.ooyala.android.ContentItem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */