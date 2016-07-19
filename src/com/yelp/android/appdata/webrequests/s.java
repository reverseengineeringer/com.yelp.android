package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.LocationService.Accuracies;
import com.yelp.android.appdata.LocationService.AccuracyUnit;
import com.yelp.android.appdata.LocationService.Recentness;
import com.yelp.android.serializable.MapSpan;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.h;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class s
  extends k<Void, Void, ListBookmarksRequest.a>
{
  private final int g;
  
  public s(k.b<ListBookmarksRequest.a> paramb, ListBookmarksRequest.SortType paramSortType, int paramInt, boolean paramBoolean, String paramString)
  {
    super(ApiRequest.RequestType.GET, "bookmarks/search", LocationService.Accuracies.COARSE, LocationService.Recentness.MINUTE_15, paramb, LocationService.AccuracyUnit.METERS);
    g = paramInt;
    a("sort", query);
    a("offset", paramInt);
    a("is_category", paramBoolean);
    a("term", paramString);
  }
  
  public ListBookmarksRequest.a a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    JSONArray localJSONArray = paramJSONObject.getJSONArray("bookmarks");
    Object localObject = paramJSONObject.getJSONArray("businesses");
    if (!paramJSONObject.isNull("region")) {}
    for (MapSpan localMapSpan = (MapSpan)MapSpan.CREATOR.parse(paramJSONObject.getJSONObject("region"));; localMapSpan = null)
    {
      localObject = YelpBusiness.a((JSONArray)localObject, i_(), BusinessSearchRequest.FormatMode.FULL);
      Iterator localIterator = ((ArrayList)localObject).iterator();
      while (localIterator.hasNext()) {
        ((YelpBusiness)localIterator.next()).a(true);
      }
      return new ListBookmarksRequest.a(h.a(localJSONArray), (ArrayList)localObject, localMapSpan, g + ((ArrayList)localObject).size() + paramJSONObject.optInt("bookmarks_remaining", 0));
    }
  }
  
  public boolean b()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */