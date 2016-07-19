package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.PlatformDisambiguatedAddress;
import com.yelp.parcelgen.JsonUtil;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class ey
  extends b<Void, Void, List<PlatformDisambiguatedAddress>>
{
  public ey(ApiRequest.b<List<PlatformDisambiguatedAddress>> paramb)
  {
    super(ApiRequest.RequestType.GET, "user/address/list", paramb);
  }
  
  public List<PlatformDisambiguatedAddress> a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return JsonUtil.parseJsonList(paramJSONObject.getJSONArray("addresses"), PlatformDisambiguatedAddress.CREATOR);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ey
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */