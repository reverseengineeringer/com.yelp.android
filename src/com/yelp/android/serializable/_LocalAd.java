package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _LocalAd
  implements Parcelable
{
  protected Photo a;
  protected String b;
  protected String c;
  protected String d;
  protected String e;
  protected String f;
  protected String g;
  protected YelpBusinessReview h;
  protected boolean i;
  protected int j;
  
  public void a(Parcel paramParcel)
  {
    a = ((Photo)paramParcel.readParcelable(Photo.class.getClassLoader()));
    b = ((String)paramParcel.readValue(String.class.getClassLoader()));
    c = ((String)paramParcel.readValue(String.class.getClassLoader()));
    d = ((String)paramParcel.readValue(String.class.getClassLoader()));
    e = ((String)paramParcel.readValue(String.class.getClassLoader()));
    f = ((String)paramParcel.readValue(String.class.getClassLoader()));
    g = ((String)paramParcel.readValue(String.class.getClassLoader()));
    h = ((YelpBusinessReview)paramParcel.readParcelable(YelpBusinessReview.class.getClassLoader()));
    i = paramParcel.createBooleanArray()[0];
    j = paramParcel.readInt();
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("photo")) {
      a = ((Photo)Photo.CREATOR.parse(paramJSONObject.getJSONObject("photo")));
    }
    if (!paramJSONObject.isNull("business_id")) {
      b = paramJSONObject.optString("business_id");
    }
    if (!paramJSONObject.isNull("request_id")) {
      c = paramJSONObject.optString("request_id");
    }
    if (!paramJSONObject.isNull("type")) {
      d = paramJSONObject.optString("type");
    }
    if (!paramJSONObject.isNull("specialty")) {
      e = paramJSONObject.optString("specialty");
    }
    if (!paramJSONObject.isNull("custom_creative_text")) {
      f = paramJSONObject.optString("custom_creative_text");
    }
    if (!paramJSONObject.isNull("placement")) {
      g = paramJSONObject.optString("placement");
    }
    if (!paramJSONObject.isNull("review")) {
      h = ((YelpBusinessReview)YelpBusinessReview.CREATOR.parse(paramJSONObject.getJSONObject("review")));
    }
    i = paramJSONObject.optBoolean("is_rating_disabled");
    j = paramJSONObject.optInt("slot");
  }
  
  public int d()
  {
    return j;
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
    paramObject = (_LocalAd)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a(d, d).a(e, e).a(f, f).a(g, g).a(h, h).a(i, i).a(j, j).a();
  }
  
  public boolean f()
  {
    return i;
  }
  
  public YelpBusinessReview g()
  {
    return h;
  }
  
  public String h()
  {
    return g;
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a(d).a(e).a(f).a(g).a(h).a(i).a(j).a();
  }
  
  public String i()
  {
    return f;
  }
  
  public String j()
  {
    return e;
  }
  
  public String k()
  {
    return d;
  }
  
  public String l()
  {
    return c;
  }
  
  public String m()
  {
    return b;
  }
  
  public Photo n()
  {
    return a;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(a, 0);
    paramParcel.writeValue(b);
    paramParcel.writeValue(c);
    paramParcel.writeValue(d);
    paramParcel.writeValue(e);
    paramParcel.writeValue(f);
    paramParcel.writeValue(g);
    paramParcel.writeParcelable(h, 0);
    paramParcel.writeBooleanArray(new boolean[] { i });
    paramParcel.writeInt(j);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._LocalAd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */