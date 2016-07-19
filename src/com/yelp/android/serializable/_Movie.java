package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _Movie
  implements Parcelable
{
  protected String a;
  protected String b;
  protected String c;
  protected String d;
  protected int e;
  protected int[] f;
  
  public JSONObject a()
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    if (a != null) {
      localJSONObject.put("title", a);
    }
    if (b != null) {
      localJSONObject.put("rating", b);
    }
    if (c != null) {
      localJSONObject.put("image_url", c);
    }
    if (d != null) {
      localJSONObject.put("ticketing_url", d);
    }
    localJSONObject.put("runtime", e);
    if (f != null)
    {
      JSONArray localJSONArray = new JSONArray();
      int[] arrayOfInt = f;
      int j = arrayOfInt.length;
      int i = 0;
      while (i < j)
      {
        localJSONArray.put(arrayOfInt[i]);
        i += 1;
      }
      localJSONObject.put("showtime", localJSONArray);
    }
    return localJSONObject;
  }
  
  public void a(Parcel paramParcel)
  {
    a = ((String)paramParcel.readValue(String.class.getClassLoader()));
    b = ((String)paramParcel.readValue(String.class.getClassLoader()));
    c = ((String)paramParcel.readValue(String.class.getClassLoader()));
    d = ((String)paramParcel.readValue(String.class.getClassLoader()));
    e = paramParcel.readInt();
    f = paramParcel.createIntArray();
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("title")) {
      a = paramJSONObject.optString("title");
    }
    if (!paramJSONObject.isNull("rating")) {
      b = paramJSONObject.optString("rating");
    }
    if (!paramJSONObject.isNull("image_url")) {
      c = paramJSONObject.optString("image_url");
    }
    if (!paramJSONObject.isNull("ticketing_url")) {
      d = paramJSONObject.optString("ticketing_url");
    }
    e = paramJSONObject.optInt("runtime");
    if (!paramJSONObject.isNull("showtime"))
    {
      paramJSONObject = paramJSONObject.getJSONArray("showtime");
      int j = paramJSONObject.length();
      f = new int[j];
      int i = 0;
      while (i < j)
      {
        f[i] = paramJSONObject.getInt(i);
        i += 1;
      }
    }
  }
  
  public int[] b()
  {
    return f;
  }
  
  public int c()
  {
    return e;
  }
  
  public String d()
  {
    return d;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String e()
  {
    return c;
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
    paramObject = (_Movie)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a(d, d).a(e, e).a(f, f).a();
  }
  
  public String f()
  {
    return b;
  }
  
  public String g()
  {
    return a;
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a(d).a(e).a(f).a();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeValue(a);
    paramParcel.writeValue(b);
    paramParcel.writeValue(c);
    paramParcel.writeValue(d);
    paramParcel.writeInt(e);
    paramParcel.writeIntArray(f);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._Movie
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */