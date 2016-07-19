package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import com.yelp.parcelgen.JsonUtil;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _YelpDeal
  implements Parcelable
{
  protected Date d;
  protected List<DealPurchase> e;
  protected List<String> f;
  protected List<YelpDealOption> g;
  protected String h;
  protected String i;
  protected String j;
  protected String k;
  protected String l;
  protected String m;
  protected String n;
  protected String o;
  protected String p;
  protected String q;
  protected int r;
  protected int s;
  protected int t;
  protected int u;
  protected int v;
  protected long w;
  protected long x;
  protected long y;
  protected long z;
  
  public List<DealPurchase> A()
  {
    return e;
  }
  
  public Date B()
  {
    return d;
  }
  
  public void a(Parcel paramParcel)
  {
    long l1 = paramParcel.readLong();
    if (l1 != -2147483648L) {
      d = new Date(l1);
    }
    e = paramParcel.readArrayList(DealPurchase.class.getClassLoader());
    f = paramParcel.createStringArrayList();
    g = paramParcel.readArrayList(YelpDealOption.class.getClassLoader());
    h = ((String)paramParcel.readValue(String.class.getClassLoader()));
    i = ((String)paramParcel.readValue(String.class.getClassLoader()));
    j = ((String)paramParcel.readValue(String.class.getClassLoader()));
    k = ((String)paramParcel.readValue(String.class.getClassLoader()));
    l = ((String)paramParcel.readValue(String.class.getClassLoader()));
    m = ((String)paramParcel.readValue(String.class.getClassLoader()));
    n = ((String)paramParcel.readValue(String.class.getClassLoader()));
    o = ((String)paramParcel.readValue(String.class.getClassLoader()));
    p = ((String)paramParcel.readValue(String.class.getClassLoader()));
    q = ((String)paramParcel.readValue(String.class.getClassLoader()));
    r = paramParcel.readInt();
    s = paramParcel.readInt();
    t = paramParcel.readInt();
    u = paramParcel.readInt();
    v = paramParcel.readInt();
    w = paramParcel.readLong();
    x = paramParcel.readLong();
    y = paramParcel.readLong();
    z = paramParcel.readLong();
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("time_updated")) {
      d = JsonUtil.parseTimestamp(paramJSONObject, "time_updated");
    }
    if (!paramJSONObject.isNull("purchases"))
    {
      e = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("purchases"), DealPurchase.CREATOR);
      if (paramJSONObject.isNull("description")) {
        break label444;
      }
      f = JsonUtil.getStringList(paramJSONObject.optJSONArray("description"));
      label66:
      if (paramJSONObject.isNull("options")) {
        break label454;
      }
      g = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("options"), YelpDealOption.CREATOR);
      label91:
      if (!paramJSONObject.isNull("id")) {
        h = paramJSONObject.optString("id");
      }
      if (!paramJSONObject.isNull("title")) {
        i = paramJSONObject.optString("title");
      }
      if (!paramJSONObject.isNull("image_url")) {
        j = paramJSONObject.optString("image_url");
      }
      if (!paramJSONObject.isNull("location")) {
        k = paramJSONObject.optString("location");
      }
      if (!paramJSONObject.isNull("currency_code")) {
        l = paramJSONObject.optString("currency_code");
      }
      if (!paramJSONObject.isNull("business_name")) {
        m = paramJSONObject.optString("business_name");
      }
      if (!paramJSONObject.isNull("terms")) {
        n = paramJSONObject.optString("terms");
      }
      if (!paramJSONObject.isNull("tos_url")) {
        o = paramJSONObject.optString("tos_url");
      }
      if (!paramJSONObject.isNull("share_url")) {
        p = paramJSONObject.optString("share_url");
      }
      if (!paramJSONObject.isNull("canonical_business_id")) {
        q = paramJSONObject.optString("canonical_business_id");
      }
      if (paramJSONObject.isNull("max_user_quantity")) {
        break label464;
      }
      r = paramJSONObject.optInt("max_user_quantity");
      label300:
      if (paramJSONObject.isNull("max_gift_quantity")) {
        break label472;
      }
      s = paramJSONObject.optInt("max_gift_quantity");
      label319:
      if (paramJSONObject.isNull("max_quantity")) {
        break label480;
      }
      t = paramJSONObject.optInt("max_quantity");
      label338:
      if (paramJSONObject.isNull("purchased_count")) {
        break label488;
      }
      u = paramJSONObject.optInt("purchased_count");
      label357:
      if (paramJSONObject.isNull("remaining_count")) {
        break label496;
      }
      v = paramJSONObject.optInt("remaining_count");
      label376:
      if (paramJSONObject.isNull("time_start")) {
        break label504;
      }
      w = paramJSONObject.optLong("time_start");
      label395:
      if (paramJSONObject.isNull("time_end")) {
        break label514;
      }
    }
    label444:
    label454:
    label464:
    label472:
    label480:
    label488:
    label496:
    label504:
    label514:
    for (x = paramJSONObject.optLong("time_end");; x = -1L)
    {
      if (paramJSONObject.isNull("time_reference")) {
        break label524;
      }
      y = paramJSONObject.optLong("time_reference");
      return;
      e = Collections.emptyList();
      break;
      f = Collections.emptyList();
      break label66;
      g = Collections.emptyList();
      break label91;
      r = -1;
      break label300;
      s = -1;
      break label319;
      t = -1;
      break label338;
      u = -1;
      break label357;
      v = -1;
      break label376;
      w = -1L;
      break label395;
    }
    label524:
    y = -1L;
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
    paramObject = (_YelpDeal)paramObject;
    return new b().a(d, d).a(e, e).a(f, f).a(g, g).a(h, h).a(i, i).a(j, j).a(k, k).a(l, l).a(m, m).a(n, n).a(o, o).a(p, p).a(q, q).a(r, r).a(s, s).a(t, t).a(u, u).a(v, v).a(w, w).a(x, x).a(y, y).a(z, z).a();
  }
  
  public long f()
  {
    return z;
  }
  
  public int hashCode()
  {
    return new c().a(d).a(e).a(f).a(g).a(h).a(i).a(j).a(k).a(l).a(m).a(n).a(o).a(p).a(q).a(r).a(s).a(t).a(u).a(v).a(w).a(x).a(y).a(z).a();
  }
  
  public int l()
  {
    return s;
  }
  
  public int m()
  {
    return t;
  }
  
  public int n()
  {
    return r;
  }
  
  public JSONObject o()
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    if (d != null) {
      localJSONObject.put("time_updated", d.getTime() / 1000L);
    }
    JSONArray localJSONArray;
    Iterator localIterator;
    if (e != null)
    {
      localJSONArray = new JSONArray();
      localIterator = e.iterator();
      while (localIterator.hasNext()) {
        localJSONArray.put(((DealPurchase)localIterator.next()).g());
      }
      localJSONObject.put("purchases", localJSONArray);
    }
    if (f != null)
    {
      localJSONArray = new JSONArray();
      localIterator = f.iterator();
      while (localIterator.hasNext()) {
        localJSONArray.put((String)localIterator.next());
      }
      localJSONObject.put("description", localJSONArray);
    }
    if (g != null)
    {
      localJSONArray = new JSONArray();
      localIterator = g.iterator();
      while (localIterator.hasNext()) {
        localJSONArray.put(((YelpDealOption)localIterator.next()).a());
      }
      localJSONObject.put("options", localJSONArray);
    }
    if (h != null) {
      localJSONObject.put("id", h);
    }
    if (i != null) {
      localJSONObject.put("title", i);
    }
    if (j != null) {
      localJSONObject.put("image_url", j);
    }
    if (k != null) {
      localJSONObject.put("location", k);
    }
    if (l != null) {
      localJSONObject.put("currency_code", l);
    }
    if (m != null) {
      localJSONObject.put("business_name", m);
    }
    if (n != null) {
      localJSONObject.put("terms", n);
    }
    if (o != null) {
      localJSONObject.put("tos_url", o);
    }
    if (p != null) {
      localJSONObject.put("share_url", p);
    }
    if (q != null) {
      localJSONObject.put("canonical_business_id", q);
    }
    localJSONObject.put("max_user_quantity", r);
    localJSONObject.put("max_gift_quantity", s);
    localJSONObject.put("max_quantity", t);
    localJSONObject.put("purchased_count", u);
    localJSONObject.put("remaining_count", v);
    localJSONObject.put("time_start", w);
    localJSONObject.put("time_end", x);
    localJSONObject.put("time_reference", y);
    return localJSONObject;
  }
  
  public int p()
  {
    return v;
  }
  
  public int q()
  {
    return u;
  }
  
  public String r()
  {
    return q;
  }
  
  public String s()
  {
    return o;
  }
  
  public String t()
  {
    return n;
  }
  
  public String u()
  {
    return m;
  }
  
  public String v()
  {
    return j;
  }
  
  public String w()
  {
    return i;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (d == null) {}
    for (long l1 = -2147483648L;; l1 = d.getTime())
    {
      paramParcel.writeLong(l1);
      paramParcel.writeList(e);
      paramParcel.writeStringList(f);
      paramParcel.writeList(g);
      paramParcel.writeValue(h);
      paramParcel.writeValue(i);
      paramParcel.writeValue(j);
      paramParcel.writeValue(k);
      paramParcel.writeValue(l);
      paramParcel.writeValue(m);
      paramParcel.writeValue(n);
      paramParcel.writeValue(o);
      paramParcel.writeValue(p);
      paramParcel.writeValue(q);
      paramParcel.writeInt(r);
      paramParcel.writeInt(s);
      paramParcel.writeInt(t);
      paramParcel.writeInt(u);
      paramParcel.writeInt(v);
      paramParcel.writeLong(w);
      paramParcel.writeLong(x);
      paramParcel.writeLong(y);
      paramParcel.writeLong(z);
      return;
    }
  }
  
  public String x()
  {
    return h;
  }
  
  public List<YelpDealOption> y()
  {
    return g;
  }
  
  public List<String> z()
  {
    return f;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._YelpDeal
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */