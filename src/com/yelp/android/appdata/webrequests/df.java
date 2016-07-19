package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.PrivacyPolicy;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONException;
import org.json.JSONObject;

public class df
  extends b<Void, Void, PrivacyPolicy>
{
  public df(ApiRequest.b<PrivacyPolicy> paramb)
  {
    super(ApiRequest.RequestType.GET, "/privacy_policy", paramb);
  }
  
  public PrivacyPolicy a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return (PrivacyPolicy)PrivacyPolicy.CREATOR.parse(paramJSONObject);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.df
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */