package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import com.yelp.android.serializable.WeeklyIssueResponse;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

public class hf
  extends g<Void, Void, WeeklyIssueResponse>
{
  public hf(String paramString, m<WeeklyIssueResponse> paramm)
  {
    super(ApiRequest.RequestType.GET, "weekly", paramm);
    addUrlParam("market_id", paramString);
  }
  
  public WeeklyIssueResponse a(JSONObject paramJSONObject)
  {
    return (WeeklyIssueResponse)WeeklyIssueResponse.CREATOR.parse(paramJSONObject);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.hf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */