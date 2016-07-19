package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import com.yelp.parcelgen.JsonUtil;
import java.util.Date;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _Comment
  implements Parcelable
{
  protected Date a;
  protected String b;
  protected String c;
  protected User d;
  
  public JSONObject a()
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    if (a != null) {
      localJSONObject.put("time_updated", a.getTime() / 1000L);
    }
    if (b != null) {
      localJSONObject.put("id", b);
    }
    if (c != null) {
      localJSONObject.put("text", c);
    }
    if (d != null) {
      localJSONObject.put("user", d.A());
    }
    return localJSONObject;
  }
  
  public void a(Parcel paramParcel)
  {
    long l = paramParcel.readLong();
    if (l != -2147483648L) {
      a = new Date(l);
    }
    b = ((String)paramParcel.readValue(String.class.getClassLoader()));
    c = ((String)paramParcel.readValue(String.class.getClassLoader()));
    d = ((User)paramParcel.readParcelable(User.class.getClassLoader()));
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("time_updated")) {
      a = JsonUtil.parseTimestamp(paramJSONObject, "time_updated");
    }
    if (!paramJSONObject.isNull("id")) {
      b = paramJSONObject.optString("id");
    }
    if (!paramJSONObject.isNull("text")) {
      c = paramJSONObject.optString("text");
    }
    if (!paramJSONObject.isNull("user")) {
      d = ((User)User.CREATOR.parse(paramJSONObject.getJSONObject("user")));
    }
  }
  
  public User b()
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
  
  public Date e()
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
    paramObject = (_Comment)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a(d, d).a();
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a(d).a();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (a == null) {}
    for (long l = -2147483648L;; l = a.getTime())
    {
      paramParcel.writeLong(l);
      paramParcel.writeValue(b);
      paramParcel.writeValue(c);
      paramParcel.writeParcelable(d, 0);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._Comment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */