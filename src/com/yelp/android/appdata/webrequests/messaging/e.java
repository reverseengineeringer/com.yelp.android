package com.yelp.android.appdata.webrequests.messaging;

import com.yelp.android.appdata.webrequests.ApiRequest.RequestType;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.av.g;
import com.yelp.android.serializable.Conversation;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

public class e
  extends g<Void, Void, Conversation>
{
  public e(String paramString1, String paramString2, String paramString3, m<Conversation> paramm)
  {
    super(ApiRequest.RequestType.POST, "conversation/save", paramm);
    addPostParam("recipient_user_id", paramString1);
    addPostParam("subject", paramString2);
    addPostParam("message", paramString3);
  }
  
  public Conversation a(JSONObject paramJSONObject)
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