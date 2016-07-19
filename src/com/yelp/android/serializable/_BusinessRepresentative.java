package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _BusinessRepresentative
  implements Parcelable
{
  protected Photo a;
  protected String b;
  protected String c;
  protected String d;
  
  public void a(Parcel paramParcel)
  {
    a = ((Photo)paramParcel.readParcelable(Photo.class.getClassLoader()));
    b = ((String)paramParcel.readValue(String.class.getClassLoader()));
    c = ((String)paramParcel.readValue(String.class.getClassLoader()));
    d = ((String)paramParcel.readValue(String.class.getClassLoader()));
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("photo")) {
      a = ((Photo)Photo.CREATOR.parse(paramJSONObject.getJSONObject("photo")));
    }
    if (!paramJSONObject.isNull("name")) {
      b = paramJSONObject.optString("name");
    }
    if (!paramJSONObject.isNull("bio")) {
      c = paramJSONObject.optString("bio");
    }
    if (!paramJSONObject.isNull("role")) {
      d = paramJSONObject.optString("role");
    }
  }
  
  public String b()
  {
    return d;
  }
  
  public JSONObject c()
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    if (a != null) {
      localJSONObject.put("photo", a.w());
    }
    if (b != null) {
      localJSONObject.put("name", b);
    }
    if (c != null) {
      localJSONObject.put("bio", c);
    }
    if (d != null) {
      localJSONObject.put("role", d);
    }
    return localJSONObject;
  }
  
  public String d()
  {
    return c;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String e()
  {
    return b;
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
    paramObject = (_BusinessRepresentative)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a(d, d).a();
  }
  
  public Photo f()
  {
    return a;
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a(d).a();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(a, 0);
    paramParcel.writeValue(b);
    paramParcel.writeValue(c);
    paramParcel.writeValue(d);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._BusinessRepresentative
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */