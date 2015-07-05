package com.yelp.android.appdata.webrequests.messaging;

import com.yelp.android.appdata.webrequests.ApiRequest.RequestType;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.av.g;
import com.yelp.android.serializable.Conversation;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

public class b
  extends g<Void, Void, Conversation>
{
  public b(String paramString, m<Conversation> paramm)
  {
    super(ApiRequest.RequestType.GET, "conversation", paramm);
    addUrlParam("conversation_id", paramString);
    addUrlParam("message_count", 20);
  }
  
  public Conversation a(JSONObject paramJSONObject)
  {
    return (Conversation)Conversation.CREATOR.parse(paramJSONObject.getJSONObject("conversation"));
  }
  
  public String toString()
  {
    return "ConversationDetailRequest";
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.messaging.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */