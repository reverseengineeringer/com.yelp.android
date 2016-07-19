package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _PlatformAction
  implements Parcelable
{
  protected String a;
  protected String b;
  protected String c;
  protected String d;
  protected String e;
  
  public JSONObject a()
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    if (a != null) {
      localJSONObject.put("url", a);
    }
    if (b != null) {
      localJSONObject.put("image_url", b);
    }
    if (c != null) {
      localJSONObject.put("image_path", c);
    }
    if (d != null) {
      localJSONObject.put("title", d);
    }
    if (e != null) {
      localJSONObject.put("supported_vertical_types", e);
    }
    return localJSONObject;
  }
  
  public void a(Parcel paramParcel)
  {
    a = ((String)paramParcel.readValue(String.class.getClassLoader()));
    b = ((String)paramParcel.readValue(String.class.getClassLoader()));
    c = ((String)paramParcel.readValue(String.class.getClassLoader()));
    d = ((String)paramParcel.readValue(String.class.getClassLoader()));
    e = ((String)paramParcel.readValue(String.class.getClassLoader()));
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("url")) {
      a = paramJSONObject.optString("url");
    }
    if (!paramJSONObject.isNull("image_url")) {
      b = paramJSONObject.optString("image_url");
    }
    if (!paramJSONObject.isNull("image_path")) {
      c = paramJSONObject.optString("image_path");
    }
    if (!paramJSONObject.isNull("title")) {
      d = paramJSONObject.optString("title");
    }
    if (!paramJSONObject.isNull("supported_vertical_types")) {
      e = paramJSONObject.optString("supported_vertical_types");
    }
  }
  
  public String b()
  {
    return e;
  }
  
  public String c()
  {
    return d;
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
    paramObject = (_PlatformAction)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a(d, d).a(e, e).a();
  }
  
  public String f()
  {
    return a;
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a(d).a(e).a();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeValue(a);
    paramParcel.writeValue(b);
    paramParcel.writeValue(c);
    paramParcel.writeValue(d);
    paramParcel.writeValue(e);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._PlatformAction
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */