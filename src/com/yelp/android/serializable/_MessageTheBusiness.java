package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _MessageTheBusiness
  implements Parcelable
{
  protected String a;
  protected String b;
  protected String c;
  protected String d;
  protected int[] e;
  
  public JSONObject a()
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    if (a != null) {
      localJSONObject.put("type", a);
    }
    if (b != null) {
      localJSONObject.put("display", b);
    }
    if (c != null) {
      localJSONObject.put("icon_url", c);
    }
    if (d != null) {
      localJSONObject.put("responsiveness", d);
    }
    if (e != null)
    {
      JSONArray localJSONArray = new JSONArray();
      int[] arrayOfInt = e;
      int j = arrayOfInt.length;
      int i = 0;
      while (i < j)
      {
        localJSONArray.put(arrayOfInt[i]);
        i += 1;
      }
      localJSONObject.put("responsiveness_color", localJSONArray);
    }
    return localJSONObject;
  }
  
  public void a(Parcel paramParcel)
  {
    a = ((String)paramParcel.readValue(String.class.getClassLoader()));
    b = ((String)paramParcel.readValue(String.class.getClassLoader()));
    c = ((String)paramParcel.readValue(String.class.getClassLoader()));
    d = ((String)paramParcel.readValue(String.class.getClassLoader()));
    e = paramParcel.createIntArray();
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("type")) {
      a = paramJSONObject.optString("type");
    }
    if (!paramJSONObject.isNull("display")) {
      b = paramJSONObject.optString("display");
    }
    if (!paramJSONObject.isNull("icon_url")) {
      c = paramJSONObject.optString("icon_url");
    }
    if (!paramJSONObject.isNull("responsiveness")) {
      d = paramJSONObject.optString("responsiveness");
    }
    if (!paramJSONObject.isNull("responsiveness_color"))
    {
      paramJSONObject = paramJSONObject.getJSONArray("responsiveness_color");
      int j = paramJSONObject.length();
      e = new int[j];
      int i = 0;
      while (i < j)
      {
        e[i] = paramJSONObject.getInt(i);
        i += 1;
      }
    }
  }
  
  public int[] b()
  {
    return e;
  }
  
  public String c()
  {
    return d;
  }
  
  public String d()
  {
    return c;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String e()
  {
    return b;
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
    paramObject = (_MessageTheBusiness)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a(d, d).a(e, e).a();
  }
  
  public String f()
  {
    return a;
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a(d).a(e).a();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeValue(a);
    paramParcel.writeValue(b);
    paramParcel.writeValue(c);
    paramParcel.writeValue(d);
    paramParcel.writeIntArray(e);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._MessageTheBusiness
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */