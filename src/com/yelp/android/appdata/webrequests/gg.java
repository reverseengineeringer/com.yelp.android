package com.yelp.android.appdata.webrequests;

import android.net.Uri;
import com.yelp.android.appdata.LocationService.Accuracies;
import com.yelp.android.appdata.LocationService.AccuracyUnit;
import com.yelp.android.appdata.LocationService.Recentness;
import com.yelp.android.serializable.AlertsResponse;
import com.yelp.android.util.m;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONObject;

public class gg
  extends h<Void, Void, AlertsResponse>
{
  public gg(j<AlertsResponse> paramj) {}
  
  private gg(String paramString, j<AlertsResponse> paramj)
  {
    super(ApiRequest.RequestType.GET, paramString, LocationService.Accuracies.COARSE, LocationService.Recentness.DAY, paramj, LocationService.AccuracyUnit.MILES);
  }
  
  public static gg a(String paramString, j<AlertsResponse> paramj)
  {
    paramString = Uri.parse(paramString);
    paramj = new gg(paramString.getPath(), paramj);
    Iterator localIterator = m.a(paramString).iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      paramj.addUrlParam(str, paramString.getQueryParameter(str));
    }
    return paramj;
  }
  
  public AlertsResponse a(JSONObject paramJSONObject)
  {
    return (AlertsResponse)AlertsResponse.CREATOR.parse(paramJSONObject);
  }
  
  public boolean isLocationAbsolutelyRequired()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.gg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */