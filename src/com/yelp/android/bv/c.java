package com.yelp.android.bv;

import com.yelp.android.appdata.webrequests.ApiRequest.RequestType;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.TalkMessage;
import com.yelp.parcelgen.JsonParser.DualCreator;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class c
  extends b<Void, Void, b>
{
  protected c(ApiRequest.RequestType paramRequestType, String paramString, ApiRequest.b<b> paramb)
  {
    super(paramRequestType, paramString, paramb);
  }
  
  public b a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    ArrayList localArrayList = new ArrayList();
    if (paramJSONObject.has("topic_messages")) {
      localArrayList = JsonUtil.parseJsonList(paramJSONObject.getJSONArray("topic_messages"), TalkMessage.CREATOR);
    }
    for (;;)
    {
      if (paramJSONObject.has("topic_message")) {
        localArrayList.add((TalkMessage)TalkMessage.CREATOR.parse(paramJSONObject.getJSONObject("topic_message")));
      }
      String str = null;
      if (!paramJSONObject.isNull("revision")) {
        str = paramJSONObject.getString("revision");
      }
      for (;;)
      {
        return new b(localArrayList, paramJSONObject.getInt("new_reply_count"), str);
        if (localArrayList.size() > 0) {
          str = ((TalkMessage)localArrayList.get(localArrayList.size() - 1)).f();
        }
      }
    }
  }
  
  public static class a
    extends c
  {
    public a(String paramString1, String paramString2, int paramInt, ApiRequest.b<c.b> paramb)
    {
      super("talk/messages/list", paramb);
      a("topic_id", paramString1);
      if (paramString2 != null) {
        a("revision", paramString2);
      }
      a("limit", paramInt);
    }
  }
  
  public static class b
  {
    private final List<TalkMessage> a;
    private final int b;
    private final String c;
    
    public b(List<TalkMessage> paramList, int paramInt, String paramString)
    {
      a = paramList;
      b = paramInt;
      c = paramString;
    }
    
    public List<TalkMessage> a()
    {
      return a;
    }
    
    public int b()
    {
      return b;
    }
    
    public String c()
    {
      return c;
    }
  }
  
  public static class c
    extends c
  {
    public c(String paramString1, String paramString2, String paramString3, ApiRequest.b<c.b> paramb)
    {
      super("talk/message/save", paramb);
      b("topic_id", paramString1);
      b("text", paramString2);
      b("revision", paramString3);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.bv.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */