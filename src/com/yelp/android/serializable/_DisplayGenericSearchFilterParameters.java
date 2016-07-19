package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _DisplayGenericSearchFilterParameters
  implements Parcelable
{
  protected PlatformDisambiguatedAddress a;
  protected String b;
  protected boolean c;
  protected int[] d;
  
  public void a(Parcel paramParcel)
  {
    a = ((PlatformDisambiguatedAddress)paramParcel.readParcelable(PlatformDisambiguatedAddress.class.getClassLoader()));
    b = ((String)paramParcel.readValue(String.class.getClassLoader()));
    c = paramParcel.createBooleanArray()[0];
    d = paramParcel.createIntArray();
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("user_delivery_address")) {
      a = ((PlatformDisambiguatedAddress)PlatformDisambiguatedAddress.CREATOR.parse(paramJSONObject.getJSONObject("user_delivery_address")));
    }
    if (!paramJSONObject.isNull("promoted_label")) {
      b = paramJSONObject.optString("promoted_label");
    }
    c = paramJSONObject.optBoolean("is_promoted");
    if (!paramJSONObject.isNull("promoted_on_color"))
    {
      paramJSONObject = paramJSONObject.getJSONArray("promoted_on_color");
      int j = paramJSONObject.length();
      d = new int[j];
      int i = 0;
      while (i < j)
      {
        d[i] = paramJSONObject.getInt(i);
        i += 1;
      }
    }
  }
  
  public int[] b()
  {
    return d;
  }
  
  public boolean c()
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
  
  public PlatformDisambiguatedAddress e()
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
    paramObject = (_DisplayGenericSearchFilterParameters)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a(d, d).a();
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a(d).a();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(a, 0);
    paramParcel.writeValue(b);
    paramParcel.writeBooleanArray(new boolean[] { c });
    paramParcel.writeIntArray(d);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._DisplayGenericSearchFilterParameters
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */