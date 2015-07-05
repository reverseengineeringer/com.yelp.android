package com.yelp.android.aw;

import com.yelp.android.appdata.webrequests.ApiRequest.RequestType;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.av.g;
import com.yelp.android.serializable.TalkMessage;
import com.yelp.parcelgen.JsonParser.DualCreator;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

public abstract class f
  extends g<Void, Void, h>
{
  protected f(ApiRequest.RequestType paramRequestType, String paramString, m<h> paramm)
  {
    super(paramRequestType, paramString, paramm);
  }
  
  public h a(JSONObject paramJSONObject)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramJSONObject.has("topic_messages")) {
      localArrayList = JsonUtil.parseJsonList(paramJSONObject.getJSONArray("topic_messages"), TalkMessage.CREATOR);
    }
    for (;;)
    {
      if (paramJSONObject.has("topic_message")) {
        localArrayList.add((TalkMessage)TalkMessage.CREATOR.parse(paramJSONObject.getJSONObject("topic_message")));
      }
      String str = null;
      if (!paramJSONObject.isNull("revision")) {
        str = paramJSONObject.getString("revision");
      }
      for (;;)
      {
        return new h(localArrayList, paramJSONObject.getInt("new_reply_count"), str);
        if (localArrayList.size() > 0) {
          str = ((TalkMessage)localArrayList.get(localArrayList.size() - 1)).getId();
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.aw.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */