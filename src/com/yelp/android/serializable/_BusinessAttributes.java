package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _BusinessAttributes
  implements Parcelable
{
  protected AddressAttribute a;
  protected BusinessAttribute b;
  protected BusinessAttribute c;
  protected BusinessAttribute d;
  protected BusinessAttribute e;
  protected BusinessAttribute f;
  
  public void a(Parcel paramParcel)
  {
    a = ((AddressAttribute)paramParcel.readParcelable(AddressAttribute.class.getClassLoader()));
    b = ((BusinessAttribute)paramParcel.readParcelable(BusinessAttribute.class.getClassLoader()));
    c = ((BusinessAttribute)paramParcel.readParcelable(BusinessAttribute.class.getClassLoader()));
    d = ((BusinessAttribute)paramParcel.readParcelable(BusinessAttribute.class.getClassLoader()));
    e = ((BusinessAttribute)paramParcel.readParcelable(BusinessAttribute.class.getClassLoader()));
    f = ((BusinessAttribute)paramParcel.readParcelable(BusinessAttribute.class.getClassLoader()));
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("address")) {
      a = ((AddressAttribute)AddressAttribute.CREATOR.parse(paramJSONObject.getJSONObject("address")));
    }
    if (!paramJSONObject.isNull("locality")) {
      b = ((BusinessAttribute)BusinessAttribute.CREATOR.parse(paramJSONObject.getJSONObject("locality")));
    }
    if (!paramJSONObject.isNull("menu")) {
      c = ((BusinessAttribute)BusinessAttribute.CREATOR.parse(paramJSONObject.getJSONObject("menu")));
    }
    if (!paramJSONObject.isNull("name")) {
      d = ((BusinessAttribute)BusinessAttribute.CREATOR.parse(paramJSONObject.getJSONObject("name")));
    }
    if (!paramJSONObject.isNull("phone")) {
      e = ((BusinessAttribute)BusinessAttribute.CREATOR.parse(paramJSONObject.getJSONObject("phone")));
    }
    if (!paramJSONObject.isNull("url")) {
      f = ((BusinessAttribute)BusinessAttribute.CREATOR.parse(paramJSONObject.getJSONObject("url")));
    }
  }
  
  public BusinessAttribute d()
  {
    return f;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public BusinessAttribute e()
  {
    return e;
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
    paramObject = (_BusinessAttributes)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a(d, d).a(e, e).a(f, f).a();
  }
  
  public BusinessAttribute f()
  {
    return d;
  }
  
  public BusinessAttribute g()
  {
    return c;
  }
  
  public BusinessAttribute h()
  {
    return b;
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a(d).a(e).a(f).a();
  }
  
  public AddressAttribute i()
  {
    return a;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(a, 0);
    paramParcel.writeParcelable(b, 0);
    paramParcel.writeParcelable(c, 0);
    paramParcel.writeParcelable(d, 0);
    paramParcel.writeParcelable(e, 0);
    paramParcel.writeParcelable(f, 0);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._BusinessAttributes
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */