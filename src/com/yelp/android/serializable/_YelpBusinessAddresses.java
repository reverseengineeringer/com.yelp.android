package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _YelpBusinessAddresses
  implements Parcelable
{
  protected String a;
  protected String b;
  protected YelpDetailedAddress c;
  
  protected _YelpBusinessAddresses() {}
  
  protected _YelpBusinessAddresses(String paramString1, String paramString2, YelpDetailedAddress paramYelpDetailedAddress)
  {
    this();
    a = paramString1;
    b = paramString2;
    c = paramYelpDetailedAddress;
  }
  
  public void a(Parcel paramParcel)
  {
    a = ((String)paramParcel.readValue(String.class.getClassLoader()));
    b = ((String)paramParcel.readValue(String.class.getClassLoader()));
    c = ((YelpDetailedAddress)paramParcel.readParcelable(YelpDetailedAddress.class.getClassLoader()));
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("language")) {
      a = paramJSONObject.optString("language");
    }
    if (!paramJSONObject.isNull("locality")) {
      b = paramJSONObject.optString("locality");
    }
  }
  
  public YelpDetailedAddress c()
  {
    return c;
  }
  
  public String d()
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
    paramObject = (_YelpBusinessAddresses)paramObject;
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
    paramParcel.writeParcelable(c, 0);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._YelpBusinessAddresses
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */