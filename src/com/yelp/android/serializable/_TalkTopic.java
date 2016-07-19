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

abstract class _TalkTopic
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
  protected int j;
  protected int k;
  protected int l;
  protected int m;
  protected int n;
  protected int[] o;
  
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
    j = paramParcel.readInt();
    k = paramParcel.readInt();
    l = paramParcel.readInt();
    m = paramParcel.readInt();
    n = paramParcel.readInt();
    o = paramParcel.createIntArray();
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
    if (!paramJSONObject.isNull("title")) {
      c = paramJSONObject.optString("title");
    }
    if (!paramJSONObject.isNull("id")) {
      d = paramJSONObject.optString("id");
    }
    if (!paramJSONObject.isNull("text")) {
      e = paramJSONObject.optString("text");
    }
    if (!paramJSONObject.isNull("category_name")) {
      f = paramJSONObject.optString("category_name");
    }
    if (!paramJSONObject.isNull("user_name")) {
      g = paramJSONObject.optString("user_name");
    }
    if (!paramJSONObject.isNull("user_photo_url")) {
      h = paramJSONObject.optString("user_photo_url");
    }
    if (!paramJSONObject.isNull("user_id")) {
      i = paramJSONObject.optString("user_id");
    }
    j = paramJSONObject.optInt("reply_count");
    k = paramJSONObject.optInt("user_review_count");
    l = paramJSONObject.optInt("user_video_count");
    m = paramJSONObject.optInt("user_photo_count");
    n = paramJSONObject.optInt("user_friend_count");
    if (!paramJSONObject.isNull("user_elite_years"))
    {
      paramJSONObject = paramJSONObject.getJSONArray("user_elite_years");
      int i2 = paramJSONObject.length();
      o = new int[i2];
      int i1 = 0;
      while (i1 < i2)
      {
        o[i1] = paramJSONObject.getInt(i1);
        i1 += 1;
      }
    }
  }
  
  public int[] c()
  {
    return o;
  }
  
  public int d()
  {
    return n;
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
    paramObject = (_TalkTopic)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a(d, d).a(e, e).a(f, f).a(g, g).a(h, h).a(i, i).a(j, j).a(k, k).a(l, l).a(m, m).a(n, n).a(o, o).a();
  }
  
  public int f()
  {
    return l;
  }
  
  public int g()
  {
    return k;
  }
  
  public int h()
  {
    return j;
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a(d).a(e).a(f).a(g).a(h).a(i).a(j).a(k).a(l).a(m).a(n).a(o).a();
  }
  
  public String i()
  {
    return i;
  }
  
  public String j()
  {
    return h;
  }
  
  public String k()
  {
    return g;
  }
  
  public String l()
  {
    return f;
  }
  
  public String m()
  {
    return e;
  }
  
  public String n()
  {
    return d;
  }
  
  public String o()
  {
    return c;
  }
  
  public Date p()
  {
    return b;
  }
  
  public Date q()
  {
    return a;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    long l2 = -2147483648L;
    if (a == null)
    {
      l1 = -2147483648L;
      paramParcel.writeLong(l1);
      if (b != null) {
        break label152;
      }
    }
    label152:
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
      paramParcel.writeInt(j);
      paramParcel.writeInt(k);
      paramParcel.writeInt(l);
      paramParcel.writeInt(m);
      paramParcel.writeInt(n);
      paramParcel.writeIntArray(o);
      return;
      l1 = a.getTime();
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._TalkTopic
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */