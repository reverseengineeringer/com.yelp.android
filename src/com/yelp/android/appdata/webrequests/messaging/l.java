package com.yelp.android.appdata.webrequests.messaging;

import com.yelp.android.appdata.webrequests.ApiRequest.RequestType;
import com.yelp.android.av.g;
import com.yelp.android.serializable.ConversationMessage;
import com.yelp.parcelgen.JsonUtil;
import org.json.JSONObject;

public class l
  extends g<Void, Void, m>
{
  private final MessagingRequestType a;
  
  public l(String paramString1, MessagingRequestType paramMessagingRequestType, String paramString2, com.yelp.android.appdata.webrequests.m<m> paramm)
  {
    super(ApiRequest.RequestType.GET, "conversation/messages", paramm);
    a = paramMessagingRequestType;
    a.addParameter(this, paramString2);
    addUrlParam("conversation_id", paramString1);
    addUrlParam("limit", 20);
  }
  
  public MessagingRequestType a()
  {
    return a;
  }
  
  public m a(JSONObject paramJSONObject)
  {
    return new m(JsonUtil.parseJsonList(paramJSONObject.getJSONArray("conversation_messages"), ConversationMessage.CREATOR), paramJSONObject.getInt("total"));
  }
  
  public String toString()
  {
    return "MessagesRequest";
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.messaging.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */