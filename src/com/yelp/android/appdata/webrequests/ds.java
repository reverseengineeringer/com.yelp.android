package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.ui.activities.reviews.ReviewState;
import org.json.JSONException;
import org.json.JSONObject;

public class ds
  extends b<Void, Void, ReviewState>
{
  public ds(String paramString, ApiRequest.b<ReviewState> paramb)
  {
    super(ApiRequest.RequestType.POST, "reviews/draft/delete", paramb);
    b("business_id", paramString);
  }
  
  public ReviewState a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return ReviewState.fromDescription(paramJSONObject.getString("user_review_activity"));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ds
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */