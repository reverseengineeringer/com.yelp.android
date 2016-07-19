package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _FromThisBusiness
  implements Parcelable
{
  protected BusinessRepresentative a;
  protected String b;
  protected String c;
  protected boolean d;
  protected int e;
  
  public JSONObject a()
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    if (a != null) {
      localJSONObject.put("representative", a.c());
    }
    if (b != null) {
      localJSONObject.put("specialties", b);
    }
    if (c != null) {
      localJSONObject.put("history", c);
    }
    localJSONObject.put("show_teaser", d);
    localJSONObject.put("year_established", e);
    return localJSONObject;
  }
  
  public void a(Parcel paramParcel)
  {
    a = ((BusinessRepresentative)paramParcel.readParcelable(BusinessRepresentative.class.getClassLoader()));
    b = ((String)paramParcel.readValue(String.class.getClassLoader()));
    c = ((String)paramParcel.readValue(String.class.getClassLoader()));
    d = paramParcel.createBooleanArray()[0];
    e = paramParcel.readInt();
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("representative")) {
      a = ((BusinessRepresentative)BusinessRepresentative.CREATOR.parse(paramJSONObject.getJSONObject("representative")));
    }
    if (!paramJSONObject.isNull("specialties")) {
      b = paramJSONObject.optString("specialties");
    }
    if (!paramJSONObject.isNull("history")) {
      c = paramJSONObject.optString("history");
    }
    d = paramJSONObject.optBoolean("show_teaser");
    e = paramJSONObject.optInt("year_established");
  }
  
  public int b()
  {
    return e;
  }
  
  public boolean c()
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
    paramObject = (_FromThisBusiness)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a(d, d).a(e, e).a();
  }
  
  public BusinessRepresentative f()
  {
    return a;
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a(d).a(e).a();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(a, 0);
    paramParcel.writeValue(b);
    paramParcel.writeValue(c);
    paramParcel.writeBooleanArray(new boolean[] { d });
    paramParcel.writeInt(e);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._FromThisBusiness
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */