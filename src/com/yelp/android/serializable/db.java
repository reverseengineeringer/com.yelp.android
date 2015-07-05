package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class db
  extends JsonParser.DualCreator<SpecialHours>
{
  public SpecialHours a(Parcel paramParcel)
  {
    SpecialHours localSpecialHours = new SpecialHours();
    localSpecialHours.readFromParcel(paramParcel);
    return localSpecialHours;
  }
  
  public SpecialHours a(JSONObject paramJSONObject)
  {
    SpecialHours localSpecialHours = new SpecialHours();
    localSpecialHours.readFromJson(paramJSONObject);
    return localSpecialHours;
  }
  
  public SpecialHours[] a(int paramInt)
  {
    return new SpecialHours[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.db
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */