package com.yelp.android.appdata.webrequests.messaging;

import com.yelp.android.appdata.webrequests.ApiRequest.RequestType;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.serializable.Conversation;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONException;
import org.json.JSONObject;

public class b
  extends com.yelp.android.appdata.webrequests.core.b<Void, Void, Conversation>
{
  public b(String paramString, ApiRequest.b<Conversation> paramb)
  {
    super(ApiRequest.RequestType.GET, "conversation", paramb);
    a("conversation_id", paramString);
    a("message_count", 20);
  }
  
  public Conversation a(JSONObject paramJSONObject)
    throws YelpException, JSONException
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