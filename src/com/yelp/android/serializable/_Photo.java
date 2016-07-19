package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import com.yelp.parcelgen.JsonParser.DualCreator;
import com.yelp.parcelgen.JsonUtil;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _Photo
  implements Parcelable
{
  protected Date d;
  protected List<String> e;
  protected List<String> f;
  protected Passport g;
  protected String h;
  protected String i;
  protected String j;
  protected String k;
  protected String l;
  protected String m;
  protected String n;
  protected int o;
  protected int p;
  
  public String a()
  {
    return h;
  }
  
  public void a(Parcel paramParcel)
  {
    long l1 = paramParcel.readLong();
    if (l1 != -2147483648L) {
      d = new Date(l1);
    }
    e = paramParcel.createStringArrayList();
    f = paramParcel.createStringArrayList();
    g = ((Passport)paramParcel.readParcelable(Passport.class.getClassLoader()));
    h = ((String)paramParcel.readValue(String.class.getClassLoader()));
    i = ((String)paramParcel.readValue(String.class.getClassLoader()));
    j = ((String)paramParcel.readValue(String.class.getClassLoader()));
    k = ((String)paramParcel.readValue(String.class.getClassLoader()));
    l = ((String)paramParcel.readValue(String.class.getClassLoader()));
    m = ((String)paramParcel.readValue(String.class.getClassLoader()));
    n = ((String)paramParcel.readValue(String.class.getClassLoader()));
    o = paramParcel.readInt();
    p = paramParcel.readInt();
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("time_created")) {
      d = JsonUtil.parseTimestamp(paramJSONObject, "time_created");
    }
    if (!paramJSONObject.isNull("feedback"))
    {
      e = JsonUtil.getStringList(paramJSONObject.optJSONArray("feedback"));
      if (paramJSONObject.isNull("votes")) {
        break label255;
      }
    }
    label255:
    for (f = JsonUtil.getStringList(paramJSONObject.optJSONArray("votes"));; f = Collections.emptyList())
    {
      if (!paramJSONObject.isNull("user_passport")) {
        g = ((Passport)Passport.CREATOR.parse(paramJSONObject.getJSONObject("user_passport")));
      }
      if (!paramJSONObject.isNull("id")) {
        h = paramJSONObject.optString("id");
      }
      if (!paramJSONObject.isNull("type")) {
        i = paramJSONObject.optString("type");
      }
      if (!paramJSONObject.isNull("caption")) {
        j = paramJSONObject.optString("caption");
      }
      if (!paramJSONObject.isNull("url_prefix")) {
        k = paramJSONObject.optString("url_prefix");
      }
      if (!paramJSONObject.isNull("url_suffix")) {
        l = paramJSONObject.optString("url_suffix");
      }
      if (!paramJSONObject.isNull("business_id")) {
        m = paramJSONObject.optString("business_id");
      }
      if (!paramJSONObject.isNull("share_url")) {
        n = paramJSONObject.optString("share_url");
      }
      o = paramJSONObject.optInt("feedback_positive_count");
      p = paramJSONObject.optInt("index");
      return;
      e = Collections.emptyList();
      break;
    }
  }
  
  public int d()
  {
    return o;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public int e()
  {
    return p;
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
    paramObject = (_Photo)paramObject;
    return new b().a(d, d).a(e, e).a(f, f).a(g, g).a(h, h).a(i, i).a(j, j).a(k, k).a(l, l).a(m, m).a(n, n).a(o, o).a(p, p).a();
  }
  
  public String g()
  {
    return j;
  }
  
  public Date h()
  {
    return d;
  }
  
  public int hashCode()
  {
    return new c().a(d).a(e).a(f).a(g).a(h).a(i).a(j).a(k).a(l).a(m).a(n).a(o).a(p).a();
  }
  
  public Passport i()
  {
    return g;
  }
  
  public String k()
  {
    return m;
  }
  
  public String l()
  {
    return n;
  }
  
  public JSONObject w()
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    if (d != null) {
      localJSONObject.put("time_created", d.getTime() / 1000L);
    }
    JSONArray localJSONArray;
    Iterator localIterator;
    if (e != null)
    {
      localJSONArray = new JSONArray();
      localIterator = e.iterator();
      while (localIterator.hasNext()) {
        localJSONArray.put((String)localIterator.next());
      }
      localJSONObject.put("feedback", localJSONArray);
    }
    if (f != null)
    {
      localJSONArray = new JSONArray();
      localIterator = f.iterator();
      while (localIterator.hasNext()) {
        localJSONArray.put((String)localIterator.next());
      }
      localJSONObject.put("votes", localJSONArray);
    }
    if (g != null) {
      localJSONObject.put("user_passport", g.k());
    }
    if (h != null) {
      localJSONObject.put("id", h);
    }
    if (i != null) {
      localJSONObject.put("type", i);
    }
    if (j != null) {
      localJSONObject.put("caption", j);
    }
    if (k != null) {
      localJSONObject.put("url_prefix", k);
    }
    if (l != null) {
      localJSONObject.put("url_suffix", l);
    }
    if (m != null) {
      localJSONObject.put("business_id", m);
    }
    if (n != null) {
      localJSONObject.put("share_url", n);
    }
    localJSONObject.put("feedback_positive_count", o);
    localJSONObject.put("index", p);
    return localJSONObject;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (d == null) {}
    for (long l1 = -2147483648L;; l1 = d.getTime())
    {
      paramParcel.writeLong(l1);
      paramParcel.writeStringList(e);
      paramParcel.writeStringList(f);
      paramParcel.writeParcelable(g, 0);
      paramParcel.writeValue(h);
      paramParcel.writeValue(i);
      paramParcel.writeValue(j);
      paramParcel.writeValue(k);
      paramParcel.writeValue(l);
      paramParcel.writeValue(m);
      paramParcel.writeValue(n);
      paramParcel.writeInt(o);
      paramParcel.writeInt(p);
      return;
    }
  }
  
  public String x()
  {
    return i;
  }
  
  public List<String> y()
  {
    return e;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._Photo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */