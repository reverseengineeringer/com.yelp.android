package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import com.yelp.android.serializable.FeedEntry;
import java.util.List;
import org.json.JSONObject;

public class s
  extends g<Void, Void, List<FeedEntry>>
{
  public s(String paramString, m<List<FeedEntry>> paramm)
  {
    super(ApiRequest.RequestType.GET, "badge/feed", paramm);
    addUrlParam("badge_id", paramString);
  }
  
  public List<FeedEntry> a(JSONObject paramJSONObject)
  {
    return FeedEntry.createFeedEntries(paramJSONObject.getJSONArray("items"), this);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */