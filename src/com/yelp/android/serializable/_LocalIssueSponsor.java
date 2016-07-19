package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _LocalIssueSponsor
  implements Parcelable
{
  protected String a;
  protected String b;
  protected String c;
  protected String d;
  protected String e;
  
  public String a()
  {
    return e;
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
    if (!paramJSONObject.isNull("headline")) {
      a = paramJSONObject.optString("headline");
    }
    if (!paramJSONObject.isNull("photo_url")) {
      b = paramJSONObject.optString("photo_url");
    }
    if (!paramJSONObject.isNull("sponsor_url")) {
      c = paramJSONObject.optString("sponsor_url");
    }
    if (!paramJSONObject.isNull("subheadline")) {
      d = paramJSONObject.optString("subheadline");
    }
    if (!paramJSONObject.isNull("text")) {
      e = paramJSONObject.optString("text");
    }
  }
  
  public String b()
  {
    return d;
  }
  
  public String c()
  {
    return c;
  }
  
  public String d()
  {
    return b;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String e()
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
    paramObject = (_LocalIssueSponsor)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a(d, d).a(e, e).a();
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
 * Qualified Name:     com.yelp.android.serializable._LocalIssueSponsor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */