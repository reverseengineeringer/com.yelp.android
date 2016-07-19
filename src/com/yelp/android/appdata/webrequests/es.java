package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.TalkTopic;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

public class es
  extends b<Void, Void, a>
{
  public es(int paramInt, ApiRequest.b<a> paramb)
  {
    super(ApiRequest.RequestType.GET, "talk/topics/subscribed", paramb);
    a("offset", paramInt);
    a("limit", 20);
  }
  
  public a a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    ArrayList localArrayList = JsonUtil.parseJsonList(paramJSONObject.getJSONArray("topics"), TalkTopic.CREATOR);
    int i = paramJSONObject.getInt("total");
    return new a(localArrayList, paramJSONObject.getString("revision"), i);
  }
  
  public static final class a
  {
    final ArrayList<TalkTopic> a;
    final String b;
    final int c;
    
    public a(ArrayList<TalkTopic> paramArrayList, String paramString, int paramInt)
    {
      b = paramString;
      a = paramArrayList;
      c = paramInt;
    }
    
    public ArrayList<TalkTopic> a()
    {
      return a;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.es
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */