package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import com.yelp.android.ui.activities.reviews.ReviewState;
import org.json.JSONObject;

public class es
  extends g<Void, Void, ReviewState>
{
  public es(String paramString, m<ReviewState> paramm)
  {
    super(ApiRequest.RequestType.POST, "reviews/draft/delete", paramm);
    addUrlParam("business_id", paramString);
  }
  
  public ReviewState a(JSONObject paramJSONObject)
  {
    return ReviewState.fromDescription(paramJSONObject.getString("user_review_activity"));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.es
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */