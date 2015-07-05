package com.yelp.android.appdata.webrequests;

import android.os.Bundle;
import com.yelp.android.av.g;
import com.yelp.android.serializable.RankLocation;
import com.yelp.android.serializable.RankTitle.Rank;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONObject;

public class gs
  extends g<Void, Void, gt>
{
  public gs(RankTitle.Rank paramRank, String paramString, int paramInt1, int paramInt2, m<gt> paramm)
  {
    super(ApiRequest.RequestType.GET, "user/rankings/locations", paramm);
    addUrlParam("title", paramRank.name().toLowerCase(Locale.US));
    if (paramString != null) {
      addUrlParam("user_id", paramString);
    }
    addUrlParam("offset", paramInt1);
    addUrlParam("limit", paramInt2);
  }
  
  public gt a(JSONObject paramJSONObject)
  {
    paramJSONObject = paramJSONObject.getJSONArray("locations");
    int j = paramJSONObject.length();
    ArrayList localArrayList = JsonUtil.parseJsonList(paramJSONObject, RankLocation.LAZY_CREATOR);
    Bundle localBundle = new Bundle(j);
    int i = 0;
    while (i < j)
    {
      JSONObject localJSONObject = paramJSONObject.getJSONObject(i).optJSONObject("business");
      if ((localJSONObject != null) && (!localJSONObject.isNull("user_check_in_count"))) {
        localBundle.putInt(localJSONObject.getString("id"), localJSONObject.getInt("user_check_in_count"));
      }
      i += 1;
    }
    return new gt(this, localArrayList, localBundle);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.gs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */