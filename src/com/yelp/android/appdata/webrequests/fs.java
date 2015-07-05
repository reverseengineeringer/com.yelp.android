package com.yelp.android.appdata.webrequests;

import android.text.TextUtils;
import com.yelp.android.appdata.LocationService.Accuracies;
import com.yelp.android.appdata.LocationService.AccuracyUnit;
import com.yelp.android.appdata.LocationService.Recentness;
import com.yelp.android.serializable.TalkTopic;
import com.yelp.android.serializable.ah;
import org.json.JSONObject;

public class fs
  extends h<Void, Void, ft>
{
  private final boolean a;
  
  public fs(String paramString1, String paramString2, int paramInt, String paramString3, j<ft> paramj)
  {
    super(ApiRequest.RequestType.POST, "talk/topic/save", LocationService.Accuracies.COARSE, LocationService.Recentness.DAY, paramj, LocationService.AccuracyUnit.METERS);
    addPostParam("address", paramString3);
    addPostParam("title", paramString1);
    addPostParam("text", paramString2);
    addPostParam("category", paramInt);
    a = TextUtils.isEmpty(paramString3);
  }
  
  public ft a(JSONObject paramJSONObject)
  {
    TalkTopic localTalkTopic = null;
    if (!paramJSONObject.isNull("topic")) {
      localTalkTopic = (TalkTopic)TalkTopic.CREATOR.parse(paramJSONObject.getJSONObject("topic"));
    }
    return new ft(localTalkTopic, paramJSONObject.getString("revision"));
  }
  
  public boolean isLocationAbsolutelyRequired()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.fs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */