package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import com.yelp.parcelgen.JsonUtil;
import java.util.Date;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _TalkMessage
  implements Parcelable
{
  protected Date a;
  protected Date b;
  protected String c;
  protected String d;
  protected String e;
  protected String f;
  protected String g;
  protected String h;
  protected String i;
  
  public String a()
  {
    return i;
  }
  
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
    g = ((String)paramParcel.readValue(String.class.getClassLoader()));
    h = ((String)paramParcel.readValue(String.class.getClassLoader()));
    i = ((String)paramParcel.readValue(String.class.getClassLoader()));
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
    if (!paramJSONObject.isNull("id")) {
      c = paramJSONObject.optString("id");
    }
    if (!paramJSONObject.isNull("user_id")) {
      d = paramJSONObject.optString("user_id");
    }
    if (!paramJSONObject.isNull("text")) {
      e = paramJSONObject.optString("text");
    }
    if (!paramJSONObject.isNull("removed")) {
      f = paramJSONObject.optString("removed");
    }
    if (!paramJSONObject.isNull("user_removed")) {
      g = paramJSONObject.optString("user_removed");
    }
    if (!paramJSONObject.isNull("user_name")) {
      h = paramJSONObject.optString("user_name");
    }
    if (!paramJSONObject.isNull("user_photo_url")) {
      i = paramJSONObject.optString("user_photo_url");
    }
  }
  
  public String b()
  {
    return h;
  }
  
  public String c()
  {
    return f;
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
    return d;
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
    paramObject = (_TalkMessage)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a(d, d).a(e, e).a(f, f).a(g, g).a(h, h).a(i, i).a();
  }
  
  public String f()
  {
    return c;
  }
  
  public Date g()
  {
    return b;
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a(d).a(e).a(f).a(g).a(h).a(i).a();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    long l2 = -2147483648L;
    if (a == null)
    {
      l1 = -2147483648L;
      paramParcel.writeLong(l1);
      if (b != null) {
        break label104;
      }
    }
    label104:
    for (long l1 = l2;; l1 = b.getTime())
    {
      paramParcel.writeLong(l1);
      paramParcel.writeValue(c);
      paramParcel.writeValue(d);
      paramParcel.writeValue(e);
      paramParcel.writeValue(f);
      paramParcel.writeValue(g);
      paramParcel.writeValue(h);
      paramParcel.writeValue(i);
      return;
      l1 = a.getTime();
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._TalkMessage
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */