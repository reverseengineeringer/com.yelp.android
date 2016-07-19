package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _InAppNotification
  implements Parcelable
{
  protected String b;
  protected String c;
  protected String d;
  protected String e;
  protected String f;
  protected String g;
  protected double h;
  protected long i;
  
  public void a(Parcel paramParcel)
  {
    b = ((String)paramParcel.readValue(String.class.getClassLoader()));
    c = ((String)paramParcel.readValue(String.class.getClassLoader()));
    d = ((String)paramParcel.readValue(String.class.getClassLoader()));
    e = ((String)paramParcel.readValue(String.class.getClassLoader()));
    f = ((String)paramParcel.readValue(String.class.getClassLoader()));
    g = ((String)paramParcel.readValue(String.class.getClassLoader()));
    h = paramParcel.readDouble();
    i = paramParcel.readLong();
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("title")) {
      b = paramJSONObject.optString("title");
    }
    if (!paramJSONObject.isNull("msg")) {
      c = paramJSONObject.optString("msg");
    }
    if (!paramJSONObject.isNull("campaign_id")) {
      d = paramJSONObject.optString("campaign_id");
    }
    if (!paramJSONObject.isNull("tap_action")) {
      e = paramJSONObject.optString("tap_action");
    }
    if (!paramJSONObject.isNull("loc")) {
      f = paramJSONObject.optString("loc");
    }
    if (!paramJSONObject.isNull("cohort")) {
      g = paramJSONObject.optString("cohort");
    }
    h = paramJSONObject.optDouble("version");
    i = paramJSONObject.optLong("id");
  }
  
  public double b()
  {
    return h;
  }
  
  public String c()
  {
    return g;
  }
  
  public String d()
  {
    return e;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String e()
  {
    return c;
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
    paramObject = (_InAppNotification)paramObject;
    return new b().a(b, b).a(c, c).a(d, d).a(e, e).a(f, f).a(g, g).a(h, h).a(i, i).a();
  }
  
  public String f()
  {
    return b;
  }
  
  public int hashCode()
  {
    return new c().a(b).a(c).a(d).a(e).a(f).a(g).a(h).a(i).a();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeValue(b);
    paramParcel.writeValue(c);
    paramParcel.writeValue(d);
    paramParcel.writeValue(e);
    paramParcel.writeValue(f);
    paramParcel.writeValue(g);
    paramParcel.writeDouble(h);
    paramParcel.writeLong(i);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._InAppNotification
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */