package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class c
  extends JsonParser.DualCreator<AlertsResponse>
{
  public AlertsResponse a(Parcel paramParcel)
  {
    AlertsResponse localAlertsResponse = new AlertsResponse();
    localAlertsResponse.readFromParcel(paramParcel);
    return localAlertsResponse;
  }
  
  public AlertsResponse a(JSONObject paramJSONObject)
  {
    AlertsResponse localAlertsResponse = new AlertsResponse();
    localAlertsResponse.readFromJson(paramJSONObject);
    return localAlertsResponse;
  }
  
  public AlertsResponse[] a(int paramInt)
  {
    return new AlertsResponse[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */