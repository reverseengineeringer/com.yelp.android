package com.yelp.android.appdata.webrequests;

import android.util.Pair;
import com.yelp.android.appdata.webrequests.core.b;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class j
  extends b<Void, Void, ArrayList<Pair<Integer, String>>>
{
  public j(ArrayList<String> paramArrayList1, ArrayList<String> paramArrayList2, String paramString, ApiRequest.b<ArrayList<Pair<Integer, String>>> paramb)
  {
    super(ApiRequest.RequestType.POST, "user/add_friends", paramb);
    if (paramArrayList1 != null) {
      b("user_ids", paramArrayList1);
    }
    if (paramArrayList2 != null) {
      b("ignore_user_ids", paramArrayList2);
    }
    if (paramString != null) {
      b("message", paramString);
    }
  }
  
  public ArrayList<Pair<Integer, String>> a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    paramJSONObject = paramJSONObject.getJSONArray("status");
    int j = paramJSONObject.length();
    ArrayList localArrayList = new ArrayList(j);
    int i = 0;
    while (i < j)
    {
      JSONObject localJSONObject = paramJSONObject.getJSONObject(i);
      localArrayList.add(Pair.create(Integer.valueOf(localJSONObject.optInt("code")), localJSONObject.optString("user_id")));
      i += 1;
    }
    return localArrayList;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */