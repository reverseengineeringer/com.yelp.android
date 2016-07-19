package com.ooyala.android;

import android.os.AsyncTask;
import android.util.Log;
import java.io.PrintStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.json.JSONException;
import org.json.JSONObject;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;

public class VASTAdSpot
  extends AdSpot
{
  static final List<String> URL_STRINGS_TO_REPLACE = Arrays.asList(new String[] { "%5BPlace_Random_Number_Here%5D", "[Place_Random_Number_Here]", "%3Cnow%3E", "%3Crand-num%3E", "[TIMESTAMP]", "%5BTIMESTAMP%5E", "[timestamp]", "%5Btimestamp%5E" });
  protected List<VASTAd> _ads = new ArrayList();
  protected long _expires;
  protected String _signature;
  protected URL _vastURL;
  
  public VASTAdSpot(int paramInt, URL paramURL1, List<URL> paramList, URL paramURL2)
  {
    super(paramInt, paramURL1, paramList);
    _vastURL = urlFromAdUrlString(paramURL2.toString());
  }
  
  VASTAdSpot(JSONObject paramJSONObject, PlayerAPIClient paramPlayerAPIClient)
  {
    _api = paramPlayerAPIClient;
    update(paramJSONObject);
  }
  
  public static URL urlFromAdUrlString(String paramString)
  {
    String str = "" + System.currentTimeMillis() / 1000L;
    Iterator localIterator = URL_STRINGS_TO_REPLACE.iterator();
    for (Object localObject = paramString; localIterator.hasNext(); localObject = ((String)localObject).replace((String)localIterator.next(), str)) {}
    try
    {
      localObject = new URL((String)localObject);
      return (URL)localObject;
    }
    catch (MalformedURLException localMalformedURLException)
    {
      Log.e(VASTAdSpot.class.getName(), "Malformed VAST URL: " + paramString);
    }
    return null;
  }
  
  public Object fetchPlaybackInfo(FetchPlaybackInfoCallback paramFetchPlaybackInfoCallback)
  {
    paramFetchPlaybackInfoCallback = new FetchPlaybackInfoTask(paramFetchPlaybackInfoCallback);
    paramFetchPlaybackInfoCallback.execute(new Void[0]);
    return paramFetchPlaybackInfoCallback;
  }
  
  public boolean fetchPlaybackInfo()
  {
    if (_vastURL == null) {
      return false;
    }
    try
    {
      Object localObject = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(_vastURL.toString()).getDocumentElement();
      if (!((Element)localObject).getTagName().equals("VAST")) {
        return false;
      }
      if (Double.parseDouble(((Element)localObject).getAttribute("version")) < 2.0D) {
        return false;
      }
      localObject = ((Element)localObject).getFirstChild();
      while (localObject != null) {
        if ((!(localObject instanceof Element)) || (!((Element)localObject).getTagName().equals("Ad")))
        {
          localObject = ((Node)localObject).getNextSibling();
        }
        else
        {
          VASTAd localVASTAd = new VASTAd((Element)localObject);
          if (localVASTAd != null) {
            _ads.add(localVASTAd);
          }
          localObject = ((Node)localObject).getNextSibling();
        }
      }
      return true;
    }
    catch (Exception localException)
    {
      System.out.println("ERROR: Unable to fetch VAST ad tag info: " + localException);
      return false;
    }
  }
  
  public List<VASTAd> getAds()
  {
    return _ads;
  }
  
  public URL getVASTURL()
  {
    return _vastURL;
  }
  
  Constants.ReturnState update(JSONObject paramJSONObject)
  {
    switch (super.update(paramJSONObject))
    {
    default: 
      if (paramJSONObject.isNull("signature"))
      {
        Log.e(getClass().getName(), "ERROR: Fail to update VASTAd with dictionary because no signature exists!");
        return Constants.ReturnState.STATE_FAIL;
      }
      break;
    case ???: 
      return Constants.ReturnState.STATE_FAIL;
    case ???: 
      return Constants.ReturnState.STATE_UNMATCHED;
    }
    if (paramJSONObject.isNull("expires"))
    {
      Log.e(getClass().getName(), "ERROR: Fail to update VASTAd with dictionary because no expires exists!");
      return Constants.ReturnState.STATE_FAIL;
    }
    if (paramJSONObject.isNull("url"))
    {
      Log.e(getClass().getName(), "ERROR: Fail to update VASTAd with dictionary because no url exists!");
      return Constants.ReturnState.STATE_FAIL;
    }
    try
    {
      _signature = paramJSONObject.getString("signature");
      _expires = paramJSONObject.getInt("expires");
      _vastURL = urlFromAdUrlString(paramJSONObject.getString("url"));
      if (_vastURL == null)
      {
        paramJSONObject = Constants.ReturnState.STATE_FAIL;
        return paramJSONObject;
      }
    }
    catch (JSONException paramJSONObject)
    {
      Log.d(getClass().getName(), "JSONException: " + paramJSONObject);
      return Constants.ReturnState.STATE_FAIL;
    }
    return Constants.ReturnState.STATE_MATCHED;
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
 * Qualified Name:     com.ooyala.android.VASTAdSpot
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */