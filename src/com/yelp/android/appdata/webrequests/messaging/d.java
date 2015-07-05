package com.yelp.android.appdata.webrequests.messaging;

import com.yelp.android.appdata.webrequests.ApiRequest.RequestType;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.av.g;
import org.json.JSONObject;

public class d
  extends g<Void, Void, Integer>
{
  public d(String paramString, m<Integer> paramm)
  {
    super(ApiRequest.RequestType.POST, "conversation/mark_read", paramm);
    addPostParam("conversation_id", paramString);
  }
  
  public Integer a(JSONObject paramJSONObject)
  {
    return Integer.valueOf(paramJSONObject.optInt("unread_message_count"));
  }
  
  public String toString()
  {
    return "ConversationMarkReadRequest";
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.messaging.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */