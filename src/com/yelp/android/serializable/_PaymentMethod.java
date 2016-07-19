package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _PaymentMethod
  implements Parcelable
{
  protected String a;
  protected String b;
  protected String c;
  protected String d;
  
  public String a()
  {
    return d;
  }
  
  public void a(Parcel paramParcel)
  {
    a = ((String)paramParcel.readValue(String.class.getClassLoader()));
    b = ((String)paramParcel.readValue(String.class.getClassLoader()));
    c = ((String)paramParcel.readValue(String.class.getClassLoader()));
    d = ((String)paramParcel.readValue(String.class.getClassLoader()));
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("id")) {
      a = paramJSONObject.optString("id");
    }
    if (!paramJSONObject.isNull("description")) {
      b = paramJSONObject.optString("description");
    }
    if (!paramJSONObject.isNull("image_url")) {
      c = paramJSONObject.optString("image_url");
    }
    if (!paramJSONObject.isNull("image_path")) {
      d = paramJSONObject.optString("image_path");
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
    paramObject = (_PaymentMethod)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a(d, d).a();
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a(d).a();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeValue(a);
    paramParcel.writeValue(b);
    paramParcel.writeValue(c);
    paramParcel.writeValue(d);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._PaymentMethod
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */