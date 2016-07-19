package com.yelp.android.appdata.webrequests;

import android.text.TextUtils;
import com.yelp.android.appdata.LocationService.Accuracies;
import com.yelp.android.appdata.LocationService.AccuracyUnit;
import com.yelp.android.appdata.LocationService.Recentness;
import com.yelp.android.serializable.FeedItem;
import com.yelp.android.ui.activities.feed.FeedItemType;
import com.yelp.android.ui.activities.feed.FeedRequestResult;
import com.yelp.android.ui.activities.feed.FeedType;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

public class bx
  extends k<Void, Void, FeedRequestResult>
{
  public bx(String paramString1, FeedType paramFeedType, k.b<FeedRequestResult> paramb, String paramString2)
  {
    super(ApiRequest.RequestType.GET, "feed/" + URL, LocationService.Accuracies.MEDIUM_KM, LocationService.Recentness.MINUTE_15, paramb, LocationService.AccuracyUnit.MILES);
    if ((paramFeedType == FeedType.USER) && (paramString1 != null)) {
      a("user_id", paramString1);
    }
    a("feed_item_types", TextUtils.join(",", FeedItemType.getFeedItemTypes(paramFeedType)));
    if (paramString2 != null) {
      a("next_page_offset", paramString2);
    }
  }
  
  public FeedRequestResult a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    if (!paramJSONObject.isNull("feed"))
    {
      ArrayList localArrayList = JsonUtil.parseJsonList(paramJSONObject.getJSONArray("feed"), FeedItem.CREATOR);
      String str = null;
      if (!paramJSONObject.isNull("next_page_offset")) {
        str = paramJSONObject.getString("next_page_offset");
      }
      return FeedRequestResult.a(localArrayList, str);
    }
    throw new YelpException(YelpException.YPErrorInvalidData);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.bx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */