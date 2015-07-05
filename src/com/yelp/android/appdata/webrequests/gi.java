package com.yelp.android.appdata.webrequests;

import android.os.Bundle;
import com.yelp.android.av.g;
import com.yelp.android.serializable.RankLocation;
import com.yelp.android.serializable.RankTitle.Rank;
import com.yelp.android.serializable.YelpBusiness;
import java.util.ArrayList;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONObject;

public class gi
  extends g<Void, Void, gj>
{
  public gi(RankTitle.Rank paramRank, String paramString1, String paramString2, int paramInt1, int paramInt2, m<gj> paramm)
  {
    super(ApiRequest.RequestType.GET, "user/rankings/businesses", paramm);
    addUrlParam("title", paramRank.name().toLowerCase(Locale.US));
    addUrlParam("location_id", paramString2);
    if (paramString1 != null) {
      addUrlParam("user_id", paramString1);
    }
    addUrlParam("offset", paramInt1);
    addUrlParam("limit", paramInt2);
  }
  
  public gj a(JSONObject paramJSONObject)
  {
    paramJSONObject = paramJSONObject.getJSONArray("businesses");
    ArrayList localArrayList1 = YelpBusiness.businessesFromJSONArray(paramJSONObject, getRequestId(), BusinessSearchRequest.FormatMode.SHORT);
    int j = localArrayList1.size();
    ArrayList localArrayList2 = new ArrayList(j);
    Bundle localBundle = new Bundle(j);
    int i = 0;
    while (i < j)
    {
      Object localObject = (YelpBusiness)localArrayList1.get(i);
      localArrayList2.add(new RankLocation(((YelpBusiness)localObject).getId(), ((YelpBusiness)localObject).getName(), 0, null, (YelpBusiness)localObject));
      localObject = paramJSONObject.getJSONObject(i);
      if ((localObject != null) && (!((JSONObject)localObject).isNull("user_check_in_count"))) {
        localBundle.putInt(((JSONObject)localObject).getString("id"), ((JSONObject)localObject).getInt("user_check_in_count"));
      }
      i += 1;
    }
    return new gj(localArrayList2, localBundle);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.gi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */