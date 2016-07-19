package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _PrivacyPolicy
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
  
  public String a()
  {
    return i;
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
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("share_user_story_title")) {
      a = paramJSONObject.optString("share_user_story_title");
    }
    if (!paramJSONObject.isNull("share_user_source_title")) {
      b = paramJSONObject.optString("share_user_source_title");
    }
    if (!paramJSONObject.isNull("share_user_time_title")) {
      c = paramJSONObject.optString("share_user_time_title");
    }
    if (!paramJSONObject.isNull("share_demo_story_title")) {
      d = paramJSONObject.optString("share_demo_story_title");
    }
    if (!paramJSONObject.isNull("share_demo_source_title")) {
      e = paramJSONObject.optString("share_demo_source_title");
    }
    if (!paramJSONObject.isNull("share_demo_time_title")) {
      f = paramJSONObject.optString("share_demo_time_title");
    }
    if (!paramJSONObject.isNull("share_nothing_story_title")) {
      g = paramJSONObject.optString("share_nothing_story_title");
    }
    if (!paramJSONObject.isNull("share_nothing_source_title")) {
      h = paramJSONObject.optString("share_nothing_source_title");
    }
    if (!paramJSONObject.isNull("share_nothing_time_title")) {
      i = paramJSONObject.optString("share_nothing_time_title");
    }
  }
  
  public String b()
  {
    return h;
  }
  
  public String c()
  {
    return g;
  }
  
  public String d()
  {
    return f;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String e()
  {
    return e;
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
    paramObject = (_PrivacyPolicy)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a(d, d).a(e, e).a(f, f).a(g, g).a(h, h).a(i, i).a();
  }
  
  public String f()
  {
    return d;
  }
  
  public String g()
  {
    return c;
  }
  
  public String h()
  {
    return b;
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a(d).a(e).a(f).a(g).a(h).a(i).a();
  }
  
  public String i()
  {
    return a;
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
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._PrivacyPolicy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */