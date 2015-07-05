package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class h
  extends JsonParser.DualCreator<Attribution>
{
  public Attribution a(Parcel paramParcel)
  {
    Attribution localAttribution = new Attribution();
    localAttribution.readFromParcel(paramParcel);
    return localAttribution;
  }
  
  public Attribution a(JSONObject paramJSONObject)
  {
    Attribution localAttribution = new Attribution();
    localAttribution.readFromJson(paramJSONObject);
    return localAttribution;
  }
  
  public Attribution[] a(int paramInt)
  {
    return new Attribution[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */