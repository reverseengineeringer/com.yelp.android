package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.ReviewDeleteResponse;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONException;
import org.json.JSONObject;

public class dt
  extends b<Void, Void, ReviewDeleteResponse>
{
  public dt(String paramString, ApiRequest.b<ReviewDeleteResponse> paramb)
  {
    super(ApiRequest.RequestType.POST, "review/delete", paramb);
    b("review_id", paramString);
  }
  
  public ReviewDeleteResponse a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return (ReviewDeleteResponse)ReviewDeleteResponse.CREATOR.parse(paramJSONObject);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.dt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */