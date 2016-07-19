package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _AndroidAppAnnotation
  implements Parcelable
{
  protected String a;
  protected String b;
  protected String c;
  
  public void a(Parcel paramParcel)
  {
    a = ((String)paramParcel.readValue(String.class.getClassLoader()));
    b = ((String)paramParcel.readValue(String.class.getClassLoader()));
    c = ((String)paramParcel.readValue(String.class.getClassLoader()));
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("annotation_title")) {
      a = paramJSONObject.optString("annotation_title");
    }
    if (!paramJSONObject.isNull("deeplink_url")) {
      b = paramJSONObject.optString("deeplink_url");
    }
    if (!paramJSONObject.isNull("http_url")) {
      c = paramJSONObject.optString("http_url");
    }
  }
  
  public JSONObject d()
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    if (a != null) {
      localJSONObject.put("annotation_title", a);
    }
    if (b != null) {
      localJSONObject.put("deeplink_url", b);
    }
    if (c != null) {
      localJSONObject.put("http_url", c);
    }
    return localJSONObject;
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
    paramObject = (_AndroidAppAnnotation)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a();
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
 * Qualified Name:     com.yelp.android.serializable._AndroidAppAnnotation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */