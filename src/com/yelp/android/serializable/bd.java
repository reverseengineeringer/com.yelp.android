package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class bd
  extends JsonParser.DualCreator<MapSpan>
{
  public MapSpan a(Parcel paramParcel)
  {
    MapSpan localMapSpan = new MapSpan();
    localMapSpan.readFromParcel(paramParcel);
    return localMapSpan;
  }
  
  public MapSpan a(JSONObject paramJSONObject)
  {
    MapSpan localMapSpan = new MapSpan();
    localMapSpan.readFromJson(paramJSONObject);
    return localMapSpan;
  }
  
  public MapSpan[] a(int paramInt)
  {
    return new MapSpan[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.bd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */