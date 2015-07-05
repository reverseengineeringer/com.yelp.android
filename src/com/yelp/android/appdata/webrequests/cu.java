package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import com.yelp.android.serializable.Compliment;
import com.yelp.android.serializable.Tip;
import com.yelp.android.serializable.TipFeedback;
import com.yelp.parcelgen.JsonParser.DualCreator;
import com.yelp.parcelgen.JsonUtil;
import org.json.JSONObject;

public class cu
  extends g<Void, Void, cv>
{
  public cu(m<cv> paramm, String paramString)
  {
    super(ApiRequest.RequestType.GET, "quicktips/list_feedbacks", paramm);
    addUrlParam("quicktip_id", paramString);
  }
  
  public cv a(JSONObject paramJSONObject)
  {
    return new cv(this, JsonUtil.parseJsonList(paramJSONObject.getJSONArray("feedbacks"), TipFeedback.CREATOR), JsonUtil.parseJsonList(paramJSONObject.getJSONArray("compliments"), Compliment.CREATOR), (Tip)Tip.CREATOR.parse(paramJSONObject.getJSONObject("quicktip")));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.cu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */