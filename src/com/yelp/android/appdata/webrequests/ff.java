package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import com.yelp.android.serializable.Review;
import com.yelp.android.serializable.ReviewDraft;
import com.yelp.android.serializable.ReviewThreshold;
import com.yelp.android.ui.activities.reviews.ReviewState;
import com.yelp.parcelgen.JsonParser.DualCreator;
import com.yelp.parcelgen.JsonUtil;
import org.json.JSONObject;

public class ff
  extends g<Void, Void, fg>
{
  public ff(String paramString, m<fg> paramm)
  {
    super(ApiRequest.RequestType.GET, "review/start", paramm);
    addUrlParam("business_id", paramString);
  }
  
  public fg a(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("draft")) {}
    for (ReviewDraft localReviewDraft = (ReviewDraft)ReviewDraft.CREATOR.parse(paramJSONObject.getJSONObject("draft"));; localReviewDraft = null)
    {
      if (!paramJSONObject.isNull("review")) {}
      for (Review localReview = (Review)Review.CREATOR.parse(paramJSONObject.getJSONObject("review"));; localReview = null) {
        return new fg(this, ReviewState.fromDescription(paramJSONObject.getString("review_activity")), JsonUtil.parseJsonList(paramJSONObject.getJSONArray("review_thresholds"), ReviewThreshold.CREATOR), localReviewDraft, localReview);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ff
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */