package com.yelp.android.appdata.webrequests.messaging;

import com.yelp.android.appdata.webrequests.ApiRequest.RequestType;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.Conversation;
import com.yelp.parcelgen.JsonUtil;
import org.json.JSONObject;

public class f
  extends com.yelp.android.av.g<Void, Void, g>
{
  private final MessagingRequestType a;
  
  public f(MessagingRequestType paramMessagingRequestType, String paramString, m<g> paramm)
  {
    super(ApiRequest.RequestType.GET, "conversations/", paramm);
    a = paramMessagingRequestType;
    a.addParameter(this, paramString);
    addUrlParam("limit", 20);
  }
  
  public MessagingRequestType a()
  {
    return a;
  }
  
  public g a(JSONObject paramJSONObject)
  {
    return new g(JsonUtil.parseJsonList(paramJSONObject.getJSONArray("conversations"), Conversation.CREATOR), paramJSONObject.getInt("total"), paramJSONObject.optInt("unread_message_count"));
  }
  
  public String toString()
  {
    return "ConversationsRequest";
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.messaging.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */