package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import com.yelp.android.serializable.ReviewSuggestion;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import org.json.JSONObject;

public class fi
  extends g<Void, Void, ArrayList<ReviewSuggestion>>
{
  public fi(m<ArrayList<ReviewSuggestion>> paramm)
  {
    super(ApiRequest.RequestType.GET, "/reviews/suggestions", paramm);
  }
  
  public ArrayList<ReviewSuggestion> a(JSONObject paramJSONObject)
  {
    return JsonUtil.parseJsonList(paramJSONObject.getJSONArray("review_suggestions"), ReviewSuggestion.CREATOR);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.fi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */