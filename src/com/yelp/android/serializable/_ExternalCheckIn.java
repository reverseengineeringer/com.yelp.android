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

abstract class _ExternalCheckIn
  implements Parcelable
{
  protected Date a;
  protected String b;
  protected String c;
  protected String d;
  protected String e;
  protected String f;
  protected String g;
  protected String h;
  protected String i;
  protected String j;
  protected YelpBusiness k;
  
  public void a(Parcel paramParcel)
  {
    long l = paramParcel.readLong();
    if (l != -2147483648L) {
      a = new Date(l);
    }
    b = ((String)paramParcel.readValue(String.class.getClassLoader()));
    c = ((String)paramParcel.readValue(String.class.getClassLoader()));
    d = ((String)paramParcel.readValue(String.class.getClassLoader()));
    e = ((String)paramParcel.readValue(String.class.getClassLoader()));
    f = ((String)paramParcel.readValue(String.class.getClassLoader()));
    g = ((String)paramParcel.readValue(String.class.getClassLoader()));
    h = ((String)paramParcel.readValue(String.class.getClassLoader()));
    i = ((String)paramParcel.readValue(String.class.getClassLoader()));
    j = ((String)paramParcel.readValue(String.class.getClassLoader()));
    k = ((YelpBusiness)paramParcel.readParcelable(YelpBusiness.class.getClassLoader()));
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
    if (!paramJSONObject.isNull("app_id")) {
      c = paramJSONObject.optString("app_id");
    }
    if (!paramJSONObject.isNull("app_check_in_id")) {
      d = paramJSONObject.optString("app_check_in_id");
    }
    if (!paramJSONObject.isNull("app_name")) {
      e = paramJSONObject.optString("app_name");
    }
    if (!paramJSONObject.isNull("app_user_id")) {
      f = paramJSONObject.optString("app_user_id");
    }
    if (!paramJSONObject.isNull("app_user_name")) {
      g = paramJSONObject.optString("app_user_name");
    }
    if (!paramJSONObject.isNull("app_user_image_url")) {
      h = paramJSONObject.optString("app_user_image_url");
    }
    if (!paramJSONObject.isNull("business_id")) {
      i = paramJSONObject.optString("business_id");
    }
    if (!paramJSONObject.isNull("location")) {
      j = paramJSONObject.optString("location");
    }
    if (!paramJSONObject.isNull("business")) {
      k = ((YelpBusiness)YelpBusiness.CREATOR.parse(paramJSONObject.getJSONObject("business")));
    }
  }
  
  public String b()
  {
    return i;
  }
  
  public YelpBusiness d()
  {
    return k;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Date e()
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
    paramObject = (_ExternalCheckIn)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a(d, d).a(e, e).a(f, f).a(g, g).a(h, h).a(i, i).a(j, j).a(k, k).a();
  }
  
  public String f()
  {
    return e;
  }
  
  public String g()
  {
    return j;
  }
  
  public String h()
  {
    return h;
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a(d).a(e).a(f).a(g).a(h).a(i).a(j).a(k).a();
  }
  
  public String i()
  {
    return g;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (a == null) {}
    for (long l = -2147483648L;; l = a.getTime())
    {
      paramParcel.writeLong(l);
      paramParcel.writeValue(b);
      paramParcel.writeValue(c);
      paramParcel.writeValue(d);
      paramParcel.writeValue(e);
      paramParcel.writeValue(f);
      paramParcel.writeValue(g);
      paramParcel.writeValue(h);
      paramParcel.writeValue(i);
      paramParcel.writeValue(j);
      paramParcel.writeParcelable(k, 0);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._ExternalCheckIn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */