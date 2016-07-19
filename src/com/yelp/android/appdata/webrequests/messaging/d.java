package com.yelp.android.appdata.webrequests.messaging;

import com.yelp.android.appdata.webrequests.ApiRequest.RequestType;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.core.b;
import org.json.JSONException;
import org.json.JSONObject;

public class d
  extends b<Void, Void, Integer>
{
  public d(String paramString, ApiRequest.b<Integer> paramb)
  {
    super(ApiRequest.RequestType.POST, "conversation/mark_read", paramb);
    b("conversation_id", paramString);
  }
  
  public Integer a(JSONObject paramJSONObject)
    throws YelpException, JSONException
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