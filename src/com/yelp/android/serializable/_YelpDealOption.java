package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _YelpDealOption
  implements Parcelable
{
  protected String a;
  protected String b;
  protected String c;
  protected String d;
  protected String e;
  protected int f;
  protected int g;
  
  public JSONObject a()
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    if (a != null) {
      localJSONObject.put("title", a);
    }
    if (b != null) {
      localJSONObject.put("description", b);
    }
    if (c != null) {
      localJSONObject.put("id", c);
    }
    if (d != null) {
      localJSONObject.put("price", d);
    }
    if (e != null) {
      localJSONObject.put("original_price", e);
    }
    localJSONObject.put("available_count", f);
    localJSONObject.put("purchased_count", g);
    return localJSONObject;
  }
  
  public void a(Parcel paramParcel)
  {
    a = ((String)paramParcel.readValue(String.class.getClassLoader()));
    b = ((String)paramParcel.readValue(String.class.getClassLoader()));
    c = ((String)paramParcel.readValue(String.class.getClassLoader()));
    d = ((String)paramParcel.readValue(String.class.getClassLoader()));
    e = ((String)paramParcel.readValue(String.class.getClassLoader()));
    f = paramParcel.readInt();
    g = paramParcel.readInt();
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("title")) {
      a = paramJSONObject.optString("title");
    }
    if (!paramJSONObject.isNull("description")) {
      b = paramJSONObject.optString("description");
    }
    if (!paramJSONObject.isNull("id")) {
      c = paramJSONObject.optString("id");
    }
    if (!paramJSONObject.isNull("price")) {
      d = paramJSONObject.optString("price");
    }
    if (!paramJSONObject.isNull("original_price")) {
      e = paramJSONObject.optString("original_price");
    }
    if (!paramJSONObject.isNull("available_count")) {}
    for (f = paramJSONObject.optInt("available_count"); !paramJSONObject.isNull("purchased_count"); f = -1)
    {
      g = paramJSONObject.optInt("purchased_count");
      return;
    }
    g = -1;
  }
  
  public int b()
  {
    return f;
  }
  
  public String c()
  {
    return e;
  }
  
  public String d()
  {
    return d;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String e()
  {
    return c;
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
    paramObject = (_YelpDealOption)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a(d, d).a(e, e).a(f, f).a(g, g).a();
  }
  
  public String f()
  {
    return b;
  }
  
  public String g()
  {
    return a;
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a(d).a(e).a(f).a(g).a();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeValue(a);
    paramParcel.writeValue(b);
    paramParcel.writeValue(c);
    paramParcel.writeValue(d);
    paramParcel.writeValue(e);
    paramParcel.writeInt(f);
    paramParcel.writeInt(g);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._YelpDealOption
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */