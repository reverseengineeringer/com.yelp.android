package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import com.yelp.android.serializable.TalkTopic;
import com.yelp.android.serializable.ah;
import org.json.JSONObject;

public class fz
  extends g<String, Void, TalkTopic>
{
  public fz(String paramString, m paramm)
  {
    super(ApiRequest.RequestType.GET, "talk/topic", paramm);
    addUrlParam("topic_alias", paramString);
  }
  
  public TalkTopic a(JSONObject paramJSONObject)
  {
    return (TalkTopic)TalkTopic.CREATOR.parse(paramJSONObject.getJSONObject("topic"));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.fz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */