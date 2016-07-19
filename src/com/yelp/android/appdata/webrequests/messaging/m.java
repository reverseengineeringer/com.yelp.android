package com.yelp.android.appdata.webrequests.messaging;

import com.yelp.android.appdata.webrequests.ApiRequest.RequestType;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.ConversationMessage;
import com.yelp.parcelgen.JsonUtil;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class m
  extends b<Void, Void, a>
{
  private final MessagingRequestType a;
  
  public m(String paramString1, MessagingRequestType paramMessagingRequestType, String paramString2, ApiRequest.b<a> paramb)
  {
    super(ApiRequest.RequestType.GET, "conversation/messages", paramb);
    a = paramMessagingRequestType;
    a.addParameter(this, paramString2);
    a("conversation_id", paramString1);
    a("limit", 20);
  }
  
  public a a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return new a(JsonUtil.parseJsonList(paramJSONObject.getJSONArray("conversation_messages"), ConversationMessage.CREATOR), paramJSONObject.getInt("total"));
  }
  
  public MessagingRequestType b()
  {
    return a;
  }
  
  public String toString()
  {
    return "MessagesRequest";
  }
  
  public static final class a
  {
    public final List<ConversationMessage> a;
    public final int b;
    
    public a(List<ConversationMessage> paramList, int paramInt)
    {
      a = paramList;
      b = paramInt;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.messaging.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */