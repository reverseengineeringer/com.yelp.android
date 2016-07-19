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

abstract class _Reservation
  implements Parcelable
{
  protected Date a;
  protected List<AttributedLabelValuePair> b;
  protected String c;
  protected String d;
  protected String e;
  protected String f;
  protected String g;
  protected String h;
  protected String i;
  protected boolean j;
  protected int k;
  
  public void a(Parcel paramParcel)
  {
    long l = paramParcel.readLong();
    if (l != -2147483648L) {
      a = new Date(l);
    }
    b = paramParcel.readArrayList(AttributedLabelValuePair.class.getClassLoader());
    c = ((String)paramParcel.readValue(String.class.getClassLoader()));
    d = ((String)paramParcel.readValue(String.class.getClassLoader()));
    e = ((String)paramParcel.readValue(String.class.getClassLoader()));
    f = ((String)paramParcel.readValue(String.class.getClassLoader()));
    g = ((String)paramParcel.readValue(String.class.getClassLoader()));
    h = ((String)paramParcel.readValue(String.class.getClassLoader()));
    i = ((String)paramParcel.readValue(String.class.getClassLoader()));
    j = paramParcel.createBooleanArray()[0];
    k = paramParcel.readInt();
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("timestamp")) {
      a = JsonUtil.parseTimestamp(paramJSONObject, "timestamp");
    }
    if (!paramJSONObject.isNull("attributes")) {}
    for (b = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("attributes"), AttributedLabelValuePair.CREATOR);; b = Collections.emptyList())
    {
      if (!paramJSONObject.isNull("confirmation_title")) {
        c = paramJSONObject.optString("confirmation_title");
      }
      if (!paramJSONObject.isNull("confirmation_details_title")) {
        d = paramJSONObject.optString("confirmation_details_title");
      }
      if (!paramJSONObject.isNull("view_title")) {
        e = paramJSONObject.optString("view_title");
      }
      if (!paramJSONObject.isNull("header_title")) {
        f = paramJSONObject.optString("header_title");
      }
      if (!paramJSONObject.isNull("confirmation_number")) {
        g = paramJSONObject.optString("confirmation_number");
      }
      if (!paramJSONObject.isNull("cancel_action_title")) {
        h = paramJSONObject.optString("cancel_action_title");
      }
      if (!paramJSONObject.isNull("reservation_lease_id")) {
        i = paramJSONObject.optString("reservation_lease_id");
      }
      j = paramJSONObject.optBoolean("cc_hold");
      k = paramJSONObject.optInt("party_size");
      return;
    }
  }
  
  public JSONObject c()
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    if (a != null) {
      localJSONObject.put("timestamp", a.getTime() / 1000L);
    }
    if (b != null)
    {
      JSONArray localJSONArray = new JSONArray();
      Iterator localIterator = b.iterator();
      while (localIterator.hasNext()) {
        localJSONArray.put(((AttributedLabelValuePair)localIterator.next()).a());
      }
      localJSONObject.put("attributes", localJSONArray);
    }
    if (c != null) {
      localJSONObject.put("confirmation_title", c);
    }
    if (d != null) {
      localJSONObject.put("confirmation_details_title", d);
    }
    if (e != null) {
      localJSONObject.put("view_title", e);
    }
    if (f != null) {
      localJSONObject.put("header_title", f);
    }
    if (g != null) {
      localJSONObject.put("confirmation_number", g);
    }
    if (h != null) {
      localJSONObject.put("cancel_action_title", h);
    }
    if (i != null) {
      localJSONObject.put("reservation_lease_id", i);
    }
    localJSONObject.put("cc_hold", j);
    localJSONObject.put("party_size", k);
    return localJSONObject;
  }
  
  public int d()
  {
    return k;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean e()
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
    paramObject = (_Reservation)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a(d, d).a(e, e).a(f, f).a(g, g).a(h, h).a(i, i).a(j, j).a(k, k).a();
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
    return f;
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a(d).a(e).a(f).a(g).a(h).a(i).a(j).a(k).a();
  }
  
  public String i()
  {
    return e;
  }
  
  public String j()
  {
    return d;
  }
  
  public String k()
  {
    return c;
  }
  
  public List<AttributedLabelValuePair> l()
  {
    return b;
  }
  
  public Date m()
  {
    return a;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (a == null) {}
    for (long l = -2147483648L;; l = a.getTime())
    {
      paramParcel.writeLong(l);
      paramParcel.writeList(b);
      paramParcel.writeValue(c);
      paramParcel.writeValue(d);
      paramParcel.writeValue(e);
      paramParcel.writeValue(f);
      paramParcel.writeValue(g);
      paramParcel.writeValue(h);
      paramParcel.writeValue(i);
      paramParcel.writeBooleanArray(new boolean[] { j });
      paramParcel.writeInt(k);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._Reservation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */