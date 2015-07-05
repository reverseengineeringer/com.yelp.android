package com.yelp.android.appdata.webrequests;

import android.text.TextUtils;
import com.yelp.android.appdata.LocationService.Accuracies;
import com.yelp.android.appdata.LocationService.AccuracyUnit;
import com.yelp.android.appdata.LocationService.Recentness;
import com.yelp.android.serializable.TalkTopic;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import org.json.JSONObject;

public class dw
  extends h<Void, Void, dx>
{
  private final boolean a;
  
  public dw(int paramInt, String paramString, j<dx> paramj)
  {
    super(ApiRequest.RequestType.GET, "talk/topics/nearby", LocationService.Accuracies.COARSE, LocationService.Recentness.DAY, paramj, LocationService.AccuracyUnit.METERS);
    addUrlParam("offset", paramInt);
    addUrlParam("limit", 20);
    addUrlParam("address", paramString);
    a = TextUtils.isEmpty(paramString);
  }
  
  public dx a(JSONObject paramJSONObject)
  {
    ArrayList localArrayList = JsonUtil.parseJsonList(paramJSONObject.getJSONArray("topics"), TalkTopic.CREATOR);
    int i = paramJSONObject.getInt("total");
    return new dx(localArrayList, paramJSONObject.getString("talk_location_prompt"), i);
  }
  
  public boolean isLocationAbsolutelyRequired()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.dw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */