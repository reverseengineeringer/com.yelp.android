package com.yelp.android.appdata.webrequests;

import android.text.TextUtils;
import com.yelp.android.appdata.LocationService.Accuracies;
import com.yelp.android.appdata.LocationService.AccuracyUnit;
import com.yelp.android.appdata.LocationService.Recentness;
import com.yelp.android.serializable.TalkTopic;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

public class da
  extends k<Void, Void, a>
{
  private final boolean g;
  
  public da(int paramInt, String paramString, k.b<a> paramb)
  {
    super(ApiRequest.RequestType.GET, "talk/topics/nearby", LocationService.Accuracies.COARSE, LocationService.Recentness.DAY, paramb, LocationService.AccuracyUnit.METERS);
    a("offset", paramInt);
    a("limit", 20);
    a("address", paramString);
    g = TextUtils.isEmpty(paramString);
  }
  
  public a a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    ArrayList localArrayList = JsonUtil.parseJsonList(paramJSONObject.getJSONArray("topics"), TalkTopic.CREATOR);
    int i = paramJSONObject.getInt("total");
    return new a(localArrayList, paramJSONObject.getString("talk_location_prompt"), i);
  }
  
  public boolean b()
  {
    return g;
  }
  
  public static final class a
  {
    public final ArrayList<TalkTopic> a;
    public final String b;
    public int c;
    
    public a(ArrayList<TalkTopic> paramArrayList, String paramString, int paramInt)
    {
      b = paramString;
      a = paramArrayList;
      c = paramInt;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.da
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */