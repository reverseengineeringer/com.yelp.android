package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class i
  extends JsonParser.DualCreator<Badge>
{
  public Badge a(Parcel paramParcel)
  {
    Badge localBadge = new Badge();
    localBadge.readFromParcel(paramParcel);
    return localBadge;
  }
  
  public Badge a(JSONObject paramJSONObject)
  {
    Badge localBadge = new Badge();
    localBadge.readFromJson(paramJSONObject);
    return localBadge;
  }
  
  public Badge[] a(int paramInt)
  {
    return new Badge[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */