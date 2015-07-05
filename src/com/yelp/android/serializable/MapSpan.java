package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

public class MapSpan
  implements Parcelable
{
  public static final JsonParser.DualCreator<MapSpan> CREATOR = new bd();
  protected double mLat;
  protected double mLatDelta;
  protected double mLon;
  protected double mLonDelta;
  
  protected MapSpan() {}
  
  protected MapSpan(double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4)
  {
    mLat = paramDouble1;
    mLon = paramDouble2;
    mLonDelta = paramDouble3;
    mLatDelta = paramDouble4;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public double getLat()
  {
    return mLat;
  }
  
  public double getLatDelta()
  {
    return mLatDelta;
  }
  
  public double getLon()
  {
    return mLon;
  }
  
  public double getLonDelta()
  {
    return mLonDelta;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    JSONObject localJSONObject = paramJSONObject.getJSONObject("center");
    paramJSONObject = paramJSONObject.getJSONObject("span");
    mLat = localJSONObject.optDouble("latitude");
    mLon = localJSONObject.optDouble("longitude");
    mLonDelta = paramJSONObject.optDouble("longitude_delta");
    mLatDelta = paramJSONObject.optDouble("latitude_delta");
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mLat = paramParcel.readDouble();
    mLon = paramParcel.readDouble();
    mLonDelta = paramParcel.readDouble();
    mLatDelta = paramParcel.readDouble();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeDouble(mLat);
    paramParcel.writeDouble(mLon);
    paramParcel.writeDouble(mLonDelta);
    paramParcel.writeDouble(mLatDelta);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.MapSpan
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */