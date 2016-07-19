package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _SearchLocation
  implements Parcelable
{
  protected String a;
  protected SearchLocation.Type b;
  protected double c;
  protected double d;
  protected double e;
  protected double f;
  
  protected _SearchLocation() {}
  
  protected _SearchLocation(String paramString, SearchLocation.Type paramType, double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4)
  {
    this();
    a = paramString;
    b = paramType;
    c = paramDouble1;
    d = paramDouble2;
    e = paramDouble3;
    f = paramDouble4;
  }
  
  public void a(Parcel paramParcel)
  {
    a = ((String)paramParcel.readValue(String.class.getClassLoader()));
    b = ((SearchLocation.Type)paramParcel.readSerializable());
    c = paramParcel.readDouble();
    d = paramParcel.readDouble();
    e = paramParcel.readDouble();
    f = paramParcel.readDouble();
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("text")) {
      a = paramJSONObject.optString("text");
    }
    if (!paramJSONObject.isNull("type")) {
      b = SearchLocation.Type.fromApiString(paramJSONObject.optString("type"));
    }
    c = paramJSONObject.optDouble("tl_lat");
    d = paramJSONObject.optDouble("tl_long");
    e = paramJSONObject.optDouble("br_lat");
    f = paramJSONObject.optDouble("br_long");
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
    paramObject = (_SearchLocation)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a(d, d).a(e, e).a(f, f).a();
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a(d).a(e).a(f).a();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeValue(a);
    paramParcel.writeSerializable(b);
    paramParcel.writeDouble(c);
    paramParcel.writeDouble(d);
    paramParcel.writeDouble(e);
    paramParcel.writeDouble(f);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._SearchLocation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */