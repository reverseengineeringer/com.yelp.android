package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.LocationService.Accuracies;
import com.yelp.android.appdata.LocationService.AccuracyUnit;
import com.yelp.android.appdata.LocationService.Recentness;
import com.yelp.android.serializable.MapSpan;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

public class ax
  extends k<Void, Void, a>
{
  public ax(String paramString, int paramInt1, int paramInt2, k.b<a> paramb)
  {
    super(ApiRequest.RequestType.GET, "deal/businesses", LocationService.Accuracies.MEDIUM_KM, LocationService.Recentness.MINUTE_15, paramb, LocationService.AccuracyUnit.MILES);
    a("deal_id", paramString);
    a("offset", paramInt1);
    a("limit", paramInt2);
  }
  
  public a a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    MapSpan localMapSpan = (MapSpan)MapSpan.CREATOR.parse(paramJSONObject.getJSONObject("region"));
    ArrayList localArrayList = YelpBusiness.a(paramJSONObject.getJSONArray("businesses"), i_(), BusinessSearchRequest.FormatMode.SHORT);
    return new a(paramJSONObject.getInt("total"), localMapSpan, localArrayList);
  }
  
  public static class a
  {
    final int a;
    final MapSpan b;
    final ArrayList<YelpBusiness> c;
    
    public a(int paramInt, MapSpan paramMapSpan, ArrayList<YelpBusiness> paramArrayList)
    {
      a = paramInt;
      b = paramMapSpan;
      c = paramArrayList;
    }
    
    public MapSpan a()
    {
      return b;
    }
    
    public ArrayList<YelpBusiness> b()
    {
      return c;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ax
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */