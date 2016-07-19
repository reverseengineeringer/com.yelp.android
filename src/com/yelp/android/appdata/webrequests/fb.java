package com.yelp.android.appdata.webrequests;

import android.os.Bundle;
import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.RankLocation;
import com.yelp.android.serializable.RankTitle.Rank;
import com.yelp.android.serializable.YelpBusiness;
import java.util.ArrayList;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class fb
  extends b<Void, Void, a>
{
  public fb(RankTitle.Rank paramRank, String paramString1, String paramString2, int paramInt1, int paramInt2, ApiRequest.b<a> paramb)
  {
    super(ApiRequest.RequestType.GET, "user/rankings/businesses", paramb);
    a("title", paramRank.name().toLowerCase(Locale.US));
    a("location_id", paramString2);
    if (paramString1 != null) {
      a("user_id", paramString1);
    }
    a("offset", paramInt1);
    a("limit", paramInt2);
  }
  
  public a a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    paramJSONObject = paramJSONObject.getJSONArray("businesses");
    ArrayList localArrayList1 = YelpBusiness.a(paramJSONObject, i_(), BusinessSearchRequest.FormatMode.SHORT);
    int j = localArrayList1.size();
    ArrayList localArrayList2 = new ArrayList(j);
    Bundle localBundle = new Bundle(j);
    int i = 0;
    while (i < j)
    {
      Object localObject = (YelpBusiness)localArrayList1.get(i);
      localArrayList2.add(new RankLocation(((YelpBusiness)localObject).aD(), ((YelpBusiness)localObject).aq(), 0, null, (YelpBusiness)localObject));
      localObject = paramJSONObject.getJSONObject(i);
      if ((localObject != null) && (!((JSONObject)localObject).isNull("user_check_in_count"))) {
        localBundle.putInt(((JSONObject)localObject).getString("id"), ((JSONObject)localObject).getInt("user_check_in_count"));
      }
      i += 1;
    }
    return new a(localArrayList2, localBundle);
  }
  
  public static class a
  {
    final ArrayList<RankLocation> a;
    final Bundle b;
    
    public a(ArrayList<RankLocation> paramArrayList, Bundle paramBundle)
    {
      a = paramArrayList;
      b = paramBundle;
    }
    
    public ArrayList<RankLocation> a()
    {
      return a;
    }
    
    public Bundle b()
    {
      return b;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.fb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */