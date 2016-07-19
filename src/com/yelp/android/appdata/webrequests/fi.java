package com.yelp.android.appdata.webrequests;

import android.os.Bundle;
import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.RankLocation;
import com.yelp.android.serializable.RankTitle.Rank;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class fi
  extends b<Void, Void, a>
{
  public fi(RankTitle.Rank paramRank, String paramString, int paramInt1, int paramInt2, ApiRequest.b<a> paramb)
  {
    super(ApiRequest.RequestType.GET, "user/rankings/locations", paramb);
    a("title", paramRank.name().toLowerCase(Locale.US));
    if (paramString != null) {
      a("user_id", paramString);
    }
    a("offset", paramInt1);
    a("limit", paramInt2);
  }
  
  public a a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    paramJSONObject = paramJSONObject.getJSONArray("locations");
    int j = paramJSONObject.length();
    ArrayList localArrayList = JsonUtil.parseJsonList(paramJSONObject, RankLocation.a);
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
    return new a(localArrayList, localBundle);
  }
  
  public class a
  {
    private final ArrayList<RankLocation> b;
    private final Bundle c;
    
    public a(Bundle paramBundle)
    {
      b = paramBundle;
      Bundle localBundle;
      c = localBundle;
    }
    
    public ArrayList<RankLocation> a()
    {
      return b;
    }
    
    public Bundle b()
    {
      return c;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.fi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */