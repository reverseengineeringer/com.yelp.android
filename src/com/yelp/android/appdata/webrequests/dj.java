package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.YelpBusinessTiny;
import java.util.Collections;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class dj
  extends b<Void, Void, List<YelpBusinessTiny>>
{
  public dj(String paramString, ApiRequest.b<List<YelpBusinessTiny>> paramb)
  {
    super(ApiRequest.RequestType.GET, "business/related_businesses", paramb);
    a("business_id", paramString);
  }
  
  public List<YelpBusinessTiny> a(JSONObject paramJSONObject)
    throws JSONException
  {
    Object localObject = Collections.emptyList();
    if (!paramJSONObject.isNull("related_businesses")) {
      localObject = YelpBusinessTiny.a(paramJSONObject.getJSONArray("related_businesses"));
    }
    return (List<YelpBusinessTiny>)localObject;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.dj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */