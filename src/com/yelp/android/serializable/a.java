package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class a
  extends JsonParser.DualCreator<Alert>
{
  public Alert a(Parcel paramParcel)
  {
    Alert localAlert = new Alert(null);
    localAlert.readFromParcel(paramParcel);
    return localAlert;
  }
  
  public Alert a(JSONObject paramJSONObject)
  {
    Alert localAlert = new Alert(null);
    localAlert.readFromJson(paramJSONObject);
    return localAlert;
  }
  
  public Alert[] a(int paramInt)
  {
    return new Alert[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */