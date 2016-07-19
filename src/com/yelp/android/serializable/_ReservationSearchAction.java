package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import com.yelp.parcelgen.JsonUtil;
import java.util.Date;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _ReservationSearchAction
  implements Parcelable
{
  protected Date a;
  protected String b;
  protected String c;
  protected String d;
  protected boolean e;
  protected int f;
  protected int[] g;
  protected int[] h;
  protected int[] i;
  protected int[] j;
  protected int[] k;
  protected int[] l;
  
  public void a(Parcel paramParcel)
  {
    long l1 = paramParcel.readLong();
    if (l1 != -2147483648L) {
      a = new Date(l1);
    }
    b = ((String)paramParcel.readValue(String.class.getClassLoader()));
    c = ((String)paramParcel.readValue(String.class.getClassLoader()));
    d = ((String)paramParcel.readValue(String.class.getClassLoader()));
    e = paramParcel.createBooleanArray()[0];
    f = paramParcel.readInt();
    g = paramParcel.createIntArray();
    h = paramParcel.createIntArray();
    i = paramParcel.createIntArray();
    j = paramParcel.createIntArray();
    k = paramParcel.createIntArray();
    l = paramParcel.createIntArray();
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    int n = 0;
    if (!paramJSONObject.isNull("time")) {
      a = JsonUtil.parseTimestamp(paramJSONObject, "time");
    }
    if (!paramJSONObject.isNull("type")) {
      b = paramJSONObject.optString("type");
    }
    if (!paramJSONObject.isNull("text")) {
      c = paramJSONObject.optString("text");
    }
    if (!paramJSONObject.isNull("biz_action_text")) {
      d = paramJSONObject.optString("biz_action_text");
    }
    e = paramJSONObject.optBoolean("is_disabled");
    f = paramJSONObject.optInt("party_size");
    JSONArray localJSONArray;
    int i1;
    int m;
    if (!paramJSONObject.isNull("text_color"))
    {
      localJSONArray = paramJSONObject.getJSONArray("text_color");
      i1 = localJSONArray.length();
      g = new int[i1];
      m = 0;
      while (m < i1)
      {
        g[m] = localJSONArray.getInt(m);
        m += 1;
      }
    }
    if (!paramJSONObject.isNull("default_color_top"))
    {
      localJSONArray = paramJSONObject.getJSONArray("default_color_top");
      i1 = localJSONArray.length();
      h = new int[i1];
      m = 0;
      while (m < i1)
      {
        h[m] = localJSONArray.getInt(m);
        m += 1;
      }
    }
    if (!paramJSONObject.isNull("default_color_bottom"))
    {
      localJSONArray = paramJSONObject.getJSONArray("default_color_bottom");
      i1 = localJSONArray.length();
      i = new int[i1];
      m = 0;
      while (m < i1)
      {
        i[m] = localJSONArray.getInt(m);
        m += 1;
      }
    }
    if (!paramJSONObject.isNull("selected_color_top"))
    {
      localJSONArray = paramJSONObject.getJSONArray("selected_color_top");
      i1 = localJSONArray.length();
      j = new int[i1];
      m = 0;
      while (m < i1)
      {
        j[m] = localJSONArray.getInt(m);
        m += 1;
      }
    }
    if (!paramJSONObject.isNull("selected_color_bottom"))
    {
      localJSONArray = paramJSONObject.getJSONArray("selected_color_bottom");
      i1 = localJSONArray.length();
      k = new int[i1];
      m = 0;
      while (m < i1)
      {
        k[m] = localJSONArray.getInt(m);
        m += 1;
      }
    }
    if (!paramJSONObject.isNull("border_color"))
    {
      paramJSONObject = paramJSONObject.getJSONArray("border_color");
      i1 = paramJSONObject.length();
      l = new int[i1];
      m = n;
      while (m < i1)
      {
        l[m] = paramJSONObject.getInt(m);
        m += 1;
      }
    }
  }
  
  public boolean b()
  {
    return e;
  }
  
  public String c()
  {
    return d;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public int[] e()
  {
    return l;
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
    paramObject = (_ReservationSearchAction)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a(d, d).a(e, e).a(f, f).a(g, g).a(h, h).a(i, i).a(j, j).a(k, k).a(l, l).a();
  }
  
  public int[] f()
  {
    return k;
  }
  
  public int[] g()
  {
    return j;
  }
  
  public int[] h()
  {
    return i;
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a(d).a(e).a(f).a(g).a(h).a(i).a(j).a(k).a(l).a();
  }
  
  public int[] i()
  {
    return h;
  }
  
  public int[] j()
  {
    return g;
  }
  
  public int k()
  {
    return f;
  }
  
  public String l()
  {
    return c;
  }
  
  public String m()
  {
    return b;
  }
  
  public Date o()
  {
    return a;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (a == null) {}
    for (long l1 = -2147483648L;; l1 = a.getTime())
    {
      paramParcel.writeLong(l1);
      paramParcel.writeValue(b);
      paramParcel.writeValue(c);
      paramParcel.writeValue(d);
      paramParcel.writeBooleanArray(new boolean[] { e });
      paramParcel.writeInt(f);
      paramParcel.writeIntArray(g);
      paramParcel.writeIntArray(h);
      paramParcel.writeIntArray(i);
      paramParcel.writeIntArray(j);
      paramParcel.writeIntArray(k);
      paramParcel.writeIntArray(l);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._ReservationSearchAction
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */