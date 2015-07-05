package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import com.yelp.android.serializable.PrivacyPolicy;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

public class ec
  extends g<Void, Void, PrivacyPolicy>
{
  public ec(m<PrivacyPolicy> paramm)
  {
    super(ApiRequest.RequestType.GET, "/privacy_policy", paramm);
  }
  
  public PrivacyPolicy a(JSONObject paramJSONObject)
  {
    return (PrivacyPolicy)PrivacyPolicy.CREATOR.parse(paramJSONObject);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ec
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */