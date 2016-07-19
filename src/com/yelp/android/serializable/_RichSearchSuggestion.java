package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _RichSearchSuggestion
  implements Parcelable
{
  protected PlatformDisambiguatedAddress c;
  protected PlatformRSSTermMap d;
  protected String e;
  protected String f;
  protected String g;
  protected String h;
  protected String i;
  protected String j;
  protected String k;
  protected YelpBusiness l;
  protected boolean m;
  protected int n;
  
  public void a(Parcel paramParcel)
  {
    c = ((PlatformDisambiguatedAddress)paramParcel.readParcelable(PlatformDisambiguatedAddress.class.getClassLoader()));
    d = ((PlatformRSSTermMap)paramParcel.readParcelable(PlatformRSSTermMap.class.getClassLoader()));
    e = ((String)paramParcel.readValue(String.class.getClassLoader()));
    f = ((String)paramParcel.readValue(String.class.getClassLoader()));
    g = ((String)paramParcel.readValue(String.class.getClassLoader()));
    h = ((String)paramParcel.readValue(String.class.getClassLoader()));
    i = ((String)paramParcel.readValue(String.class.getClassLoader()));
    j = ((String)paramParcel.readValue(String.class.getClassLoader()));
    k = ((String)paramParcel.readValue(String.class.getClassLoader()));
    l = ((YelpBusiness)paramParcel.readParcelable(YelpBusiness.class.getClassLoader()));
    m = paramParcel.createBooleanArray()[0];
    n = paramParcel.readInt();
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("user_delivery_address")) {
      c = ((PlatformDisambiguatedAddress)PlatformDisambiguatedAddress.CREATOR.parse(paramJSONObject.getJSONObject("user_delivery_address")));
    }
    if (!paramJSONObject.isNull("terms_map")) {
      d = ((PlatformRSSTermMap)PlatformRSSTermMap.CREATOR.parse(paramJSONObject.getJSONObject("terms_map")));
    }
    if (!paramJSONObject.isNull("type")) {
      e = paramJSONObject.optString("type");
    }
    if (!paramJSONObject.isNull("term")) {
      f = paramJSONObject.optString("term");
    }
    if (!paramJSONObject.isNull("description")) {
      g = paramJSONObject.optString("description");
    }
    if (!paramJSONObject.isNull("image_path")) {
      h = paramJSONObject.optString("image_path");
    }
    if (!paramJSONObject.isNull("image_url")) {
      i = paramJSONObject.optString("image_url");
    }
    if (!paramJSONObject.isNull("alias")) {
      j = paramJSONObject.optString("alias");
    }
    if (!paramJSONObject.isNull("title")) {
      k = paramJSONObject.optString("title");
    }
    if (!paramJSONObject.isNull("business")) {
      l = ((YelpBusiness)YelpBusiness.CREATOR.parse(paramJSONObject.getJSONObject("business")));
    }
    m = paramJSONObject.optBoolean("is_new");
    n = paramJSONObject.optInt("icon_resource");
  }
  
  public boolean b()
  {
    return m;
  }
  
  public String c()
  {
    return e;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public JSONObject e()
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    if (c != null) {
      localJSONObject.put("user_delivery_address", c.a());
    }
    if (d != null) {
      localJSONObject.put("terms_map", d.a());
    }
    if (e != null) {
      localJSONObject.put("type", e);
    }
    if (f != null) {
      localJSONObject.put("term", f);
    }
    if (g != null) {
      localJSONObject.put("description", g);
    }
    if (h != null) {
      localJSONObject.put("image_path", h);
    }
    if (i != null) {
      localJSONObject.put("image_url", i);
    }
    if (j != null) {
      localJSONObject.put("alias", j);
    }
    if (k != null) {
      localJSONObject.put("title", k);
    }
    if (l != null) {
      localJSONObject.put("business", l.E());
    }
    localJSONObject.put("is_new", m);
    localJSONObject.put("icon_resource", n);
    return localJSONObject;
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
    paramObject = (_RichSearchSuggestion)paramObject;
    return new b().a(c, c).a(d, d).a(e, e).a(f, f).a(g, g).a(h, h).a(i, i).a(j, j).a(k, k).a(l, l).a(m, m).a(n, n).a();
  }
  
  public int f()
  {
    return n;
  }
  
  public YelpBusiness g()
  {
    return l;
  }
  
  public String h()
  {
    return k;
  }
  
  public int hashCode()
  {
    return new c().a(c).a(d).a(e).a(f).a(g).a(h).a(i).a(j).a(k).a(l).a(m).a(n).a();
  }
  
  public String i()
  {
    return j;
  }
  
  public String j()
  {
    return i;
  }
  
  public String k()
  {
    return h;
  }
  
  public String l()
  {
    return g;
  }
  
  public String m()
  {
    return f;
  }
  
  public PlatformRSSTermMap n()
  {
    return d;
  }
  
  public PlatformDisambiguatedAddress o()
  {
    return c;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(c, 0);
    paramParcel.writeParcelable(d, 0);
    paramParcel.writeValue(e);
    paramParcel.writeValue(f);
    paramParcel.writeValue(g);
    paramParcel.writeValue(h);
    paramParcel.writeValue(i);
    paramParcel.writeValue(j);
    paramParcel.writeValue(k);
    paramParcel.writeParcelable(l, 0);
    paramParcel.writeBooleanArray(new boolean[] { m });
    paramParcel.writeInt(n);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._RichSearchSuggestion
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */