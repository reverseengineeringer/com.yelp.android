package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _PhotoAdsConfig
  implements Parcelable
{
  protected int a;
  protected int b;
  
  protected _PhotoAdsConfig() {}
  
  protected _PhotoAdsConfig(int paramInt1, int paramInt2)
  {
    this();
    a = paramInt1;
    b = paramInt2;
  }
  
  public int a()
  {
    return b;
  }
  
  public void a(Parcel paramParcel)
  {
    a = paramParcel.readInt();
    b = paramParcel.readInt();
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    a = paramJSONObject.optInt("start_index");
    b = paramJSONObject.optInt("interval");
  }
  
  public int b()
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
    paramObject = (_PhotoAdsConfig)paramObject;
    return new b().a(a, a).a(b, b).a();
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(a);
    paramParcel.writeInt(b);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._PhotoAdsConfig
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */