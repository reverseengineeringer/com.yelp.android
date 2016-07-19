package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.LocationService.Accuracies;
import com.yelp.android.appdata.LocationService.AccuracyUnit;
import com.yelp.android.appdata.LocationService.Recentness;
import com.yelp.android.serializable.Event;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class br
  extends k<Void, Void, a>
{
  public br(String paramString, int paramInt1, int paramInt2, k.b paramb)
  {
    super(ApiRequest.RequestType.GET, "/events/section", LocationService.Accuracies.MEDIUM_KM, LocationService.Recentness.MINUTE_15, paramb, LocationService.AccuracyUnit.MILES);
    a("alias", paramString);
    a("offset", paramInt1);
    a("limit", paramInt2);
  }
  
  public a a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return new a(Event.a(paramJSONObject.getJSONArray("events"), paramJSONObject.getJSONArray("users"), paramJSONObject.getJSONArray("businesses")), paramJSONObject.getInt("total"));
  }
  
  public static class a
  {
    public final List<Event> a;
    public final int b;
    
    public a(List<Event> paramList, int paramInt)
    {
      a = paramList;
      b = paramInt;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.br
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */