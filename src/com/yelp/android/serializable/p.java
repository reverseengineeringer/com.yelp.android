package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class p
  extends JsonParser.DualCreator<BusinessRepresentative>
{
  public BusinessRepresentative a(Parcel paramParcel)
  {
    BusinessRepresentative localBusinessRepresentative = new BusinessRepresentative();
    localBusinessRepresentative.readFromParcel(paramParcel);
    return localBusinessRepresentative;
  }
  
  public BusinessRepresentative a(JSONObject paramJSONObject)
  {
    BusinessRepresentative localBusinessRepresentative = new BusinessRepresentative();
    localBusinessRepresentative.readFromJson(paramJSONObject);
    return localBusinessRepresentative;
  }
  
  public BusinessRepresentative[] a(int paramInt)
  {
    return new BusinessRepresentative[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */