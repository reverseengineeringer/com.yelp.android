package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _DisplayGenericSearchFilter
  implements Parcelable
{
  protected DisplayGenericSearchFilterParameters a;
  protected GenericSearchFilter b;
  protected String c;
  protected boolean d;
  
  public void a(Parcel paramParcel)
  {
    a = ((DisplayGenericSearchFilterParameters)paramParcel.readParcelable(DisplayGenericSearchFilterParameters.class.getClassLoader()));
    b = ((GenericSearchFilter)paramParcel.readParcelable(GenericSearchFilter.class.getClassLoader()));
    c = ((String)paramParcel.readValue(String.class.getClassLoader()));
    d = paramParcel.createBooleanArray()[0];
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("params")) {
      a = ((DisplayGenericSearchFilterParameters)DisplayGenericSearchFilterParameters.CREATOR.parse(paramJSONObject.getJSONObject("params")));
    }
    if (!paramJSONObject.isNull("filter")) {
      b = ((GenericSearchFilter)GenericSearchFilter.CREATOR.parse(paramJSONObject.getJSONObject("filter")));
    }
    if (!paramJSONObject.isNull("title")) {
      c = paramJSONObject.optString("title");
    }
    d = paramJSONObject.optBoolean("is_popular");
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
    paramObject = (_DisplayGenericSearchFilter)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a(d, d).a();
  }
  
  public boolean f()
  {
    return d;
  }
  
  public String g()
  {
    return c;
  }
  
  public GenericSearchFilter h()
  {
    return b;
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a(d).a();
  }
  
  public DisplayGenericSearchFilterParameters i()
  {
    return a;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(a, 0);
    paramParcel.writeParcelable(b, 0);
    paramParcel.writeValue(c);
    paramParcel.writeBooleanArray(new boolean[] { d });
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._DisplayGenericSearchFilter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */