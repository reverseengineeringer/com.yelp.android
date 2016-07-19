package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _Distance
  implements Parcelable
{
  protected String a;
  protected double b;
  
  protected _Distance() {}
  
  protected _Distance(String paramString, double paramDouble)
  {
    this();
    a = paramString;
    b = paramDouble;
  }
  
  public JSONObject a()
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    if (a != null) {
      localJSONObject.put("label", a);
    }
    localJSONObject.put("radius_in_miles", b);
    return localJSONObject;
  }
  
  public void a(Parcel paramParcel)
  {
    a = ((String)paramParcel.readValue(String.class.getClassLoader()));
    b = paramParcel.readDouble();
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("label")) {
      a = paramJSONObject.optString("label");
    }
    b = paramJSONObject.optDouble("radius_in_miles");
  }
  
  public double b()
  {
    return b;
  }
  
  public String c()
  {
    return a;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == null) {}
    do
    {
      return false;
      if (paramObject == this) {
        return true;
      }
    } while (paramObject.getClass() != getClass());
    paramObject = (_Distance)paramObject;
    return new b().a(a, a).a(b, b).a();
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeValue(a);
    paramParcel.writeDouble(b);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._Distance
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */