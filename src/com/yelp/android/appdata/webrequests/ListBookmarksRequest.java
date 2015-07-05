package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.LocationService.Accuracies;
import com.yelp.android.appdata.LocationService.AccuracyUnit;
import com.yelp.android.appdata.LocationService.Recentness;
import com.yelp.android.serializable.MapSpan;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.en;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

public class ListBookmarksRequest
  extends h<Void, Void, cs>
{
  private final ListBookmarksRequest.SortType a;
  
  public ListBookmarksRequest(j<cs> paramj, ListBookmarksRequest.SortType paramSortType, int paramInt)
  {
    super(ApiRequest.RequestType.GET, "bookmarks/list", LocationService.Accuracies.COARSE, LocationService.Recentness.MINUTE_15, paramj, LocationService.AccuracyUnit.METERS);
    a = paramSortType;
    addUrlParam("sort", query);
    addUrlParam("offset", paramInt);
  }
  
  public cs a(JSONObject paramJSONObject)
  {
    JSONArray localJSONArray = paramJSONObject.getJSONArray("bookmarks");
    Object localObject = paramJSONObject.getJSONArray("businesses");
    if (!paramJSONObject.isNull("region")) {}
    for (MapSpan localMapSpan = (MapSpan)MapSpan.CREATOR.parse(paramJSONObject.getJSONObject("region"));; localMapSpan = null)
    {
      localObject = YelpBusiness.businessesFromJSONArray((JSONArray)localObject, getRequestId(), BusinessSearchRequest.FormatMode.FULL);
      Iterator localIterator = ((ArrayList)localObject).iterator();
      while (localIterator.hasNext()) {
        ((YelpBusiness)localIterator.next()).setBookmarked(true);
      }
      return new cs(en.a(localJSONArray), (ArrayList)localObject, localMapSpan, paramJSONObject.optInt("total", 0));
    }
  }
  
  public boolean isLocationAbsolutelyRequired()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ListBookmarksRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */