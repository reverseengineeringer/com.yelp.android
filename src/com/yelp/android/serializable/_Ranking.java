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

abstract class _Ranking
  implements Parcelable
{
  protected Date a;
  protected String b;
  protected String c;
  protected String d;
  protected String e;
  protected int f;
  protected int g;
  protected int h;
  protected int i;
  protected int j;
  protected int k;
  protected int[] l;
  
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
    b = ((String)paramParcel.readValue(String.class.getClassLoader()));
    c = ((String)paramParcel.readValue(String.class.getClassLoader()));
    d = ((String)paramParcel.readValue(String.class.getClassLoader()));
    e = ((String)paramParcel.readValue(String.class.getClassLoader()));
    f = paramParcel.readInt();
    g = paramParcel.readInt();
    h = paramParcel.readInt();
    i = paramParcel.readInt();
    j = paramParcel.readInt();
    k = paramParcel.readInt();
    l = paramParcel.createIntArray();
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("time_created")) {
      a = JsonUtil.parseTimestamp(paramJSONObject, "time_created");
    }
    if (!paramJSONObject.isNull("user_id")) {
      b = paramJSONObject.optString("user_id");
    }
    if (!paramJSONObject.isNull("user_name")) {
      c = paramJSONObject.optString("user_name");
    }
    if (!paramJSONObject.isNull("user_photo_url")) {
      d = paramJSONObject.optString("user_photo_url");
    }
    if (!paramJSONObject.isNull("business_name")) {
      e = paramJSONObject.optString("business_name");
    }
    f = paramJSONObject.optInt("user_friend_count");
    g = paramJSONObject.optInt("user_review_count");
    h = paramJSONObject.optInt("user_video_count");
    i = paramJSONObject.optInt("user_photo_count");
    j = paramJSONObject.optInt("rank");
    k = paramJSONObject.optInt("count");
    if (!paramJSONObject.isNull("user_elite_years"))
    {
      paramJSONObject = paramJSONObject.getJSONArray("user_elite_years");
      int n = paramJSONObject.length();
      l = new int[n];
      int m = 0;
      while (m < n)
      {
        l[m] = paramJSONObject.getInt(m);
        m += 1;
      }
    }
  }
  
  public String c()
  {
    return d;
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
    paramObject = (_Ranking)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a(d, d).a(e, e).a(f, f).a(g, g).a(h, h).a(i, i).a(j, j).a(k, k).a(l, l).a();
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a(d).a(e).a(f).a(g).a(h).a(i).a(j).a(k).a(l).a();
  }
  
  public String i()
  {
    return b;
  }
  
  public int[] l()
  {
    return l;
  }
  
  public int m()
  {
    return k;
  }
  
  public int n()
  {
    return j;
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
      paramParcel.writeValue(e);
      paramParcel.writeInt(f);
      paramParcel.writeInt(g);
      paramParcel.writeInt(h);
      paramParcel.writeInt(i);
      paramParcel.writeInt(j);
      paramParcel.writeInt(k);
      paramParcel.writeIntArray(l);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._Ranking
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */