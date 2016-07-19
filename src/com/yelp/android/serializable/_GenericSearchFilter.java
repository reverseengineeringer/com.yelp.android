package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _GenericSearchFilter
  implements Parcelable
{
  protected String a;
  protected String b;
  protected boolean c;
  protected boolean d;
  
  protected _GenericSearchFilter() {}
  
  protected _GenericSearchFilter(String paramString1, String paramString2, boolean paramBoolean1, boolean paramBoolean2)
  {
    this();
    a = paramString1;
    b = paramString2;
    c = paramBoolean1;
    d = paramBoolean2;
  }
  
  public void a(Parcel paramParcel)
  {
    a = ((String)paramParcel.readValue(String.class.getClassLoader()));
    b = ((String)paramParcel.readValue(String.class.getClassLoader()));
    paramParcel = paramParcel.createBooleanArray();
    c = paramParcel[0];
    d = paramParcel[1];
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("id")) {
      a = paramJSONObject.optString("id");
    }
    if (!paramJSONObject.isNull("type")) {
      b = paramJSONObject.optString("type");
    }
    c = paramJSONObject.optBoolean("is_enabled");
    d = paramJSONObject.optBoolean("is_user_disabled");
  }
  
  public JSONObject b()
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    if (a != null) {
      localJSONObject.put("id", a);
    }
    if (b != null) {
      localJSONObject.put("type", b);
    }
    localJSONObject.put("is_enabled", c);
    localJSONObject.put("is_user_disabled", d);
    return localJSONObject;
  }
  
  public boolean c()
  {
    return c;
  }
  
  public String d()
  {
    return b;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String e()
  {
    return a;
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
    paramObject = (_GenericSearchFilter)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a(d, d).a();
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a(d).a();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeValue(a);
    paramParcel.writeValue(b);
    paramParcel.writeBooleanArray(new boolean[] { c, d });
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._GenericSearchFilter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */