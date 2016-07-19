package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import com.yelp.parcelgen.JsonUtil;
import java.util.Date;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _YelpBookmark
  implements Parcelable
{
  protected Date a;
  protected Date b;
  protected String c;
  protected String d;
  protected String e;
  protected String f;
  
  public void a(Parcel paramParcel)
  {
    long l = paramParcel.readLong();
    if (l != -2147483648L) {
      a = new Date(l);
    }
    l = paramParcel.readLong();
    if (l != -2147483648L) {
      b = new Date(l);
    }
    c = ((String)paramParcel.readValue(String.class.getClassLoader()));
    d = ((String)paramParcel.readValue(String.class.getClassLoader()));
    e = ((String)paramParcel.readValue(String.class.getClassLoader()));
    f = ((String)paramParcel.readValue(String.class.getClassLoader()));
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("time_created")) {
      a = JsonUtil.parseTimestamp(paramJSONObject, "time_created");
    }
    if (!paramJSONObject.isNull("time_modified")) {
      b = JsonUtil.parseTimestamp(paramJSONObject, "time_modified");
    }
    if (!paramJSONObject.isNull("business_id")) {
      c = paramJSONObject.optString("business_id");
    }
    if (!paramJSONObject.isNull("user_id")) {
      d = paramJSONObject.optString("user_id");
    }
    if (!paramJSONObject.isNull("comment")) {
      e = paramJSONObject.optString("comment");
    }
    if (!paramJSONObject.isNull("label")) {
      f = paramJSONObject.optString("label");
    }
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
    paramObject = (_YelpBookmark)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a(d, d).a(e, e).a(f, f).a();
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a(d).a(e).a(f).a();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    long l2 = -2147483648L;
    if (a == null)
    {
      l1 = -2147483648L;
      paramParcel.writeLong(l1);
      if (b != null) {
        break label80;
      }
    }
    label80:
    for (long l1 = l2;; l1 = b.getTime())
    {
      paramParcel.writeLong(l1);
      paramParcel.writeValue(c);
      paramParcel.writeValue(d);
      paramParcel.writeValue(e);
      paramParcel.writeValue(f);
      return;
      l1 = a.getTime();
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._YelpBookmark
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */