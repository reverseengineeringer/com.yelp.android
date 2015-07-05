package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import com.yelp.android.serializable.YelpBookmark;
import com.yelp.android.serializable.YelpBusiness;
import org.json.JSONObject;

public class d
  extends g<Void, Void, YelpBookmark>
{
  public d(YelpBusiness paramYelpBusiness, m<YelpBookmark> paramm)
  {
    super(ApiRequest.RequestType.POST, "bookmarks/add", paramm);
    addPostParam("business_id", paramYelpBusiness.getId());
  }
  
  public YelpBookmark a(JSONObject paramJSONObject)
  {
    return new YelpBookmark(paramJSONObject.getJSONObject("bookmark"));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */