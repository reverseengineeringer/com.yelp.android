package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class br
  extends JsonParser.DualCreator<Passport>
{
  public Passport a(Parcel paramParcel)
  {
    Passport localPassport = new Passport();
    localPassport.readFromParcel(paramParcel);
    return localPassport;
  }
  
  public Passport a(JSONObject paramJSONObject)
  {
    Passport localPassport = new Passport();
    localPassport.readFromJson(paramJSONObject);
    return localPassport;
  }
  
  public Passport[] a(int paramInt)
  {
    return new Passport[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.br
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */