package com.yelp.android.appdata.webrequests;

import android.text.TextUtils;
import com.yelp.android.av.g;
import com.yelp.android.serializable.YelpBusiness;
import java.util.Collections;
import java.util.List;
import org.json.JSONObject;

public class ac
  extends g<Void, Void, List<YelpBusiness>>
{
  public ac(String paramString, m<List<YelpBusiness>> paramm)
  {
    this(new String[] { paramString }, paramm);
  }
  
  public ac(String[] paramArrayOfString, m<List<YelpBusiness>> paramm)
  {
    super(ApiRequest.RequestType.GET, "business/info", paramm);
    addUrlParam("biz_ids", TextUtils.join(",", paramArrayOfString));
  }
  
  public List<YelpBusiness> a(JSONObject paramJSONObject)
  {
    Object localObject = Collections.emptyList();
    if (!paramJSONObject.isNull("businesses")) {
      localObject = YelpBusiness.businessesFromJSONArray(paramJSONObject.getJSONArray("businesses"), getRequestId(), BusinessSearchRequest.FormatMode.FULL);
    }
    return (List<YelpBusiness>)localObject;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */