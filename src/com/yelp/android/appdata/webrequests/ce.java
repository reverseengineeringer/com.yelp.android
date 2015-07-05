package com.yelp.android.appdata.webrequests;

import android.text.TextUtils;
import com.yelp.android.appdata.LocationService.Accuracies;
import com.yelp.android.appdata.LocationService.AccuracyUnit;
import com.yelp.android.appdata.LocationService.Recentness;
import com.yelp.android.serializable.FeedEntry;
import com.yelp.android.ui.activities.feed.FeedItemType;
import com.yelp.android.ui.activities.feed.FeedRequestResult;
import com.yelp.android.ui.activities.feed.FeedType;
import java.util.ArrayList;
import org.json.JSONObject;

public class ce
  extends h<Void, Void, FeedRequestResult>
{
  private final FeedType a;
  
  public ce(String paramString, FeedType paramFeedType, j<FeedRequestResult> paramj)
  {
    this(paramString, paramFeedType, paramj, null);
  }
  
  public ce(String paramString1, FeedType paramFeedType, j<FeedRequestResult> paramj, String paramString2)
  {
    super(ApiRequest.RequestType.GET, "feed/" + url, LocationService.Accuracies.MEDIUM_KM, LocationService.Recentness.MINUTE_15, paramj, LocationService.AccuracyUnit.MILES);
    if (paramString1 != null) {
      addUrlParam("user_id", paramString1);
    }
    addUrlParam("feed_item_types", TextUtils.join(",", FeedItemType.values()));
    if (paramString2 != null) {
      addUrlParam("next_page_offset", paramString2);
    }
    a = paramFeedType;
  }
  
  public FeedRequestResult a(JSONObject paramJSONObject)
  {
    Object localObject = paramJSONObject.getJSONObject("message");
    if (!((JSONObject)localObject).isNull("text"))
    {
      boolean bool = "ok".equalsIgnoreCase(((JSONObject)localObject).getString("text"));
      localObject = a.jsonKey;
      if ((bool) && (!paramJSONObject.isNull((String)localObject)))
      {
        ArrayList localArrayList = FeedEntry.createFeedEntries(paramJSONObject.getJSONArray((String)localObject), this);
        localObject = null;
        if (!paramJSONObject.isNull("next_page_offset")) {
          localObject = paramJSONObject.getString("next_page_offset");
        }
        return FeedRequestResult.a(localArrayList, (String)localObject);
      }
    }
    throw new YelpException(YelpException.YPErrorInvalidData);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ce
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */