package com.yelp.android.appdata.webrequests.messaging;

import com.yelp.android.appdata.webrequests.ApiRequest.RequestType;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.ConversationMessage;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONException;
import org.json.JSONObject;

public class h
  extends b<Void, Void, ConversationMessage>
{
  public h(String paramString1, String paramString2, ApiRequest.b<ConversationMessage> paramb)
  {
    super(ApiRequest.RequestType.POST, "conversation/message/save", paramb);
    b("conversation_id", paramString1);
    b("message", paramString2);
  }
  
  public ConversationMessage a(JSONObject paramJSONObject)
    throws YelpException, JSONException
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