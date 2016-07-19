package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _ReviewHighlight
  implements Parcelable
{
  protected String a;
  protected String b;
  protected String c;
  protected String d;
  protected String e;
  protected String f;
  protected int g;
  
  public void a(Parcel paramParcel)
  {
    a = ((String)paramParcel.readValue(String.class.getClassLoader()));
    b = ((String)paramParcel.readValue(String.class.getClassLoader()));
    c = ((String)paramParcel.readValue(String.class.getClassLoader()));
    d = ((String)paramParcel.readValue(String.class.getClassLoader()));
    e = ((String)paramParcel.readValue(String.class.getClassLoader()));
    f = ((String)paramParcel.readValue(String.class.getClassLoader()));
    g = paramParcel.readInt();
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("type")) {
      a = paramJSONObject.optString("type");
    }
    if (!paramJSONObject.isNull("identifier")) {
      b = paramJSONObject.optString("identifier");
    }
    if (!paramJSONObject.isNull("sentence")) {
      c = paramJSONObject.optString("sentence");
    }
    if (!paramJSONObject.isNull("review_id")) {
      d = paramJSONObject.optString("review_id");
    }
    if (!paramJSONObject.isNull("photo_url")) {
      e = paramJSONObject.optString("photo_url");
    }
    if (!paramJSONObject.isNull("title")) {
      f = paramJSONObject.optString("title");
    }
    g = paramJSONObject.optInt("review_count");
  }
  
  public String b()
  {
    return f;
  }
  
  public String c()
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
    paramObject = (_ReviewHighlight)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a(d, d).a(e, e).a(f, f).a(g, g).a();
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
    paramParcel.writeInt(g);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._ReviewHighlight
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */