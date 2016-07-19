package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _Review
  implements Parcelable
{
  protected String a;
  protected String b;
  protected int c;
  
  public int a()
  {
    return c;
  }
  
  public void a(Parcel paramParcel)
  {
    a = ((String)paramParcel.readValue(String.class.getClassLoader()));
    b = ((String)paramParcel.readValue(String.class.getClassLoader()));
    c = paramParcel.readInt();
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("id")) {
      a = paramJSONObject.optString("id");
    }
    if (!paramJSONObject.isNull("text")) {
      b = paramJSONObject.optString("text");
    }
    c = paramJSONObject.optInt("rating");
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
    paramObject = (_Review)paramObject;
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
    paramParcel.writeInt(c);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._Review
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */