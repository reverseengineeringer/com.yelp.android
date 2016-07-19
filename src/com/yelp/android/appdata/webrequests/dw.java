package com.yelp.android.appdata.webrequests;

import android.text.TextUtils;
import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.ReviewHighlight;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

public class dw
  extends b<String, Void, a>
{
  public dw(String paramString, int paramInt1, int paramInt2, SearchRequest paramSearchRequest, ApiRequest.b<a> paramb)
  {
    super(ApiRequest.RequestType.GET, "reviews/highlights", paramb);
    if (paramInt2 <= 0) {
      throw new IllegalArgumentException("Limit cannot be negative or zero");
    }
    if (paramInt1 < 0) {
      throw new IllegalArgumentException("Offset cannot be negative");
    }
    if (TextUtils.isEmpty(paramString)) {
      throw new IllegalArgumentException("BusinessId cannot be empty");
    }
    a("business_id", paramString);
    a("limit", paramInt2);
    a("offset", paramInt1);
    if ((paramSearchRequest != null) && (paramSearchRequest.E() != null)) {
      a("search_query", paramSearchRequest.E());
    }
  }
  
  public a a(JSONObject paramJSONObject)
    throws JSONException
  {
    return new a(JsonUtil.parseJsonList(paramJSONObject.optJSONArray("review_highlights"), ReviewHighlight.CREATOR), paramJSONObject.getInt("total"));
  }
  
  public static class a
  {
    ArrayList<ReviewHighlight> a;
    int b;
    
    public a(ArrayList<ReviewHighlight> paramArrayList, int paramInt)
    {
      a = paramArrayList;
      b = paramInt;
    }
    
    public ArrayList<ReviewHighlight> a()
    {
      return a;
    }
    
    public int b()
    {
      return b;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.dw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */