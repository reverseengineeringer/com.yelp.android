package com.yelp.android.appdata.webrequests.messaging;

import com.yelp.android.appdata.webrequests.ApiRequest.RequestType;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.av.g;
import com.yelp.android.serializable.ConversationMessage;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

public class h
  extends g<Void, Void, ConversationMessage>
{
  public h(String paramString1, String paramString2, m<ConversationMessage> paramm)
  {
    super(ApiRequest.RequestType.POST, "conversation/message/save", paramm);
    addPostParam("conversation_id", paramString1);
    addPostParam("message", paramString2);
  }
  
  public ConversationMessage a(JSONObject paramJSONObject)
  {
    return (ConversationMessage)ConversationMessage.CREATOR.parse(paramJSONObject.getJSONObject("conversation_message"));
  }
  
  public String toString()
  {
    return "MessageSendRequest";
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.messaging.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */