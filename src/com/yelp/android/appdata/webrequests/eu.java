package com.yelp.android.appdata.webrequests;

import android.text.TextUtils;
import com.yelp.android.av.g;
import com.yelp.android.serializable.ReviewHighlight;
import com.yelp.parcelgen.JsonUtil;
import org.json.JSONObject;

public class eu
  extends g<String, Void, ev>
{
  public eu(String paramString, int paramInt1, int paramInt2, SearchRequest paramSearchRequest, m<ev> paramm)
  {
    super(ApiRequest.RequestType.GET, "reviews/highlights", paramm);
    if (paramInt2 <= 0) {
      throw new IllegalArgumentException("Limit cannot be negative or zero");
    }
    if (paramInt1 < 0) {
      throw new IllegalArgumentException("Offset cannot be negative");
    }
    if (TextUtils.isEmpty(paramString)) {
      throw new IllegalArgumentException("BusinessId cannot be empty");
    }
    addUrlParam("business_id", paramString);
    addUrlParam("limit", paramInt2);
    addUrlParam("offset", paramInt1);
    if ((paramSearchRequest != null) && (paramSearchRequest.getSearchTerms() != null)) {
      addUrlParam("search_query", paramSearchRequest.getSearchTerms());
    }
  }
  
  public ev a(JSONObject paramJSONObject)
  {
    return new ev(JsonUtil.parseJsonList(paramJSONObject.optJSONArray("review_highlights"), ReviewHighlight.CREATOR), paramJSONObject.getInt("total"));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.eu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */