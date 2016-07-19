package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import com.yelp.parcelgen.JsonUtil;
import java.util.Collections;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _MenuItem
  implements Parcelable
{
  protected List<Photo> a;
  protected String b;
  protected String c;
  protected String d;
  protected String e;
  protected String f;
  
  public String a()
  {
    return f;
  }
  
  public void a(Parcel paramParcel)
  {
    a = paramParcel.readArrayList(Photo.class.getClassLoader());
    b = ((String)paramParcel.readValue(String.class.getClassLoader()));
    c = ((String)paramParcel.readValue(String.class.getClassLoader()));
    d = ((String)paramParcel.readValue(String.class.getClassLoader()));
    e = ((String)paramParcel.readValue(String.class.getClassLoader()));
    f = ((String)paramParcel.readValue(String.class.getClassLoader()));
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("photos")) {}
    for (a = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("photos"), Photo.CREATOR);; a = Collections.emptyList())
    {
      if (!paramJSONObject.isNull("alias")) {
        b = paramJSONObject.optString("alias");
      }
      if (!paramJSONObject.isNull("name")) {
        c = paramJSONObject.optString("name");
      }
      if (!paramJSONObject.isNull("review_snippet")) {
        d = paramJSONObject.optString("review_snippet");
      }
      if (!paramJSONObject.isNull("price")) {
        e = paramJSONObject.optString("price");
      }
      if (!paramJSONObject.isNull("description")) {
        f = paramJSONObject.optString("description");
      }
      return;
    }
  }
  
  public String b()
  {
    return e;
  }
  
  public String c()
  {
    return c;
  }
  
  public List<Photo> d()
  {
    return a;
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
    paramObject = (_MenuItem)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a(d, d).a(e, e).a(f, f).a();
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a(d).a(e).a(f).a();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeList(a);
    paramParcel.writeValue(b);
    paramParcel.writeValue(c);
    paramParcel.writeValue(d);
    paramParcel.writeValue(e);
    paramParcel.writeValue(f);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._MenuItem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */