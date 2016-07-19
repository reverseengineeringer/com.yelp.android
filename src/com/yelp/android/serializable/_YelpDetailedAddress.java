package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _YelpDetailedAddress
  implements Parcelable
{
  protected String a;
  protected String b;
  protected String c;
  
  protected _YelpDetailedAddress() {}
  
  protected _YelpDetailedAddress(String paramString1, String paramString2, String paramString3)
  {
    this();
    a = paramString1;
    b = paramString2;
    c = paramString3;
  }
  
  public String a()
  {
    return c;
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
    if (!paramJSONObject.isNull("address1")) {
      a = paramJSONObject.optString("address1");
    }
    if (!paramJSONObject.isNull("address2")) {
      b = paramJSONObject.optString("address2");
    }
    if (!paramJSONObject.isNull("address3")) {
      c = paramJSONObject.optString("address3");
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
    paramObject = (_YelpDetailedAddress)paramObject;
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
 * Qualified Name:     com.yelp.android.serializable._YelpDetailedAddress
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */