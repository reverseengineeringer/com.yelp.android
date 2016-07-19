package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import com.yelp.parcelgen.JsonParser.DualCreator;
import com.yelp.parcelgen.JsonUtil;
import java.util.Date;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _Video
  implements Parcelable
{
  protected Date a;
  protected Passport b;
  protected String c;
  protected String d;
  protected String e;
  protected String f;
  protected String g;
  protected String h;
  protected String i;
  protected String j;
  protected boolean k;
  protected int l;
  protected int m;
  
  public String a()
  {
    return c;
  }
  
  public void a(Parcel paramParcel)
  {
    long l1 = paramParcel.readLong();
    if (l1 != -2147483648L) {
      a = new Date(l1);
    }
    b = ((Passport)paramParcel.readParcelable(Passport.class.getClassLoader()));
    c = ((String)paramParcel.readValue(String.class.getClassLoader()));
    d = ((String)paramParcel.readValue(String.class.getClassLoader()));
    e = ((String)paramParcel.readValue(String.class.getClassLoader()));
    f = ((String)paramParcel.readValue(String.class.getClassLoader()));
    g = ((String)paramParcel.readValue(String.class.getClassLoader()));
    h = ((String)paramParcel.readValue(String.class.getClassLoader()));
    i = ((String)paramParcel.readValue(String.class.getClassLoader()));
    j = ((String)paramParcel.readValue(String.class.getClassLoader()));
    k = paramParcel.createBooleanArray()[0];
    l = paramParcel.readInt();
    m = paramParcel.readInt();
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("time_created")) {
      a = JsonUtil.parseTimestamp(paramJSONObject, "time_created");
    }
    if (!paramJSONObject.isNull("user_passport")) {
      b = ((Passport)Passport.CREATOR.parse(paramJSONObject.getJSONObject("user_passport")));
    }
    if (!paramJSONObject.isNull("id")) {
      c = paramJSONObject.optString("id");
    }
    if (!paramJSONObject.isNull("player_code")) {
      d = paramJSONObject.optString("player_code");
    }
    if (!paramJSONObject.isNull("embed_code")) {
      e = paramJSONObject.optString("embed_code");
    }
    if (!paramJSONObject.isNull("thumbnail_url")) {
      f = paramJSONObject.optString("thumbnail_url");
    }
    if (!paramJSONObject.isNull("video_source")) {
      g = paramJSONObject.optString("video_source");
    }
    if (!paramJSONObject.isNull("business_id")) {
      h = paramJSONObject.optString("business_id");
    }
    if (!paramJSONObject.isNull("caption")) {
      i = paramJSONObject.optString("caption");
    }
    if (!paramJSONObject.isNull("share_url")) {
      j = paramJSONObject.optString("share_url");
    }
    k = paramJSONObject.optBoolean("current_user_liked");
    l = paramJSONObject.optInt("feedback_positive_count");
    m = paramJSONObject.optInt("index");
  }
  
  public int d()
  {
    return l;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public int e()
  {
    return m;
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
    paramObject = (_Video)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a(d, d).a(e, e).a(f, f).a(g, g).a(h, h).a(i, i).a(j, j).a(k, k).a(l, l).a(m, m).a();
  }
  
  public String f()
  {
    return f;
  }
  
  public String g()
  {
    return i;
  }
  
  public Date h()
  {
    return a;
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a(d).a(e).a(f).a(g).a(h).a(i).a(j).a(k).a(l).a(m).a();
  }
  
  public Passport i()
  {
    return b;
  }
  
  public String k()
  {
    return h;
  }
  
  public String l()
  {
    return j;
  }
  
  public JSONObject n()
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    if (a != null) {
      localJSONObject.put("time_created", a.getTime() / 1000L);
    }
    if (b != null) {
      localJSONObject.put("user_passport", b.k());
    }
    if (c != null) {
      localJSONObject.put("id", c);
    }
    if (d != null) {
      localJSONObject.put("player_code", d);
    }
    if (e != null) {
      localJSONObject.put("embed_code", e);
    }
    if (f != null) {
      localJSONObject.put("thumbnail_url", f);
    }
    if (g != null) {
      localJSONObject.put("video_source", g);
    }
    if (h != null) {
      localJSONObject.put("business_id", h);
    }
    if (i != null) {
      localJSONObject.put("caption", i);
    }
    if (j != null) {
      localJSONObject.put("share_url", j);
    }
    localJSONObject.put("current_user_liked", k);
    localJSONObject.put("feedback_positive_count", l);
    localJSONObject.put("index", m);
    return localJSONObject;
  }
  
  public boolean o()
  {
    return k;
  }
  
  public String p()
  {
    return g;
  }
  
  public String q()
  {
    return e;
  }
  
  public String r()
  {
    return d;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (a == null) {}
    for (long l1 = -2147483648L;; l1 = a.getTime())
    {
      paramParcel.writeLong(l1);
      paramParcel.writeParcelable(b, 0);
      paramParcel.writeValue(c);
      paramParcel.writeValue(d);
      paramParcel.writeValue(e);
      paramParcel.writeValue(f);
      paramParcel.writeValue(g);
      paramParcel.writeValue(h);
      paramParcel.writeValue(i);
      paramParcel.writeValue(j);
      paramParcel.writeBooleanArray(new boolean[] { k });
      paramParcel.writeInt(l);
      paramParcel.writeInt(m);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._Video
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */