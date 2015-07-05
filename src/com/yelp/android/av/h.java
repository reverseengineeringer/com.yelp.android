package com.yelp.android.av;

import com.yelp.android.appdata.webrequests.ApiRequest.RequestType;
import com.yelp.android.appdata.webrequests.m;
import org.json.JSONObject;

public class h
  extends g<Void, Void, Void>
{
  public h(ApiRequest.RequestType paramRequestType, String paramString, m<Void> paramm)
  {
    super(paramRequestType, paramString, paramm);
  }
  
  public h(String paramString, m<Void> paramm)
  {
    this(ApiRequest.RequestType.POST, paramString, paramm);
  }
  
  public Void a(JSONObject paramJSONObject)
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.av.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */