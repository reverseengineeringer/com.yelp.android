package com.yelp.android.appdata.webrequests;

import android.text.TextUtils;
import com.yelp.android.av.g;
import com.yelp.android.serializable.BusinessCategorySuggest;
import com.yelp.parcelgen.JsonUtil;
import java.util.List;
import org.json.JSONObject;

public class v
  extends g<Void, Void, List<BusinessCategorySuggest>>
{
  public v(String paramString1, String paramString2, m paramm)
  {
    super(ApiRequest.RequestType.GET, "business/category_suggest", paramm);
    addUrlParam("term", paramString1);
    if (!TextUtils.isEmpty(paramString2)) {
      addUrlParam("country_code", paramString2);
    }
  }
  
  public List<BusinessCategorySuggest> a(JSONObject paramJSONObject)
  {
    return JsonUtil.parseJsonList(paramJSONObject.getJSONArray("suggestions"), BusinessCategorySuggest.CREATOR);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */