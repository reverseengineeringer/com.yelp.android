package com.ooyala.android;

import android.os.AsyncTask;
import android.util.Log;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

public class OoyalaAPIClient
{
  private PlayerAPIClient _playerAPI = null;
  private SecureURLGenerator _secureUrlGenerator = null;
  
  OoyalaAPIClient(PlayerAPIClient paramPlayerAPIClient)
  {
    _playerAPI = paramPlayerAPIClient;
  }
  
  public OoyalaAPIClient(SecureURLGenerator paramSecureURLGenerator, String paramString1, String paramString2)
  {
    this(paramString1, paramString2);
    _secureUrlGenerator = paramSecureURLGenerator;
  }
  
  public OoyalaAPIClient(String paramString1, SignatureGenerator paramSignatureGenerator, String paramString2, String paramString3)
  {
    this(new EmbeddedSecureURLGenerator(paramString1, paramSignatureGenerator), paramString2, paramString3);
  }
  
  public OoyalaAPIClient(String paramString1, String paramString2)
  {
    this(new PlayerAPIClient(paramString1, paramString2, null));
  }
  
  public OoyalaAPIClient(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    this(new EmbeddedSecureURLGenerator(paramString1, paramString2), paramString3, paramString4);
  }
  
  public void cancel(Object paramObject)
  {
    _playerAPI.cancel(paramObject);
  }
  
  public ContentItem contentTree(List<String> paramList)
    throws OoyalaException
  {
    return _playerAPI.contentTree(paramList);
  }
  
  public Object contentTree(List<String> paramList, ContentTreeCallback paramContentTreeCallback)
  {
    return _playerAPI.contentTree(paramList, paramContentTreeCallback);
  }
  
  public ContentItem contentTreeByExternalIds(List<String> paramList)
    throws OoyalaException
  {
    return _playerAPI.contentTreeByExternalIds(paramList);
  }
  
  public Object contentTreeByExternalIds(List<String> paramList, ContentTreeCallback paramContentTreeCallback)
  {
    return _playerAPI.contentTreeByExternalIds(paramList, paramContentTreeCallback);
  }
  
  public PaginatedItemResponse contentTreeNext(PaginatedParentItem paramPaginatedParentItem)
  {
    return _playerAPI.contentTreeNext(paramPaginatedParentItem);
  }
  
  public Object contentTreeNext(PaginatedParentItem paramPaginatedParentItem, ContentTreeNextCallback paramContentTreeNextCallback)
  {
    return _playerAPI.contentTreeNext(paramPaginatedParentItem, paramContentTreeNextCallback);
  }
  
  public ContentItem contentTreeWithAdSet(List<String> paramList, String paramString)
    throws OoyalaException
  {
    return _playerAPI.contentTreeWithAdSet(paramList, paramString);
  }
  
  public Object contentTreeWithAdSet(List<String> paramList, String paramString, ContentTreeCallback paramContentTreeCallback)
  {
    return _playerAPI.contentTreeWithAdSet(paramList, paramString, paramContentTreeCallback);
  }
  
  String getDomain()
  {
    return _playerAPI.getDomain();
  }
  
  String getPcode()
  {
    return _playerAPI.getPcode();
  }
  
  SecureURLGenerator getSecureURLGenerator()
  {
    return _secureUrlGenerator;
  }
  
  public Object objectFromBacklotAPI(String paramString, Map<String, String> paramMap, ObjectFromBacklotAPICallback paramObjectFromBacklotAPICallback)
  {
    paramObjectFromBacklotAPICallback = new ObjectFromBacklotAPITask(paramObjectFromBacklotAPICallback);
    paramObjectFromBacklotAPICallback.execute(new Object[] { paramString, paramMap });
    return paramObjectFromBacklotAPICallback;
  }
  
  public JSONObject objectFromBacklotAPI(String paramString, Map<String, String> paramMap)
  {
    if (_secureUrlGenerator == null)
    {
      Log.d(getClass().getName(), "Backlot APIs are not supported without a SecureURLGenerator or apikey/secret");
      return null;
    }
    return OoyalaAPIHelper.objectForAPI(_secureUrlGenerator.secureURL(Constants.BACKLOT_HOST, "/v2" + paramString, paramMap));
  }
  
  private class ObjectFromBacklotAPITask
    extends AsyncTask<Object, Integer, JSONObject>
  {
    protected ObjectFromBacklotAPICallback _callback = null;
    
    public ObjectFromBacklotAPITask(ObjectFromBacklotAPICallback paramObjectFromBacklotAPICallback)
    {
      _callback = paramObjectFromBacklotAPICallback;
    }
    
    protected JSONObject doInBackground(Object... paramVarArgs)
    {
      if ((paramVarArgs == null) || (paramVarArgs.length < 2) || (!(paramVarArgs[0] instanceof String)) || (!(paramVarArgs[0] instanceof Map))) {
        return null;
      }
      String str = (String)paramVarArgs[0];
      paramVarArgs = (Map)paramVarArgs[1];
      return objectFromBacklotAPI(str, paramVarArgs);
    }
    
    protected void onPostExecute(JSONObject paramJSONObject)
    {
      _callback.callback(paramJSONObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.OoyalaAPIClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */