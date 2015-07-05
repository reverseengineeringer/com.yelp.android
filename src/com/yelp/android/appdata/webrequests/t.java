package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import org.json.JSONObject;

public class t
  extends g<Void, Void, ArrayList<String>>
{
  public t(String paramString, ArrayList<String> paramArrayList, m<ArrayList<String>> paramm)
  {
    super(ApiRequest.RequestType.POST, "/business/survey/vote", paramm);
    addUrlParam("business_id", paramString);
    addUrlParam("answer_identifiers", paramArrayList);
  }
  
  public ArrayList<String> a(JSONObject paramJSONObject)
  {
    return new ArrayList(JsonUtil.getStringList(paramJSONObject.optJSONArray("failed_votes")));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */