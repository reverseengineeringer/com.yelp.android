package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import com.yelp.parcelgen.JsonParser.DualCreator;
import com.yelp.parcelgen.JsonUtil;
import java.util.Date;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _Compliment
  implements Parcelable
{
  protected Date a;
  protected Photo b;
  protected String c;
  protected String d;
  protected String e;
  protected String f;
  protected String g;
  protected User h;
  
  public void a(Parcel paramParcel)
  {
    long l = paramParcel.readLong();
    if (l != -2147483648L) {
      a = new Date(l);
    }
    b = ((Photo)paramParcel.readParcelable(Photo.class.getClassLoader()));
    c = ((String)paramParcel.readValue(String.class.getClassLoader()));
    d = ((String)paramParcel.readValue(String.class.getClassLoader()));
    e = ((String)paramParcel.readValue(String.class.getClassLoader()));
    f = ((String)paramParcel.readValue(String.class.getClassLoader()));
    g = ((String)paramParcel.readValue(String.class.getClassLoader()));
    h = ((User)paramParcel.readParcelable(User.class.getClassLoader()));
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("time_created")) {
      a = JsonUtil.parseTimestamp(paramJSONObject, "time_created");
    }
    if (!paramJSONObject.isNull("photo")) {
      b = ((Photo)Photo.CREATOR.parse(paramJSONObject.getJSONObject("photo")));
    }
    if (!paramJSONObject.isNull("id")) {
      c = paramJSONObject.optString("id");
    }
    if (!paramJSONObject.isNull("message")) {
      d = paramJSONObject.optString("message");
    }
    if (!paramJSONObject.isNull("business_name")) {
      e = paramJSONObject.optString("business_name");
    }
    if (!paramJSONObject.isNull("business_id")) {
      f = paramJSONObject.optString("business_id");
    }
    if (!paramJSONObject.isNull("complimentable_id")) {
      g = paramJSONObject.optString("complimentable_id");
    }
    if (!paramJSONObject.isNull("user")) {
      h = ((User)User.CREATOR.parse(paramJSONObject.getJSONObject("user")));
    }
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
    paramObject = (_Compliment)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a(d, d).a(e, e).a(f, f).a(g, g).a(h, h).a();
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a(d).a(e).a(f).a(g).a(h).a();
  }
  
  public User m()
  {
    return h;
  }
  
  public String n()
  {
    return g;
  }
  
  public String o()
  {
    return f;
  }
  
  public String p()
  {
    return e;
  }
  
  public String q()
  {
    return d;
  }
  
  public String r()
  {
    return c;
  }
  
  public Photo s()
  {
    return b;
  }
  
  public Date t()
  {
    return a;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (a == null) {}
    for (long l = -2147483648L;; l = a.getTime())
    {
      paramParcel.writeLong(l);
      paramParcel.writeParcelable(b, 0);
      paramParcel.writeValue(c);
      paramParcel.writeValue(d);
      paramParcel.writeValue(e);
      paramParcel.writeValue(f);
      paramParcel.writeValue(g);
      paramParcel.writeParcelable(h, 0);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._Compliment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */