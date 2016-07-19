package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _UserLocation
  implements Parcelable
{
  protected String a;
  protected boolean b;
  
  public void a(Parcel paramParcel)
  {
    a = ((String)paramParcel.readValue(String.class.getClassLoader()));
    b = paramParcel.createBooleanArray()[0];
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("display")) {
      a = paramJSONObject.optString("display");
    }
    b = paramJSONObject.optBoolean("is_primary");
  }
  
  public boolean a()
  {
    return b;
  }
  
  public String b()
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
    paramObject = (_UserLocation)paramObject;
    return new b().a(a, a).a(b, b).a();
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeValue(a);
    paramParcel.writeBooleanArray(new boolean[] { b });
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._UserLocation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */