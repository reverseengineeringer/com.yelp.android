package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.FeedItem;
import com.yelp.parcelgen.JsonUtil;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class p
  extends b<Void, Void, List<FeedItem>>
{
  public p(String paramString, ApiRequest.b<List<FeedItem>> paramb)
  {
    super(ApiRequest.RequestType.GET, "badge/feed/v2", paramb);
    a("badge_id", paramString);
  }
  
  public List<FeedItem> a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return JsonUtil.parseJsonList(paramJSONObject.getJSONArray("items"), FeedItem.CREATOR);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */