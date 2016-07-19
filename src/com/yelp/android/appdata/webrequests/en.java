package com.yelp.android.appdata.webrequests;

import android.text.TextUtils;
import com.yelp.android.appdata.LocationService.Accuracies;
import com.yelp.android.appdata.LocationService.AccuracyUnit;
import com.yelp.android.appdata.LocationService.Recentness;
import com.yelp.android.serializable.TalkTopic;
import com.yelp.android.serializable.a;
import org.json.JSONException;
import org.json.JSONObject;

public class en
  extends k<Void, Void, a>
{
  private final boolean g;
  
  public en(String paramString1, String paramString2, int paramInt, String paramString3, k.b<a> paramb)
  {
    super(ApiRequest.RequestType.POST, "talk/topic/save", LocationService.Accuracies.COARSE, LocationService.Recentness.DAY, paramb, LocationService.AccuracyUnit.METERS);
    b("address", paramString3);
    b("title", paramString1);
    b("text", paramString2);
    b("category", paramInt);
    g = TextUtils.isEmpty(paramString3);
  }
  
  public a a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    TalkTopic localTalkTopic = null;
    if (!paramJSONObject.isNull("topic")) {
      localTalkTopic = (TalkTopic)TalkTopic.CREATOR.parse(paramJSONObject.getJSONObject("topic"));
    }
    return new a(localTalkTopic, paramJSONObject.getString("revision"));
  }
  
  public boolean b()
  {
    return g;
  }
  
  public static final class a
  {
    public final TalkTopic a;
    public final String b;
    
    public a(TalkTopic paramTalkTopic, String paramString)
    {
      a = paramTalkTopic;
      b = paramString;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.en
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */