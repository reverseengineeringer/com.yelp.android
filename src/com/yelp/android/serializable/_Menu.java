package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _Menu
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
      localJSONObject.put("action_url", a);
    }
    if (b != null) {
      localJSONObject.put("action_title", b);
    }
    if (c != null) {
      localJSONObject.put("action_text", c);
    }
    if (d != null) {
      localJSONObject.put("action_image_url", d);
    }
    if (e != null) {
      localJSONObject.put("view_title", e);
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
    if (!paramJSONObject.isNull("action_url")) {
      a = paramJSONObject.optString("action_url");
    }
    if (!paramJSONObject.isNull("action_title")) {
      b = paramJSONObject.optString("action_title");
    }
    if (!paramJSONObject.isNull("action_text")) {
      c = paramJSONObject.optString("action_text");
    }
    if (!paramJSONObject.isNull("action_image_url")) {
      d = paramJSONObject.optString("action_image_url");
    }
    if (!paramJSONObject.isNull("view_title")) {
      e = paramJSONObject.optString("view_title");
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
    paramObject = (_Menu)paramObject;
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
 * Qualified Name:     com.yelp.android.serializable._Menu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */