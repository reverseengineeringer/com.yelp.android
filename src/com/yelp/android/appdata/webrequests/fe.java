package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.ReviewDraft;
import com.yelp.parcelgen.JsonUtil;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class fe
  extends b<Void, Void, List<ReviewDraft>>
{
  public fe(ApiRequest.b<List<ReviewDraft>> paramb, int paramInt1, int paramInt2)
  {
    super(ApiRequest.RequestType.GET, "user/reviews/drafts", paramb);
    a("limit", paramInt1);
    a("offset", paramInt2);
  }
  
  public List<ReviewDraft> a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return JsonUtil.parseJsonList(paramJSONObject.getJSONArray("drafts"), ReviewDraft.CREATOR);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.fe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */