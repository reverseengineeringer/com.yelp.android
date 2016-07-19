package com.yelp.android.appdata.webrequests.core;

import com.yelp.android.appdata.webrequests.ApiRequest.RequestType;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import org.json.JSONException;
import org.json.JSONObject;

public class c
  extends b<Void, Void, Void>
{
  public c(ApiRequest.RequestType paramRequestType, String paramString, ApiRequest.b<Void> paramb)
  {
    super(paramRequestType, paramString, paramb);
  }
  
  public c(String paramString, ApiRequest.b<Void> paramb)
  {
    this(ApiRequest.RequestType.POST, paramString, paramb);
  }
  
  public Void a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return null;
  }
  
  public static abstract interface a
    extends ApiRequest.b<Void>
  {}
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.core.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */