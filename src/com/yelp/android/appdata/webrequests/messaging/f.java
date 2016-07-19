package com.yelp.android.appdata.webrequests.messaging;

import com.yelp.android.appdata.webrequests.ApiRequest.RequestType;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.Conversation;
import com.yelp.parcelgen.JsonUtil;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class f
  extends b<Void, Void, a>
{
  private final MessagingRequestType a;
  
  public f(MessagingRequestType paramMessagingRequestType, String paramString, ApiRequest.b<a> paramb)
  {
    super(ApiRequest.RequestType.GET, "conversations", paramb);
    a = paramMessagingRequestType;
    a.addParameter(this, paramString);
    a("limit", 20);
  }
  
  public a a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return new a(JsonUtil.parseJsonList(paramJSONObject.getJSONArray("conversations"), Conversation.CREATOR), paramJSONObject.optInt("unread_message_count"));
  }
  
  public MessagingRequestType b()
  {
    return a;
  }
  
  public String toString()
  {
    return "ConversationsRequest";
  }
  
  public static final class a
  {
    public final List<Conversation> a;
    public final int b;
    
    public a(List<Conversation> paramList, int paramInt)
    {
      a = paramList;
      b = paramInt;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.messaging.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */