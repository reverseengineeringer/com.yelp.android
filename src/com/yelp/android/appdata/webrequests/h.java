package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.YelpBookmark;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONException;
import org.json.JSONObject;

public class h
  extends b<Void, Void, YelpBookmark>
{
  private YelpBusiness a;
  
  public h(YelpBusiness paramYelpBusiness, ApiRequest.b<YelpBookmark> paramb)
  {
    super(ApiRequest.RequestType.POST, "bookmarks/add", paramb);
    b("business_id", paramYelpBusiness.aD());
    a = paramYelpBusiness;
  }
  
  public YelpBookmark a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return (YelpBookmark)YelpBookmark.CREATOR.parse(paramJSONObject.getJSONObject("bookmark"));
  }
  
  public YelpBusiness b()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */