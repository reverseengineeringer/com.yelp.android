package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONException;
import org.json.JSONObject;

public class MapSpan
  implements Parcelable
{
  public static final JsonParser.DualCreator<MapSpan> CREATOR = new JsonParser.DualCreator()
  {
    public MapSpan a(Parcel paramAnonymousParcel)
    {
      MapSpan localMapSpan = new MapSpan(null);
      localMapSpan.a(paramAnonymousParcel);
      return localMapSpan;
    }
    
    public MapSpan a(JSONObject paramAnonymousJSONObject)
      throws JSONException
    {
      MapSpan localMapSpan = new MapSpan(null);
      localMapSpan.a(paramAnonymousJSONObject);
      return localMapSpan;
    }
    
    public MapSpan[] a(int paramAnonymousInt)
    {
      return new MapSpan[paramAnonymousInt];
    }
  };
  private double a;
  private double b;
  private double c;
  private double d;
  
  public double a()
  {
    return a;
  }
  
  public void a(Parcel paramParcel)
  {
    a = paramParcel.readDouble();
    b = paramParcel.readDouble();
    c = paramParcel.readDouble();
    d = paramParcel.readDouble();
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    JSONObject localJSONObject = paramJSONObject.getJSONObject("center");
    paramJSONObject = paramJSONObject.getJSONObject("span");
    a = localJSONObject.optDouble("latitude");
    b = localJSONObject.optDouble("longitude");
    c = paramJSONObject.optDouble("longitude_delta");
    d = paramJSONObject.optDouble("latitude_delta");
  }
  
  public double b()
  {
    return b;
  }
  
  public double c()
  {
    return c;
  }
  
  public double d()
  {
    return d;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeDouble(a);
    paramParcel.writeDouble(b);
    paramParcel.writeDouble(c);
    paramParcel.writeDouble(d);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.MapSpan
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */