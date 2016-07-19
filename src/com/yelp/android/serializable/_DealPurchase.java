package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _DealPurchase
  implements Parcelable
{
  protected String c;
  protected String d;
  protected String e;
  protected String f;
  protected String g;
  protected String h;
  protected String i;
  protected String j;
  protected boolean k;
  protected long l;
  protected long m;
  
  public String a()
  {
    return f;
  }
  
  public void a(Parcel paramParcel)
  {
    c = ((String)paramParcel.readValue(String.class.getClassLoader()));
    d = ((String)paramParcel.readValue(String.class.getClassLoader()));
    e = ((String)paramParcel.readValue(String.class.getClassLoader()));
    f = ((String)paramParcel.readValue(String.class.getClassLoader()));
    g = ((String)paramParcel.readValue(String.class.getClassLoader()));
    h = ((String)paramParcel.readValue(String.class.getClassLoader()));
    i = ((String)paramParcel.readValue(String.class.getClassLoader()));
    j = ((String)paramParcel.readValue(String.class.getClassLoader()));
    k = paramParcel.createBooleanArray()[0];
    l = paramParcel.readLong();
    m = paramParcel.readLong();
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("id")) {
      c = paramJSONObject.optString("id");
    }
    if (!paramJSONObject.isNull("option_id")) {
      d = paramJSONObject.optString("option_id");
    }
    if (!paramJSONObject.isNull("redemption_code")) {
      e = paramJSONObject.optString("redemption_code");
    }
    if (!paramJSONObject.isNull("customer_name")) {
      f = paramJSONObject.optString("customer_name");
    }
    if (!paramJSONObject.isNull("customer_email")) {
      g = paramJSONObject.optString("customer_email");
    }
    if (!paramJSONObject.isNull("purchased_by_name")) {
      h = paramJSONObject.optString("purchased_by_name");
    }
    if (!paramJSONObject.isNull("redemption_title")) {
      i = paramJSONObject.optString("redemption_title");
    }
    if (!paramJSONObject.isNull("terms")) {
      j = paramJSONObject.optString("terms");
    }
    k = paramJSONObject.optBoolean("is_redeemed");
    if (!paramJSONObject.isNull("time_expire")) {}
    for (l = paramJSONObject.optLong("time_expire"); !paramJSONObject.isNull("time_redeemed"); l = -1L)
    {
      m = paramJSONObject.optLong("time_redeemed");
      return;
    }
    m = -1L;
  }
  
  public String b()
  {
    return h;
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
    paramObject = (_DealPurchase)paramObject;
    return new b().a(c, c).a(d, d).a(e, e).a(f, f).a(g, g).a(h, h).a(i, i).a(j, j).a(k, k).a(l, l).a(m, m).a();
  }
  
  public JSONObject g()
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    if (c != null) {
      localJSONObject.put("id", c);
    }
    if (d != null) {
      localJSONObject.put("option_id", d);
    }
    if (e != null) {
      localJSONObject.put("redemption_code", e);
    }
    if (f != null) {
      localJSONObject.put("customer_name", f);
    }
    if (g != null) {
      localJSONObject.put("customer_email", g);
    }
    if (h != null) {
      localJSONObject.put("purchased_by_name", h);
    }
    if (i != null) {
      localJSONObject.put("redemption_title", i);
    }
    if (j != null) {
      localJSONObject.put("terms", j);
    }
    localJSONObject.put("is_redeemed", k);
    localJSONObject.put("time_expire", l);
    localJSONObject.put("time_redeemed", m);
    return localJSONObject;
  }
  
  public boolean h()
  {
    return k;
  }
  
  public int hashCode()
  {
    return new c().a(c).a(d).a(e).a(f).a(g).a(h).a(i).a(j).a(k).a(l).a(m).a();
  }
  
  public String i()
  {
    return j;
  }
  
  public String j()
  {
    return i;
  }
  
  public String k()
  {
    return e;
  }
  
  public String l()
  {
    return c;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeValue(c);
    paramParcel.writeValue(d);
    paramParcel.writeValue(e);
    paramParcel.writeValue(f);
    paramParcel.writeValue(g);
    paramParcel.writeValue(h);
    paramParcel.writeValue(i);
    paramParcel.writeValue(j);
    paramParcel.writeBooleanArray(new boolean[] { k });
    paramParcel.writeLong(l);
    paramParcel.writeLong(m);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._DealPurchase
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */