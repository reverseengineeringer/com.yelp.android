package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _FacebookUser
  implements Parcelable
{
  protected String a;
  protected String b;
  protected String c;
  protected String d;
  protected String e;
  protected String f;
  protected boolean g;
  
  public String a()
  {
    return f;
  }
  
  public void a(Parcel paramParcel)
  {
    a = ((String)paramParcel.readValue(String.class.getClassLoader()));
    b = ((String)paramParcel.readValue(String.class.getClassLoader()));
    c = ((String)paramParcel.readValue(String.class.getClassLoader()));
    d = ((String)paramParcel.readValue(String.class.getClassLoader()));
    e = ((String)paramParcel.readValue(String.class.getClassLoader()));
    f = ((String)paramParcel.readValue(String.class.getClassLoader()));
    g = paramParcel.createBooleanArray()[0];
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("first_name")) {
      a = paramJSONObject.optString("first_name");
    }
    if (!paramJSONObject.isNull("last_name")) {
      b = paramJSONObject.optString("last_name");
    }
    if (!paramJSONObject.isNull("birthday")) {
      c = paramJSONObject.optString("birthday");
    }
    if (!paramJSONObject.isNull("gender")) {
      d = paramJSONObject.optString("gender");
    }
    if (!paramJSONObject.isNull("id")) {
      e = paramJSONObject.optString("id");
    }
    if (!paramJSONObject.isNull("email")) {
      f = paramJSONObject.optString("email");
    }
    g = paramJSONObject.optBoolean("verified");
  }
  
  public String b()
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
    paramObject = (_FacebookUser)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a(d, d).a(e, e).a(f, f).a(g, g).a();
  }
  
  public String f()
  {
    return a;
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a(d).a(e).a(f).a(g).a();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeValue(a);
    paramParcel.writeValue(b);
    paramParcel.writeValue(c);
    paramParcel.writeValue(d);
    paramParcel.writeValue(e);
    paramParcel.writeValue(f);
    paramParcel.writeBooleanArray(new boolean[] { g });
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._FacebookUser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */