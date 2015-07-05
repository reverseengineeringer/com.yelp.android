package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class bc
  extends JsonParser.DualCreator<Location>
{
  public Location a(Parcel paramParcel)
  {
    Location localLocation = new Location();
    localLocation.readFromParcel(paramParcel);
    return localLocation;
  }
  
  public Location a(JSONObject paramJSONObject)
  {
    Location localLocation = new Location();
    localLocation.readFromJson(paramJSONObject);
    return localLocation;
  }
  
  public Location[] a(int paramInt)
  {
    return new Location[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.bc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */