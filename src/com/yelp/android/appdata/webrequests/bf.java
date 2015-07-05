package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.LocationService.Accuracies;
import com.yelp.android.appdata.LocationService.AccuracyUnit;
import com.yelp.android.appdata.LocationService.Recentness;
import com.yelp.android.serializable.MapSpan;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.ArrayList;
import org.json.JSONObject;

public class bf
  extends h<Void, Void, bg>
{
  public bf(String paramString, int paramInt1, int paramInt2, j<bg> paramj)
  {
    super(ApiRequest.RequestType.GET, "deal/businesses", LocationService.Accuracies.MEDIUM_KM, LocationService.Recentness.MINUTE_15, paramj, LocationService.AccuracyUnit.MILES);
    addUrlParam("deal_id", paramString);
    addUrlParam("offset", paramInt1);
    addUrlParam("limit", paramInt2);
  }
  
  public bg a(JSONObject paramJSONObject)
  {
    MapSpan localMapSpan = (MapSpan)MapSpan.CREATOR.parse(paramJSONObject.getJSONObject("region"));
    ArrayList localArrayList = YelpBusiness.businessesFromJSONArray(paramJSONObject.getJSONArray("businesses"), getRequestId(), BusinessSearchRequest.FormatMode.SHORT);
    return new bg(paramJSONObject.getInt("total"), localMapSpan, localArrayList);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.bf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */