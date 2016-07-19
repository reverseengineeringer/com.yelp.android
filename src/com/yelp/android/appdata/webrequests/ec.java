package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.Review;
import com.yelp.android.serializable.ReviewDraft;
import com.yelp.android.serializable.ReviewThreshold;
import com.yelp.android.ui.activities.reviews.ReviewState;
import com.yelp.parcelgen.JsonParser.DualCreator;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

public class ec
  extends b<Void, Void, a>
{
  public ec(String paramString, ApiRequest.b<a> paramb)
  {
    super(ApiRequest.RequestType.GET, "review/start", paramb);
    a("business_id", paramString);
  }
  
  public a a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    if (!paramJSONObject.isNull("draft")) {}
    for (ReviewDraft localReviewDraft = (ReviewDraft)ReviewDraft.CREATOR.parse(paramJSONObject.getJSONObject("draft"));; localReviewDraft = null)
    {
      if (!paramJSONObject.isNull("review")) {}
      for (Review localReview = (Review)Review.CREATOR.parse(paramJSONObject.getJSONObject("review"));; localReview = null) {
        return new a(ReviewState.fromDescription(paramJSONObject.getString("review_activity")), JsonUtil.parseJsonList(paramJSONObject.getJSONArray("review_thresholds"), ReviewThreshold.CREATOR), localReviewDraft, localReview);
      }
    }
  }
  
  public class a
  {
    ReviewState a;
    ArrayList<ReviewThreshold> b;
    ReviewDraft c;
    Review d;
    
    public a(ArrayList<ReviewThreshold> paramArrayList, ReviewDraft paramReviewDraft, Review paramReview)
    {
      a = paramArrayList;
      b = paramReviewDraft;
      c = paramReview;
      Review localReview;
      d = localReview;
    }
    
    public ReviewState a()
    {
      return a;
    }
    
    public ArrayList<ReviewThreshold> b()
    {
      return b;
    }
    
    public ReviewDraft c()
    {
      return c;
    }
    
    public Review d()
    {
      return d;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ec
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */