package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONException;
import org.json.JSONObject;

final class MapSpan$1
  extends JsonParser.DualCreator<MapSpan>
{
  public MapSpan a(Parcel paramParcel)
  {
    MapSpan localMapSpan = new MapSpan(null);
    localMapSpan.a(paramParcel);
    return localMapSpan;
  }
  
  public MapSpan a(JSONObject paramJSONObject)
    throws JSONException
  {
    MapSpan localMapSpan = new MapSpan(null);
    localMapSpan.a(paramJSONObject);
    return localMapSpan;
  }
  
  public MapSpan[] a(int paramInt)
  {
    return new MapSpan[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.MapSpan.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */