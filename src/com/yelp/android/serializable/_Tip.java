package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import com.yelp.parcelgen.JsonParser.DualCreator;
import com.yelp.parcelgen.JsonUtil;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _Tip
  implements Parcelable
{
  protected Date b;
  protected Date c;
  protected List<String> d;
  protected Photo e;
  protected String f;
  protected String g;
  protected String h;
  protected String i;
  protected String j;
  protected String k;
  protected String l;
  protected String m;
  protected boolean n;
  protected int o;
  protected int p;
  
  public String a()
  {
    return f;
  }
  
  public void a(Parcel paramParcel)
  {
    long l1 = paramParcel.readLong();
    if (l1 != -2147483648L) {
      b = new Date(l1);
    }
    l1 = paramParcel.readLong();
    if (l1 != -2147483648L) {
      c = new Date(l1);
    }
    d = paramParcel.createStringArrayList();
    e = ((Photo)paramParcel.readParcelable(Photo.class.getClassLoader()));
    f = ((String)paramParcel.readValue(String.class.getClassLoader()));
    g = ((String)paramParcel.readValue(String.class.getClassLoader()));
    h = ((String)paramParcel.readValue(String.class.getClassLoader()));
    i = ((String)paramParcel.readValue(String.class.getClassLoader()));
    j = ((String)paramParcel.readValue(String.class.getClassLoader()));
    k = ((String)paramParcel.readValue(String.class.getClassLoader()));
    l = ((String)paramParcel.readValue(String.class.getClassLoader()));
    m = ((String)paramParcel.readValue(String.class.getClassLoader()));
    n = paramParcel.createBooleanArray()[0];
    o = paramParcel.readInt();
    p = paramParcel.readInt();
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("time_modified")) {
      b = JsonUtil.parseTimestamp(paramJSONObject, "time_modified");
    }
    if (!paramJSONObject.isNull("totd_time")) {
      c = JsonUtil.parseTimestamp(paramJSONObject, "totd_time");
    }
    if (!paramJSONObject.isNull("feedback")) {}
    for (d = JsonUtil.getStringList(paramJSONObject.optJSONArray("feedback"));; d = Collections.emptyList())
    {
      if (!paramJSONObject.isNull("photo")) {
        e = ((Photo)Photo.CREATOR.parse(paramJSONObject.getJSONObject("photo")));
      }
      if (!paramJSONObject.isNull("id")) {
        f = paramJSONObject.optString("id");
      }
      if (!paramJSONObject.isNull("user_name")) {
        g = paramJSONObject.optString("user_name");
      }
      if (!paramJSONObject.isNull("user_id")) {
        h = paramJSONObject.optString("user_id");
      }
      if (!paramJSONObject.isNull("text")) {
        i = paramJSONObject.optString("text");
      }
      if (!paramJSONObject.isNull("business_id")) {
        j = paramJSONObject.optString("business_id");
      }
      if (!paramJSONObject.isNull("business_photo_url")) {
        k = paramJSONObject.optString("business_photo_url");
      }
      if (!paramJSONObject.isNull("business_name")) {
        l = paramJSONObject.optString("business_name");
      }
      if (!paramJSONObject.isNull("user_photo_url")) {
        m = paramJSONObject.optString("user_photo_url");
      }
      n = paramJSONObject.optBoolean("is_first_tip");
      o = paramJSONObject.optInt("feedback_positive_count");
      p = paramJSONObject.optInt("compliment_count");
      return;
    }
  }
  
  public String b()
  {
    return h;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String e()
  {
    return i;
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
    paramObject = (_Tip)paramObject;
    return new b().a(b, b).a(c, c).a(d, d).a(e, e).a(f, f).a(g, g).a(h, h).a(i, i).a(j, j).a(k, k).a(l, l).a(m, m).a(n, n).a(o, o).a(p, p).a();
  }
  
  public String h()
  {
    return g;
  }
  
  public int hashCode()
  {
    return new c().a(b).a(c).a(d).a(e).a(f).a(g).a(h).a(i).a(j).a(k).a(l).a(m).a(n).a(o).a(p).a();
  }
  
  public int k()
  {
    return p;
  }
  
  public int l()
  {
    return o;
  }
  
  public boolean m()
  {
    return n;
  }
  
  public String n()
  {
    return m;
  }
  
  public String o()
  {
    return l;
  }
  
  public String p()
  {
    return k;
  }
  
  public String q()
  {
    return j;
  }
  
  public Photo r()
  {
    return e;
  }
  
  public List<String> s()
  {
    return d;
  }
  
  public Date t()
  {
    return b;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    long l2 = -2147483648L;
    if (b == null)
    {
      l1 = -2147483648L;
      paramParcel.writeLong(l1);
      if (c != null) {
        break label159;
      }
    }
    label159:
    for (long l1 = l2;; l1 = c.getTime())
    {
      paramParcel.writeLong(l1);
      paramParcel.writeStringList(d);
      paramParcel.writeParcelable(e, 0);
      paramParcel.writeValue(f);
      paramParcel.writeValue(g);
      paramParcel.writeValue(h);
      paramParcel.writeValue(i);
      paramParcel.writeValue(j);
      paramParcel.writeValue(k);
      paramParcel.writeValue(l);
      paramParcel.writeValue(m);
      paramParcel.writeBooleanArray(new boolean[] { n });
      paramParcel.writeInt(o);
      paramParcel.writeInt(p);
      return;
      l1 = b.getTime();
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._Tip
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */