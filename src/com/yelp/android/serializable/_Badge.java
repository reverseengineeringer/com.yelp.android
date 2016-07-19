package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import com.yelp.parcelgen.JsonUtil;
import java.util.Date;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _Badge
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
  protected String j;
  protected boolean k;
  protected boolean l;
  protected double m;
  
  public void a(Parcel paramParcel)
  {
    long l1 = paramParcel.readLong();
    if (l1 != -2147483648L) {
      a = new Date(l1);
    }
    l1 = paramParcel.readLong();
    if (l1 != -2147483648L) {
      b = new Date(l1);
    }
    c = ((String)paramParcel.readValue(String.class.getClassLoader()));
    d = ((String)paramParcel.readValue(String.class.getClassLoader()));
    e = ((String)paramParcel.readValue(String.class.getClassLoader()));
    f = ((String)paramParcel.readValue(String.class.getClassLoader()));
    g = ((String)paramParcel.readValue(String.class.getClassLoader()));
    h = ((String)paramParcel.readValue(String.class.getClassLoader()));
    i = ((String)paramParcel.readValue(String.class.getClassLoader()));
    j = ((String)paramParcel.readValue(String.class.getClassLoader()));
    boolean[] arrayOfBoolean = paramParcel.createBooleanArray();
    k = arrayOfBoolean[0];
    l = arrayOfBoolean[1];
    m = paramParcel.readDouble();
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("time_awarded")) {
      a = JsonUtil.parseTimestamp(paramJSONObject, "time_awarded");
    }
    if (!paramJSONObject.isNull("expire_time")) {
      b = JsonUtil.parseTimestamp(paramJSONObject, "expire_time");
    }
    if (!paramJSONObject.isNull("title")) {
      c = paramJSONObject.optString("title");
    }
    if (!paramJSONObject.isNull("id")) {
      d = paramJSONObject.optString("id");
    }
    if (!paramJSONObject.isNull("description")) {
      e = paramJSONObject.optString("description");
    }
    if (!paramJSONObject.isNull("image_url")) {
      f = paramJSONObject.optString("image_url");
    }
    if (!paramJSONObject.isNull("image_small_url")) {
      g = paramJSONObject.optString("image_small_url");
    }
    if (!paramJSONObject.isNull("image_path")) {
      h = paramJSONObject.optString("image_path");
    }
    if (!paramJSONObject.isNull("image_small_path")) {
      i = paramJSONObject.optString("image_small_path");
    }
    if (!paramJSONObject.isNull("badge_key")) {
      j = paramJSONObject.optString("badge_key");
    }
    k = paramJSONObject.optBoolean("new");
    l = paramJSONObject.optBoolean("assigned");
    m = paramJSONObject.optDouble("expire_pct");
  }
  
  public JSONObject b()
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    if (a != null) {
      localJSONObject.put("time_awarded", a.getTime() / 1000L);
    }
    if (b != null) {
      localJSONObject.put("expire_time", b.getTime() / 1000L);
    }
    if (c != null) {
      localJSONObject.put("title", c);
    }
    if (d != null) {
      localJSONObject.put("id", d);
    }
    if (e != null) {
      localJSONObject.put("description", e);
    }
    if (f != null) {
      localJSONObject.put("image_url", f);
    }
    if (g != null) {
      localJSONObject.put("image_small_url", g);
    }
    if (h != null) {
      localJSONObject.put("image_path", h);
    }
    if (i != null) {
      localJSONObject.put("image_small_path", i);
    }
    if (j != null) {
      localJSONObject.put("badge_key", j);
    }
    localJSONObject.put("new", k);
    localJSONObject.put("assigned", l);
    localJSONObject.put("expire_pct", m);
    return localJSONObject;
  }
  
  public double c()
  {
    return m;
  }
  
  public boolean d()
  {
    return l;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String e()
  {
    return j;
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
    paramObject = (_Badge)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a(d, d).a(e, e).a(f, f).a(g, g).a(h, h).a(i, i).a(j, j).a(k, k).a(l, l).a(m, m).a();
  }
  
  public String f()
  {
    return i;
  }
  
  public String g()
  {
    return h;
  }
  
  public String h()
  {
    return g;
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a(d).a(e).a(f).a(g).a(h).a(i).a(j).a(k).a(l).a(m).a();
  }
  
  public String i()
  {
    return f;
  }
  
  public String j()
  {
    return e;
  }
  
  public String k()
  {
    return d;
  }
  
  public String l()
  {
    return c;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    long l2 = -2147483648L;
    if (a == null)
    {
      l1 = -2147483648L;
      paramParcel.writeLong(l1);
      if (b != null) {
        break label141;
      }
    }
    label141:
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
      paramParcel.writeValue(j);
      paramParcel.writeBooleanArray(new boolean[] { k, l });
      paramParcel.writeDouble(m);
      return;
      l1 = a.getTime();
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._Badge
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */