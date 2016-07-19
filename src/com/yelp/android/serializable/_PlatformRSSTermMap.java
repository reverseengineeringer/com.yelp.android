package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _PlatformRSSTermMap
  implements Parcelable
{
  protected String a;
  protected String b;
  
  protected _PlatformRSSTermMap() {}
  
  protected _PlatformRSSTermMap(String paramString1, String paramString2)
  {
    this();
    a = paramString1;
    b = paramString2;
  }
  
  public JSONObject a()
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    if (a != null) {
      localJSONObject.put("delivery", a);
    }
    if (b != null) {
      localJSONObject.put("pickup", b);
    }
    return localJSONObject;
  }
  
  public void a(Parcel paramParcel)
  {
    a = ((String)paramParcel.readValue(String.class.getClassLoader()));
    b = ((String)paramParcel.readValue(String.class.getClassLoader()));
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("delivery")) {
      a = paramJSONObject.optString("delivery");
    }
    if (!paramJSONObject.isNull("pickup")) {
      b = paramJSONObject.optString("pickup");
    }
  }
  
  public String b()
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
    paramObject = (_PlatformRSSTermMap)paramObject;
    return new b().a(a, a).a(b, b).a();
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeValue(a);
    paramParcel.writeValue(b);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._PlatformRSSTermMap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */