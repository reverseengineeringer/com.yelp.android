package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _PlatformFilter
  implements Parcelable
{
  protected SearchLocation a;
  protected String b;
  protected String c;
  
  protected _PlatformFilter() {}
  
  protected _PlatformFilter(SearchLocation paramSearchLocation, String paramString1, String paramString2)
  {
    this();
    a = paramSearchLocation;
    b = paramString1;
    c = paramString2;
  }
  
  public String a()
  {
    return b;
  }
  
  public void a(Parcel paramParcel)
  {
    a = ((SearchLocation)paramParcel.readParcelable(SearchLocation.class.getClassLoader()));
    b = ((String)paramParcel.readValue(String.class.getClassLoader()));
    c = ((String)paramParcel.readValue(String.class.getClassLoader()));
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("last_searched_location")) {
      a = ((SearchLocation)SearchLocation.CREATOR.parse(paramJSONObject.getJSONObject("last_searched_location")));
    }
    if (!paramJSONObject.isNull("service_type")) {
      b = paramJSONObject.optString("service_type");
    }
    if (!paramJSONObject.isNull("address_id")) {
      c = paramJSONObject.optString("address_id");
    }
  }
  
  public JSONObject c()
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    if (a != null) {
      localJSONObject.put("last_searched_location", a.a());
    }
    if (b != null) {
      localJSONObject.put("service_type", b);
    }
    if (c != null) {
      localJSONObject.put("address_id", c);
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
  
  public SearchLocation e()
  {
    return a;
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
    paramObject = (_PlatformFilter)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a();
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(a, 0);
    paramParcel.writeValue(b);
    paramParcel.writeValue(c);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._PlatformFilter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */