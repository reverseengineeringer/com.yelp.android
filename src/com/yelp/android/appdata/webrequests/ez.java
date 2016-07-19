package com.yelp.android.appdata.webrequests;

import android.net.Uri;
import com.yelp.android.appdata.LocationService.Accuracies;
import com.yelp.android.appdata.LocationService.AccuracyUnit;
import com.yelp.android.appdata.LocationService.Recentness;
import com.yelp.android.serializable.AlertsResponse;
import com.yelp.android.util.g;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

public class ez
  extends k<Void, Void, AlertsResponse>
{
  public ez(k.b<AlertsResponse> paramb) {}
  
  private ez(String paramString, k.b<AlertsResponse> paramb)
  {
    super(ApiRequest.RequestType.GET, paramString, LocationService.Accuracies.COARSE, LocationService.Recentness.DAY, paramb, LocationService.AccuracyUnit.MILES);
  }
  
  public static ez a(String paramString, k.b<AlertsResponse> paramb)
  {
    paramString = Uri.parse(paramString);
    paramb = new ez(paramString.getPath(), paramb);
    Iterator localIterator = g.a(paramString).iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      paramb.a(str, paramString.getQueryParameter(str));
    }
    return paramb;
  }
  
  public AlertsResponse a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return (AlertsResponse)AlertsResponse.CREATOR.parse(paramJSONObject);
  }
  
  public boolean b()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ez
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */