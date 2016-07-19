package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.TalkTopic;
import com.yelp.android.serializable.a;
import org.json.JSONException;
import org.json.JSONObject;

public class eq
  extends b<String, Void, TalkTopic>
{
  public eq(String paramString, ApiRequest.b paramb)
  {
    super(ApiRequest.RequestType.GET, "talk/topic", paramb);
    a("topic_alias", paramString);
  }
  
  public TalkTopic a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return (TalkTopic)TalkTopic.CREATOR.parse(paramJSONObject.getJSONObject("topic"));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.eq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */