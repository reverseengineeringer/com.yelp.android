package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.BusinessClaimedResult;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONException;
import org.json.JSONObject;

public class z
  extends b<Void, Void, BusinessClaimedResult>
{
  public z(String paramString, ApiRequest.b<BusinessClaimedResult> paramb)
  {
    super(ApiRequest.RequestType.GET, "business/claimed", paramb);
    a("business_id", paramString);
  }
  
  public BusinessClaimedResult a(JSONObject paramJSONObject)
    throws JSONException
  {
    return (BusinessClaimedResult)BusinessClaimedResult.CREATOR.parse(paramJSONObject);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */