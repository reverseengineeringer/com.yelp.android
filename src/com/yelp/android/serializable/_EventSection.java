package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import com.yelp.parcelgen.JsonUtil;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _EventSection
  implements Parcelable
{
  protected List<Event> a;
  protected List<User> b;
  protected List<YelpBusiness> c;
  protected String d;
  protected String e;
  protected int f;
  protected int[] g;
  
  public void a(Parcel paramParcel)
  {
    a = paramParcel.readArrayList(Event.class.getClassLoader());
    b = paramParcel.readArrayList(User.class.getClassLoader());
    c = paramParcel.readArrayList(YelpBusiness.class.getClassLoader());
    d = ((String)paramParcel.readValue(String.class.getClassLoader()));
    e = ((String)paramParcel.readValue(String.class.getClassLoader()));
    f = paramParcel.readInt();
    g = paramParcel.createIntArray();
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("events"))
    {
      a = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("events"), Event.CREATOR);
      if (paramJSONObject.isNull("users")) {
        break label186;
      }
      b = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("users"), User.CREATOR);
      label50:
      if (paramJSONObject.isNull("businesses")) {
        break label196;
      }
    }
    label186:
    label196:
    for (c = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("businesses"), YelpBusiness.CREATOR);; c = Collections.emptyList())
    {
      if (!paramJSONObject.isNull("alias")) {
        d = paramJSONObject.optString("alias");
      }
      if (!paramJSONObject.isNull("header")) {
        e = paramJSONObject.optString("header");
      }
      f = paramJSONObject.optInt("total");
      if (paramJSONObject.isNull("items_to_show")) {
        return;
      }
      paramJSONObject = paramJSONObject.getJSONArray("items_to_show");
      int j = paramJSONObject.length();
      g = new int[j];
      int i = 0;
      while (i < j)
      {
        g[i] = paramJSONObject.getInt(i);
        i += 1;
      }
      a = Collections.emptyList();
      break;
      b = Collections.emptyList();
      break label50;
    }
  }
  
  public int[] a()
  {
    return g;
  }
  
  public int b()
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
  
  public List<Event> e()
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
    paramObject = (_EventSection)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a(d, d).a(e, e).a(f, f).a(g, g).a();
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a(d).a(e).a(f).a(g).a();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeList(a);
    paramParcel.writeList(b);
    paramParcel.writeList(c);
    paramParcel.writeValue(d);
    paramParcel.writeValue(e);
    paramParcel.writeInt(f);
    paramParcel.writeIntArray(g);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._EventSection
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */