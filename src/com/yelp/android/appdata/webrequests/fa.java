package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.LocationService.Accuracies;
import com.yelp.android.appdata.LocationService.AccuracyUnit;
import com.yelp.android.appdata.LocationService.Recentness;
import com.yelp.android.serializable.ReviewSuggestion;
import com.yelp.android.serializable.SurveyQuestion;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.reviews.ReviewSource;
import com.yelp.parcelgen.JsonParser.DualCreator;
import com.yelp.parcelgen.JsonUtil;
import org.json.JSONObject;

public class fa
  extends h<Void, Void, fb>
{
  public fa(String paramString1, String paramString2, int paramInt, ReviewSource paramReviewSource, j<fb> paramj)
  {
    super(ApiRequest.RequestType.POST, "/review/save", LocationService.Accuracies.MEDIUM_KM, LocationService.Recentness.MINUTE_15, paramj, LocationService.AccuracyUnit.MILES);
    addPostParam("business_id", paramString1);
    addPostParam("text", paramString2);
    addPostParam("rating", paramInt);
    addPostParam("source", paramReviewSource.getSourceName());
  }
  
  public fa(String paramString1, String paramString2, int paramInt, String paramString3, ReviewSource paramReviewSource, j<fb> paramj)
  {
    this(paramString1, paramString2, paramInt, paramReviewSource, paramj);
    addPostParam("review_id", paramString3);
  }
  
  public fb a(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("business")) {}
    for (YelpBusiness localYelpBusiness = (YelpBusiness)YelpBusiness.CREATOR.parse(paramJSONObject.getJSONObject("business"));; localYelpBusiness = null)
    {
      String str1 = paramJSONObject.getString("status");
      String str2 = paramJSONObject.optString("warning", null);
      return new fb(localYelpBusiness, str1, paramJSONObject.optBoolean("converted_to_tip", false), str2, paramJSONObject.optString("review_id", null), JsonUtil.parseJsonList(paramJSONObject.optJSONArray("survey_questions"), SurveyQuestion.CREATOR), JsonUtil.parseJsonList(paramJSONObject.optJSONArray("review_suggestions"), ReviewSuggestion.CREATOR));
    }
  }
  
  public boolean isLocationAbsolutelyRequired()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.fa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */