package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.LocationService.Accuracies;
import com.yelp.android.appdata.LocationService.AccuracyUnit;
import com.yelp.android.appdata.LocationService.Recentness;
import com.yelp.android.serializable.ReviewSuggestion;
import com.yelp.android.serializable.SurveyQuestion;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.serializable.a;
import com.yelp.android.ui.activities.reviews.ReviewSource;
import com.yelp.parcelgen.JsonParser.DualCreator;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

public class dz
  extends k<Void, Void, a>
{
  public dz(String paramString1, String paramString2, int paramInt, ReviewSource paramReviewSource, k.b<a> paramb)
  {
    super(ApiRequest.RequestType.POST, "/review/save", LocationService.Accuracies.MEDIUM_KM, LocationService.Recentness.MINUTE_15, paramb, LocationService.AccuracyUnit.MILES);
    b("business_id", paramString1);
    b("text", paramString2);
    b("rating", paramInt);
    b("source", paramReviewSource.getSourceName());
  }
  
  public dz(String paramString1, String paramString2, int paramInt, String paramString3, ReviewSource paramReviewSource, k.b<a> paramb)
  {
    this(paramString1, paramString2, paramInt, paramReviewSource, paramb);
    b("review_id", paramString3);
  }
  
  public a a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    if (!paramJSONObject.isNull("business")) {}
    for (YelpBusiness localYelpBusiness = (YelpBusiness)YelpBusiness.CREATOR.parse(paramJSONObject.getJSONObject("business"));; localYelpBusiness = null)
    {
      if (!paramJSONObject.isNull("review")) {}
      for (YelpBusinessReview localYelpBusinessReview = (YelpBusinessReview)YelpBusinessReview.CREATOR.parse(paramJSONObject.getJSONObject("review"));; localYelpBusinessReview = null)
      {
        String str1 = paramJSONObject.getString("status");
        String str2 = paramJSONObject.optString("warning", null);
        return new a(localYelpBusiness, str1, paramJSONObject.optBoolean("converted_to_tip", false), str2, localYelpBusinessReview, JsonUtil.parseJsonList(paramJSONObject.optJSONArray("survey_questions"), SurveyQuestion.CREATOR), JsonUtil.parseJsonList(paramJSONObject.optJSONArray("review_suggestions"), ReviewSuggestion.CREATOR));
      }
    }
  }
  
  public boolean b()
  {
    return false;
  }
  
  public static class a
  {
    private final YelpBusiness a;
    private final String b;
    private final String c;
    private final boolean d;
    private final YelpBusinessReview e;
    private final ArrayList<SurveyQuestion> f;
    private final ArrayList<ReviewSuggestion> g;
    
    public a(YelpBusiness paramYelpBusiness, String paramString1, boolean paramBoolean, String paramString2, YelpBusinessReview paramYelpBusinessReview, ArrayList<SurveyQuestion> paramArrayList, ArrayList<ReviewSuggestion> paramArrayList1)
    {
      a = paramYelpBusiness;
      b = paramString1;
      c = paramString2;
      d = paramBoolean;
      e = paramYelpBusinessReview;
      f = paramArrayList;
      g = paramArrayList1;
    }
    
    public YelpBusiness a()
    {
      return a;
    }
    
    public ArrayList<SurveyQuestion> b()
    {
      return f;
    }
    
    public ArrayList<ReviewSuggestion> c()
    {
      return g;
    }
    
    public String d()
    {
      return b;
    }
    
    public String e()
    {
      return c;
    }
    
    public boolean f()
    {
      return d;
    }
    
    public YelpBusinessReview g()
    {
      return e;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.dz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */