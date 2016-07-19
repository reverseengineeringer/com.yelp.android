package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.PhotoAdsResponse;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONException;
import org.json.JSONObject;

public class aa
  extends b<Void, Void, PhotoAdsResponse>
{
  public aa(String paramString, ApiRequest.b<PhotoAdsResponse> paramb)
  {
    super(ApiRequest.RequestType.GET, "business/photo_ads", paramb);
    a("biz_id", paramString);
    a("photo_before_ad_index", 0);
  }
  
  public PhotoAdsResponse a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return (PhotoAdsResponse)PhotoAdsResponse.CREATOR.parse(paramJSONObject);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */