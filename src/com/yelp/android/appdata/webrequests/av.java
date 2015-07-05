package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import com.yelp.android.serializable.Compliment;
import org.json.JSONObject;

public abstract class av
  extends g<Void, Void, Compliment>
{
  protected Compliment a;
  
  public av(m<Compliment> paramm, String paramString, Compliment paramCompliment)
  {
    super(ApiRequest.RequestType.POST, paramString, paramm);
    a = paramCompliment;
  }
  
  public Compliment a(JSONObject paramJSONObject)
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.av
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */