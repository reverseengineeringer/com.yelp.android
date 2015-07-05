package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import com.yelp.android.serializable.TalkTopic;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import org.json.JSONObject;

public class gb
  extends g<Void, Void, gc>
{
  public gb(int paramInt, m<gc> paramm)
  {
    super(ApiRequest.RequestType.GET, "talk/topics/subscribed", paramm);
    addUrlParam("offset", paramInt);
    addUrlParam("limit", 20);
  }
  
  public gc a(JSONObject paramJSONObject)
  {
    ArrayList localArrayList = JsonUtil.parseJsonList(paramJSONObject.getJSONArray("topics"), TalkTopic.CREATOR);
    int i = paramJSONObject.getInt("total");
    return new gc(localArrayList, paramJSONObject.getString("revision"), i);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.gb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */