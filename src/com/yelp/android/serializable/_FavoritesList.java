package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import com.yelp.parcelgen.JsonParser.DualCreator;
import com.yelp.parcelgen.JsonUtil;
import java.util.Collections;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _FavoritesList
  implements Parcelable
{
  protected List<YelpBusiness> a;
  protected List<YelpBusinessReview> b;
  protected Passport c;
  protected String d;
  protected String e;
  protected String f;
  protected String g;
  protected String h;
  protected String i;
  protected int j;
  
  public int a()
  {
    return j;
  }
  
  public void a(Parcel paramParcel)
  {
    a = paramParcel.readArrayList(YelpBusiness.class.getClassLoader());
    b = paramParcel.readArrayList(YelpBusinessReview.class.getClassLoader());
    c = ((Passport)paramParcel.readParcelable(Passport.class.getClassLoader()));
    d = ((String)paramParcel.readValue(String.class.getClassLoader()));
    e = ((String)paramParcel.readValue(String.class.getClassLoader()));
    f = ((String)paramParcel.readValue(String.class.getClassLoader()));
    g = ((String)paramParcel.readValue(String.class.getClassLoader()));
    h = ((String)paramParcel.readValue(String.class.getClassLoader()));
    i = ((String)paramParcel.readValue(String.class.getClassLoader()));
    j = paramParcel.readInt();
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("businesses"))
    {
      a = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("businesses"), YelpBusiness.CREATOR);
      if (paramJSONObject.isNull("reviews")) {
        break label213;
      }
    }
    label213:
    for (b = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("reviews"), YelpBusinessReview.CREATOR);; b = Collections.emptyList())
    {
      if (!paramJSONObject.isNull("user")) {
        c = ((Passport)Passport.CREATOR.parse(paramJSONObject.getJSONObject("user")));
      }
      if (!paramJSONObject.isNull("alias")) {
        d = paramJSONObject.optString("alias");
      }
      if (!paramJSONObject.isNull("description")) {
        e = paramJSONObject.optString("description");
      }
      if (!paramJSONObject.isNull("id")) {
        f = paramJSONObject.optString("id");
      }
      if (!paramJSONObject.isNull("title")) {
        g = paramJSONObject.optString("title");
      }
      if (!paramJSONObject.isNull("photo_url")) {
        h = paramJSONObject.optString("photo_url");
      }
      if (!paramJSONObject.isNull("share_url")) {
        i = paramJSONObject.optString("share_url");
      }
      j = paramJSONObject.optInt("business_count");
      return;
      a = Collections.emptyList();
      break;
    }
  }
  
  public String b()
  {
    return i;
  }
  
  public String c()
  {
    return h;
  }
  
  public String d()
  {
    return g;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String e()
  {
    return f;
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
    paramObject = (_FavoritesList)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a(d, d).a(e, e).a(f, f).a(g, g).a(h, h).a(i, i).a(j, j).a();
  }
  
  public String f()
  {
    return e;
  }
  
  public Passport g()
  {
    return c;
  }
  
  public List<YelpBusinessReview> h()
  {
    return b;
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a(d).a(e).a(f).a(g).a(h).a(i).a(j).a();
  }
  
  public List<YelpBusiness> i()
  {
    return a;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeList(a);
    paramParcel.writeList(b);
    paramParcel.writeParcelable(c, 0);
    paramParcel.writeValue(d);
    paramParcel.writeValue(e);
    paramParcel.writeValue(f);
    paramParcel.writeValue(g);
    paramParcel.writeValue(h);
    paramParcel.writeValue(i);
    paramParcel.writeInt(j);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._FavoritesList
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */