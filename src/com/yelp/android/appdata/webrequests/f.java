package com.yelp.android.appdata.webrequests;

import android.util.Pair;
import com.yelp.android.av.g;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

public class f
  extends g<Void, Void, ArrayList<Pair<Integer, String>>>
{
  public f(ArrayList<String> paramArrayList1, ArrayList<String> paramArrayList2, String paramString, m<ArrayList<Pair<Integer, String>>> paramm)
  {
    super(ApiRequest.RequestType.POST, "user/add_friends", paramm);
    if (paramArrayList1 != null) {
      addPostParam("user_ids", paramArrayList1);
    }
    if (paramArrayList2 != null) {
      addPostParam("ignore_user_ids", paramArrayList2);
    }
    if (paramString != null) {
      addPostParam("message", paramString);
    }
  }
  
  public ArrayList<Pair<Integer, String>> a(JSONObject paramJSONObject)
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
 * Qualified Name:     com.yelp.android.appdata.webrequests.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */