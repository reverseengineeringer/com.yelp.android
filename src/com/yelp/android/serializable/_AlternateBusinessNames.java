package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _AlternateBusinessNames
  implements Parcelable
{
  protected String a;
  protected String b;
  protected String c;
  
  public JSONObject a()
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    if (a != null) {
      localJSONObject.put("primary", a);
    }
    if (b != null) {
      localJSONObject.put("secondary", b);
    }
    if (c != null) {
      localJSONObject.put("romanized", c);
    }
    return localJSONObject;
  }
  
  public void a(Parcel paramParcel)
  {
    a = ((String)paramParcel.readValue(String.class.getClassLoader()));
    b = ((String)paramParcel.readValue(String.class.getClassLoader()));
    c = ((String)paramParcel.readValue(String.class.getClassLoader()));
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("primary")) {
      a = paramJSONObject.optString("primary");
    }
    if (!paramJSONObject.isNull("secondary")) {
      b = paramJSONObject.optString("secondary");
    }
    if (!paramJSONObject.isNull("romanized")) {
      c = paramJSONObject.optString("romanized");
    }
  }
  
  public String b()
  {
    return c;
  }
  
  public String c()
  {
    return b;
  }
  
  public String d()
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
    paramObject = (_AlternateBusinessNames)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a();
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeValue(a);
    paramParcel.writeValue(b);
    paramParcel.writeValue(c);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._AlternateBusinessNames
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */