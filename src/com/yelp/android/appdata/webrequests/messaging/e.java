package com.yelp.android.appdata.webrequests.messaging;

import com.yelp.android.appdata.webrequests.ApiRequest.RequestType;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.Conversation;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONException;
import org.json.JSONObject;

public class e
  extends b<Void, Void, Conversation>
{
  public e(String paramString1, String paramString2, String paramString3, ApiRequest.b<Conversation> paramb)
  {
    super(ApiRequest.RequestType.POST, "conversation/save", paramb);
    b("recipient_user_id", paramString1);
    b("subject", paramString2);
    b("message", paramString3);
  }
  
  public Conversation a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return (Conversation)Conversation.CREATOR.parse(paramJSONObject.optJSONObject("conversation"));
  }
  
  public String toString()
  {
    return "ConversationSendRequest";
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.messaging.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */