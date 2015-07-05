package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import org.json.JSONObject;

abstract class _Location
  implements Parcelable
{
  protected String mCity;
  protected String mCountry;
  protected String mDisplay;
  protected double mLatitude;
  protected double mLongitude;
  
  protected _Location() {}
  
  protected _Location(String paramString1, String paramString2, String paramString3, double paramDouble1, double paramDouble2)
  {
    this();
    mDisplay = paramString1;
    mCountry = paramString2;
    mCity = paramString3;
    mLatitude = paramDouble1;
    mLongitude = paramDouble2;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getCity()
  {
    return mCity;
  }
  
  public String getCountry()
  {
    return mCountry;
  }
  
  public String getDisplay()
  {
    return mDisplay;
  }
  
  public double getLatitude()
  {
    return mLatitude;
  }
  
  public double getLongitude()
  {
    return mLongitude;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("display")) {
      mDisplay = paramJSONObject.optString("display");
    }
    if (!paramJSONObject.isNull("country")) {
      mCountry = paramJSONObject.optString("country");
    }
    if (!paramJSONObject.isNull("city")) {
      mCity = paramJSONObject.optString("city");
    }
    mLatitude = paramJSONObject.optDouble("latitude");
    mLongitude = paramJSONObject.optDouble("longitude");
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mDisplay = paramParcel.readString();
    mCountry = paramParcel.readString();
    mCity = paramParcel.readString();
    mLatitude = paramParcel.readDouble();
    mLongitude = paramParcel.readDouble();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(mDisplay);
    paramParcel.writeString(mCountry);
    paramParcel.writeString(mCity);
    paramParcel.writeDouble(mLatitude);
    paramParcel.writeDouble(mLongitude);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._Location
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */