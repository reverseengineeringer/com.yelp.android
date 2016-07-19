package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _LocalizedAttribute
  implements Parcelable
{
  protected String a;
  protected String b;
  protected String c;
  protected String d;
  protected LocalizedAttribute.Type e;
  
  public void a(Parcel paramParcel)
  {
    a = ((String)paramParcel.readValue(String.class.getClassLoader()));
    b = ((String)paramParcel.readValue(String.class.getClassLoader()));
    c = ((String)paramParcel.readValue(String.class.getClassLoader()));
    d = ((String)paramParcel.readValue(String.class.getClassLoader()));
    e = ((LocalizedAttribute.Type)paramParcel.readSerializable());
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("label")) {
      a = paramJSONObject.optString("label");
    }
    if (!paramJSONObject.isNull("value")) {
      b = paramJSONObject.optString("value");
    }
    if (!paramJSONObject.isNull("action_text")) {
      c = paramJSONObject.optString("action_text");
    }
    if (!paramJSONObject.isNull("url")) {
      d = paramJSONObject.optString("url");
    }
    if (!paramJSONObject.isNull("type")) {
      e = LocalizedAttribute.Type.fromApiString(paramJSONObject.optString("type"));
    }
  }
  
  public JSONObject c()
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    if (a != null) {
      localJSONObject.put("label", a);
    }
    if (b != null) {
      localJSONObject.put("value", b);
    }
    if (c != null) {
      localJSONObject.put("action_text", c);
    }
    if (d != null) {
      localJSONObject.put("url", d);
    }
    if (e != null) {
      localJSONObject.put("type", e.apiString);
    }
    return localJSONObject;
  }
  
  public LocalizedAttribute.Type d()
  {
    return e;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String e()
  {
    return d;
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
    paramObject = (_LocalizedAttribute)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a(d, d).a(e, e).a();
  }
  
  public String f()
  {
    return c;
  }
  
  public String g()
  {
    return b;
  }
  
  public String h()
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
    paramParcel.writeSerializable(e);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._LocalizedAttribute
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */