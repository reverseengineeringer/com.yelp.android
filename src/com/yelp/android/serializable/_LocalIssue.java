package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import com.yelp.parcelgen.JsonParser.DualCreator;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _LocalIssue
  implements Parcelable
{
  protected ArrayList<YelpBusiness> a;
  protected ArrayList<YelpBusinessReview> b;
  protected LocalIssueSponsor c;
  protected String d;
  protected String e;
  protected String f;
  protected String g;
  protected String h;
  protected String i;
  protected String j;
  protected String k;
  protected String l;
  protected String m;
  
  public String a()
  {
    return m;
  }
  
  public void a(Parcel paramParcel)
  {
    a = paramParcel.readArrayList(YelpBusiness.class.getClassLoader());
    b = paramParcel.readArrayList(YelpBusinessReview.class.getClassLoader());
    c = ((LocalIssueSponsor)paramParcel.readParcelable(LocalIssueSponsor.class.getClassLoader()));
    d = ((String)paramParcel.readValue(String.class.getClassLoader()));
    e = ((String)paramParcel.readValue(String.class.getClassLoader()));
    f = ((String)paramParcel.readValue(String.class.getClassLoader()));
    g = ((String)paramParcel.readValue(String.class.getClassLoader()));
    h = ((String)paramParcel.readValue(String.class.getClassLoader()));
    i = ((String)paramParcel.readValue(String.class.getClassLoader()));
    j = ((String)paramParcel.readValue(String.class.getClassLoader()));
    k = ((String)paramParcel.readValue(String.class.getClassLoader()));
    l = ((String)paramParcel.readValue(String.class.getClassLoader()));
    m = ((String)paramParcel.readValue(String.class.getClassLoader()));
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("businesses"))
    {
      a = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("businesses"), YelpBusiness.CREATOR);
      if (paramJSONObject.isNull("reviews")) {
        break label283;
      }
    }
    label283:
    for (b = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("reviews"), YelpBusinessReview.CREATOR);; b = new ArrayList())
    {
      if (!paramJSONObject.isNull("sponsor")) {
        c = ((LocalIssueSponsor)LocalIssueSponsor.CREATOR.parse(paramJSONObject.getJSONObject("sponsor")));
      }
      if (!paramJSONObject.isNull("id")) {
        d = paramJSONObject.optString("id");
      }
      if (!paramJSONObject.isNull("text")) {
        e = paramJSONObject.optString("text");
      }
      if (!paramJSONObject.isNull("market_id")) {
        f = paramJSONObject.optString("market_id");
      }
      if (!paramJSONObject.isNull("market_name")) {
        g = paramJSONObject.optString("market_name");
      }
      if (!paramJSONObject.isNull("market_locale")) {
        h = paramJSONObject.optString("market_locale");
      }
      if (!paramJSONObject.isNull("headline_photo_credit_name")) {
        i = paramJSONObject.optString("headline_photo_credit_name");
      }
      if (!paramJSONObject.isNull("headline_photo_title")) {
        j = paramJSONObject.optString("headline_photo_title");
      }
      if (!paramJSONObject.isNull("headline_photo_url")) {
        k = paramJSONObject.optString("headline_photo_url");
      }
      if (!paramJSONObject.isNull("publish_date")) {
        l = paramJSONObject.optString("publish_date");
      }
      if (!paramJSONObject.isNull("share_url")) {
        m = paramJSONObject.optString("share_url");
      }
      return;
      a = new ArrayList();
      break;
    }
  }
  
  public String b()
  {
    return l;
  }
  
  public String c()
  {
    return k;
  }
  
  public String d()
  {
    return j;
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
    paramObject = (_LocalIssue)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a(d, d).a(e, e).a(f, f).a(g, g).a(h, h).a(i, i).a(j, j).a(k, k).a(l, l).a(m, m).a();
  }
  
  public String f()
  {
    return f;
  }
  
  public String g()
  {
    return e;
  }
  
  public String h()
  {
    return d;
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a(d).a(e).a(f).a(g).a(h).a(i).a(j).a(k).a(l).a(m).a();
  }
  
  public LocalIssueSponsor i()
  {
    return c;
  }
  
  public ArrayList<YelpBusinessReview> j()
  {
    return b;
  }
  
  public ArrayList<YelpBusiness> k()
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
    paramParcel.writeValue(j);
    paramParcel.writeValue(k);
    paramParcel.writeValue(l);
    paramParcel.writeValue(m);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._LocalIssue
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */