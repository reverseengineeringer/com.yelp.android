package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

public class r
  extends b<Void, Void, ArrayList<String>>
{
  public r(String paramString, ArrayList<String> paramArrayList, ApiRequest.b<ArrayList<String>> paramb)
  {
    super(ApiRequest.RequestType.POST, "/business/survey/vote", paramb);
    b("business_id", paramString);
    b("answer_identifiers", paramArrayList);
  }
  
  public ArrayList<String> a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return new ArrayList(JsonUtil.getStringList(paramJSONObject.optJSONArray("failed_votes")));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */