package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _PlatformConfirmation
  implements Parcelable
{
  protected String a;
  protected String b;
  protected String c;
  protected String d;
  protected String e;
  protected String f;
  protected String g;
  protected String h;
  protected String i;
  protected String j;
  protected String k;
  protected String l;
  protected boolean m;
  
  public String a()
  {
    return l;
  }
  
  public void a(Parcel paramParcel)
  {
    a = ((String)paramParcel.readValue(String.class.getClassLoader()));
    b = ((String)paramParcel.readValue(String.class.getClassLoader()));
    c = ((String)paramParcel.readValue(String.class.getClassLoader()));
    d = ((String)paramParcel.readValue(String.class.getClassLoader()));
    e = ((String)paramParcel.readValue(String.class.getClassLoader()));
    f = ((String)paramParcel.readValue(String.class.getClassLoader()));
    g = ((String)paramParcel.readValue(String.class.getClassLoader()));
    h = ((String)paramParcel.readValue(String.class.getClassLoader()));
    i = ((String)paramParcel.readValue(String.class.getClassLoader()));
    j = ((String)paramParcel.readValue(String.class.getClassLoader()));
    k = ((String)paramParcel.readValue(String.class.getClassLoader()));
    l = ((String)paramParcel.readValue(String.class.getClassLoader()));
    m = paramParcel.createBooleanArray()[0];
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("url")) {
      a = paramJSONObject.optString("url");
    }
    if (!paramJSONObject.isNull("title")) {
      b = paramJSONObject.optString("title");
    }
    if (!paramJSONObject.isNull("subtitle")) {
      c = paramJSONObject.optString("subtitle");
    }
    if (!paramJSONObject.isNull("order_value")) {
      d = paramJSONObject.optString("order_value");
    }
    if (!paramJSONObject.isNull("vertical")) {
      e = paramJSONObject.optString("vertical");
    }
    if (!paramJSONObject.isNull("vertical_option")) {
      f = paramJSONObject.optString("vertical_option");
    }
    if (!paramJSONObject.isNull("claim_nonce")) {
      g = paramJSONObject.optString("claim_nonce");
    }
    if (!paramJSONObject.isNull("claim_heading")) {
      h = paramJSONObject.optString("claim_heading");
    }
    if (!paramJSONObject.isNull("claim_sub_heading")) {
      i = paramJSONObject.optString("claim_sub_heading");
    }
    if (!paramJSONObject.isNull("claim_badge_image_name")) {
      j = paramJSONObject.optString("claim_badge_image_name");
    }
    if (!paramJSONObject.isNull("claim_button_text")) {
      k = paramJSONObject.optString("claim_button_text");
    }
    if (!paramJSONObject.isNull("claim_button_title")) {
      l = paramJSONObject.optString("claim_button_title");
    }
    m = paramJSONObject.optBoolean("has_details");
  }
  
  public String b()
  {
    return k;
  }
  
  public String c()
  {
    return i;
  }
  
  public String d()
  {
    return h;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String e()
  {
    return g;
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
    paramObject = (_PlatformConfirmation)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a(d, d).a(e, e).a(f, f).a(g, g).a(h, h).a(i, i).a(j, j).a(k, k).a(l, l).a(m, m).a();
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a(d).a(e).a(f).a(g).a(h).a(i).a(j).a(k).a(l).a(m).a();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeValue(a);
    paramParcel.writeValue(b);
    paramParcel.writeValue(c);
    paramParcel.writeValue(d);
    paramParcel.writeValue(e);
    paramParcel.writeValue(f);
    paramParcel.writeValue(g);
    paramParcel.writeValue(h);
    paramParcel.writeValue(i);
    paramParcel.writeValue(j);
    paramParcel.writeValue(k);
    paramParcel.writeValue(l);
    paramParcel.writeBooleanArray(new boolean[] { m });
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._PlatformConfirmation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */