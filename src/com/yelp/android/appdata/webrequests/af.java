package com.yelp.android.appdata.webrequests;

import android.text.TextUtils;
import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.YelpBusiness;
import java.util.Collections;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class af
  extends b<Void, Void, List<YelpBusiness>>
{
  public af(String paramString, ApiRequest.b<List<YelpBusiness>> paramb)
  {
    this(new String[] { paramString }, paramb);
  }
  
  public af(String[] paramArrayOfString, ApiRequest.b<List<YelpBusiness>> paramb)
  {
    super(ApiRequest.RequestType.GET, "business/info", paramb);
    a("biz_ids", TextUtils.join(",", paramArrayOfString));
  }
  
  public List<YelpBusiness> a(JSONObject paramJSONObject)
    throws JSONException
  {
    Object localObject = Collections.emptyList();
    if (!paramJSONObject.isNull("businesses")) {
      localObject = YelpBusiness.a(paramJSONObject.getJSONArray("businesses"), i_(), BusinessSearchRequest.FormatMode.FULL);
    }
    return (List<YelpBusiness>)localObject;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */