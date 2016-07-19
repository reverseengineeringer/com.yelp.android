package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.BusinessAttributes;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class w
  extends b<Void, Void, BusinessAttributes>
{
  public w(String paramString1, String paramString2, ApiRequest.b<BusinessAttributes> paramb)
  {
    super(ApiRequest.RequestType.GET, paramString2, paramb);
    a("country", paramString1);
  }
  
  public BusinessAttributes a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return (BusinessAttributes)BusinessAttributes.CREATOR.parse(paramJSONObject);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */