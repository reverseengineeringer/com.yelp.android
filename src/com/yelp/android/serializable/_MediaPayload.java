package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import com.yelp.parcelgen.JsonUtil;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _MediaPayload
  implements Parcelable
{
  protected Map<String, MediaCategory> a;
  protected int b;
  
  public int a()
  {
    return b;
  }
  
  public void a(Parcel paramParcel)
  {
    a = JsonUtil.fromBundle(paramParcel.readBundle(), MediaCategory.class);
    b = paramParcel.readInt();
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("tabs")) {
      a = JsonUtil.parseJsonMap(paramJSONObject.getJSONObject("tabs"), MediaCategory.CREATOR);
    }
    b = paramJSONObject.optInt("total");
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
    paramObject = (_MediaPayload)paramObject;
    return new b().a(a, a).a(b, b).a();
  }
  
  public Map<String, MediaCategory> f()
  {
    return a;
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeBundle(JsonUtil.toBundle(a));
    paramParcel.writeInt(b);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._MediaPayload
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */