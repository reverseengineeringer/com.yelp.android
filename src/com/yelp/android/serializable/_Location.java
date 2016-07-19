package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _Location
  implements Parcelable
{
  protected String a;
  protected String b;
  protected String c;
  protected String d;
  protected String e;
  protected String f;
  protected double g;
  protected double h;
  
  public void a(Parcel paramParcel)
  {
    a = ((String)paramParcel.readValue(String.class.getClassLoader()));
    b = ((String)paramParcel.readValue(String.class.getClassLoader()));
    c = ((String)paramParcel.readValue(String.class.getClassLoader()));
    d = ((String)paramParcel.readValue(String.class.getClassLoader()));
    e = ((String)paramParcel.readValue(String.class.getClassLoader()));
    f = ((String)paramParcel.readValue(String.class.getClassLoader()));
    g = paramParcel.readDouble();
    h = paramParcel.readDouble();
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("display")) {
      a = paramJSONObject.optString("display");
    }
    if (!paramJSONObject.isNull("country")) {
      b = paramJSONObject.optString("country");
    }
    if (!paramJSONObject.isNull("city")) {
      c = paramJSONObject.optString("city");
    }
    if (!paramJSONObject.isNull("address1")) {
      d = paramJSONObject.optString("address1");
    }
    if (!paramJSONObject.isNull("address2")) {
      e = paramJSONObject.optString("address2");
    }
    if (!paramJSONObject.isNull("zip")) {
      f = paramJSONObject.optString("zip");
    }
    g = paramJSONObject.optDouble("latitude");
    h = paramJSONObject.optDouble("longitude");
  }
  
  public double b()
  {
    return h;
  }
  
  public double c()
  {
    return g;
  }
  
  public String d()
  {
    return f;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String e()
  {
    return e;
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
    paramObject = (_Location)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a(d, d).a(e, e).a(f, f).a(g, g).a(h, h).a();
  }
  
  public String f()
  {
    return d;
  }
  
  public String g()
  {
    return c;
  }
  
  public String h()
  {
    return a;
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a(d).a(e).a(f).a(g).a(h).a();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeValue(a);
    paramParcel.writeValue(b);
    paramParcel.writeValue(c);
    paramParcel.writeValue(d);
    paramParcel.writeValue(e);
    paramParcel.writeValue(f);
    paramParcel.writeDouble(g);
    paramParcel.writeDouble(h);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._Location
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */