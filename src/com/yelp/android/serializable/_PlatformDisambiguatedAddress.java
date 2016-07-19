package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _PlatformDisambiguatedAddress
  implements Parcelable
{
  protected PlatformDeliveryAddress a;
  protected String b;
  protected String c;
  
  public JSONObject a()
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    if (a != null) {
      localJSONObject.put("address", a.a());
    }
    if (b != null) {
      localJSONObject.put("address_id", b);
    }
    if (c != null) {
      localJSONObject.put("location_str", c);
    }
    return localJSONObject;
  }
  
  public void a(Parcel paramParcel)
  {
    a = ((PlatformDeliveryAddress)paramParcel.readParcelable(PlatformDeliveryAddress.class.getClassLoader()));
    b = ((String)paramParcel.readValue(String.class.getClassLoader()));
    c = ((String)paramParcel.readValue(String.class.getClassLoader()));
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("address")) {
      a = ((PlatformDeliveryAddress)PlatformDeliveryAddress.CREATOR.parse(paramJSONObject.getJSONObject("address")));
    }
    if (!paramJSONObject.isNull("address_id")) {
      b = paramJSONObject.optString("address_id");
    }
    if (!paramJSONObject.isNull("location_str")) {
      c = paramJSONObject.optString("location_str");
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
  
  public PlatformDeliveryAddress d()
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
    paramObject = (_PlatformDisambiguatedAddress)paramObject;
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
 * Qualified Name:     com.yelp.android.serializable._PlatformDisambiguatedAddress
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */