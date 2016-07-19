package com.yelp.android.appdata.webrequests;

import android.text.TextUtils;
import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.BusinessCategorySuggest;
import com.yelp.parcelgen.JsonUtil;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class x
  extends b<Void, Void, List<BusinessCategorySuggest>>
{
  public x(String paramString1, String paramString2, ApiRequest.b paramb)
  {
    super(ApiRequest.RequestType.GET, "business/category_suggest", paramb);
    a("term", paramString1);
    if (!TextUtils.isEmpty(paramString2)) {
      a("country_code", paramString2);
    }
  }
  
  public List<BusinessCategorySuggest> a(JSONObject paramJSONObject)
    throws JSONException
  {
    return JsonUtil.parseJsonList(paramJSONObject.getJSONArray("suggestions"), BusinessCategorySuggest.CREATOR);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */